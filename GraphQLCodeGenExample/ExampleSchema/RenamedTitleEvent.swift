// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RenamedTitleEventQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RenamedTitleEvent

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> RenamedTitleEventQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> RenamedTitleEventQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func currentTitle(aliasSuffix: String? = nil) -> RenamedTitleEventQuery {
			addField(field: "currentTitle", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> RenamedTitleEventQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func previousTitle(aliasSuffix: String? = nil) -> RenamedTitleEventQuery {
			addField(field: "previousTitle", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func subject(aliasSuffix: String? = nil, _ subfields: (RenamedTitleSubjectQuery) -> Void) -> RenamedTitleEventQuery {
			let subquery = RenamedTitleSubjectQuery()
			subfields(subquery)

			addField(field: "subject", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class RenamedTitleEvent: GraphQL.AbstractResponse, GraphQLObject, IssueTimelineItem, IssueTimelineItems, Node, PullRequestTimelineItem, PullRequestTimelineItems {
		public typealias Query = RenamedTitleEventQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RenamedTitleEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RenamedTitleEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "currentTitle":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RenamedTitleEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RenamedTitleEvent.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "previousTitle":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RenamedTitleEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "subject":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RenamedTitleEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownRenamedTitleSubject.create(fields: value)

				default:
				throw SchemaViolationError(type: RenamedTitleEvent.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "RenamedTitleEvent" }

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

		open var currentTitle: String {
			return internalGetCurrentTitle()
		}

		func internalGetCurrentTitle(aliasSuffix: String? = nil) -> String {
			return field(field: "currentTitle", aliasSuffix: aliasSuffix) as! String
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var previousTitle: String {
			return internalGetPreviousTitle()
		}

		func internalGetPreviousTitle(aliasSuffix: String? = nil) -> String {
			return field(field: "previousTitle", aliasSuffix: aliasSuffix) as! String
		}

		open var subject: RenamedTitleSubject {
			return internalGetSubject()
		}

		func internalGetSubject(aliasSuffix: String? = nil) -> RenamedTitleSubject {
			return field(field: "subject", aliasSuffix: aliasSuffix) as! RenamedTitleSubject
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "actor":

				return .object

				case "createdAt":

				return .scalar

				case "currentTitle":

				return .scalar

				case "id":

				return .scalar

				case "previousTitle":

				return .scalar

				case "subject":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "actor":
				return internalGetActor()?.responseObject()

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

					case "subject":
					response.append(internalGetSubject() as! GraphQL.AbstractResponse)
					response.append(contentsOf: internalGetSubject().childResponseObjectMap())

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
