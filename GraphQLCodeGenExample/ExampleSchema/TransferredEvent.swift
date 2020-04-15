// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class TransferredEventQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = TransferredEvent

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> TransferredEventQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> TransferredEventQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func fromRepository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> TransferredEventQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "fromRepository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> TransferredEventQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func issue(aliasSuffix: String? = nil, _ subfields: (IssueQuery) -> Void) -> TransferredEventQuery {
			let subquery = IssueQuery()
			subfields(subquery)

			addField(field: "issue", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class TransferredEvent: GraphQL.AbstractResponse, GraphQLObject, IssueTimelineItem, IssueTimelineItems, Node, PullRequestTimelineItems {
		public typealias Query = TransferredEventQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: TransferredEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TransferredEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "fromRepository":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: TransferredEvent.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TransferredEvent.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "issue":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: TransferredEvent.self, field: fieldName, value: fieldValue)
				}
				return try Issue(fields: value)

				default:
				throw SchemaViolationError(type: TransferredEvent.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "TransferredEvent" }

		open var actor: Actor? {
			return internalGetActor()
		}

		func internalGetActor(aliasSuffix: String? = nil) -> Actor? {
			return field(field: "actor", aliasSuffix: aliasSuffix) as! Actor?
		}

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var fromRepository: ExampleSchema.Repository? {
			return internalGetFromRepository()
		}

		func internalGetFromRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository? {
			return field(field: "fromRepository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var issue: ExampleSchema.Issue {
			return internalGetIssue()
		}

		func internalGetIssue(aliasSuffix: String? = nil) -> ExampleSchema.Issue {
			return field(field: "issue", aliasSuffix: aliasSuffix) as! ExampleSchema.Issue
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "actor":

				return .object

				case "createdAt":

				return .scalar

				case "fromRepository":

				return .object

				case "id":

				return .scalar

				case "issue":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "actor":
				return internalGetActor()?.responseObject()

				case "fromRepository":
				return internalGetFromRepository()

				case "issue":
				return internalGetIssue()

				default:
				break
			}
			return nil
		}

		override open func fetchChildObjectList(key: String) -> [GraphQL.AbstractResponse] {
			switch(key) {
				default:
				return []
			}
		}

		open func childResponseObjectMap() -> [GraphQL.AbstractResponse]  {
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "actor":
					if let value = internalGetActor() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "fromRepository":
					if let value = internalGetFromRepository() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "issue":
					response.append(internalGetIssue())
					response.append(contentsOf: internalGetIssue().childResponseObjectMap())

					default:
					break
				}
			})
			return response
		}

		open func responseObject() -> GraphQL.AbstractResponse {
			return self as GraphQL.AbstractResponse
		}
	}
}
