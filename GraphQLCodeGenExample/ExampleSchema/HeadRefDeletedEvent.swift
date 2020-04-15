// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class HeadRefDeletedEventQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = HeadRefDeletedEvent

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> HeadRefDeletedEventQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> HeadRefDeletedEventQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func headRef(aliasSuffix: String? = nil, _ subfields: (RefQuery) -> Void) -> HeadRefDeletedEventQuery {
			let subquery = RefQuery()
			subfields(subquery)

			addField(field: "headRef", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func headRefName(aliasSuffix: String? = nil) -> HeadRefDeletedEventQuery {
			addField(field: "headRefName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> HeadRefDeletedEventQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pullRequest(aliasSuffix: String? = nil, _ subfields: (PullRequestQuery) -> Void) -> HeadRefDeletedEventQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)

			addField(field: "pullRequest", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class HeadRefDeletedEvent: GraphQL.AbstractResponse, GraphQLObject, Node, PullRequestTimelineItem, PullRequestTimelineItems {
		public typealias Query = HeadRefDeletedEventQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: HeadRefDeletedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: HeadRefDeletedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "headRef":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: HeadRefDeletedEvent.self, field: fieldName, value: fieldValue)
				}
				return try Ref(fields: value)

				case "headRefName":
				guard let value = value as? String else {
					throw SchemaViolationError(type: HeadRefDeletedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: HeadRefDeletedEvent.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "pullRequest":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: HeadRefDeletedEvent.self, field: fieldName, value: fieldValue)
				}
				return try PullRequest(fields: value)

				default:
				throw SchemaViolationError(type: HeadRefDeletedEvent.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "HeadRefDeletedEvent" }

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

		open var headRef: ExampleSchema.Ref? {
			return internalGetHeadRef()
		}

		func internalGetHeadRef(aliasSuffix: String? = nil) -> ExampleSchema.Ref? {
			return field(field: "headRef", aliasSuffix: aliasSuffix) as! ExampleSchema.Ref?
		}

		open var headRefName: String {
			return internalGetHeadRefName()
		}

		func internalGetHeadRefName(aliasSuffix: String? = nil) -> String {
			return field(field: "headRefName", aliasSuffix: aliasSuffix) as! String
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var pullRequest: ExampleSchema.PullRequest {
			return internalGetPullRequest()
		}

		func internalGetPullRequest(aliasSuffix: String? = nil) -> ExampleSchema.PullRequest {
			return field(field: "pullRequest", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequest
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "actor":

				return .object

				case "createdAt":

				return .scalar

				case "headRef":

				return .object

				case "headRefName":

				return .scalar

				case "id":

				return .scalar

				case "pullRequest":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "actor":
				return internalGetActor()?.responseObject()

				case "headRef":
				return internalGetHeadRef()

				case "pullRequest":
				return internalGetPullRequest()

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

					case "headRef":
					if let value = internalGetHeadRef() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "pullRequest":
					response.append(internalGetPullRequest())
					response.append(contentsOf: internalGetPullRequest().childResponseObjectMap())

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
