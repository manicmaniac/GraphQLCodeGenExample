// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateTeamDiscussionPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UpdateTeamDiscussionPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> UpdateTeamDiscussionPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func teamDiscussion(aliasSuffix: String? = nil, _ subfields: (TeamDiscussionQuery) -> Void) -> UpdateTeamDiscussionPayloadQuery {
			let subquery = TeamDiscussionQuery()
			subfields(subquery)

			addField(field: "teamDiscussion", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class UpdateTeamDiscussionPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = UpdateTeamDiscussionPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UpdateTeamDiscussionPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "teamDiscussion":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UpdateTeamDiscussionPayload.self, field: fieldName, value: fieldValue)
				}
				return try TeamDiscussion(fields: value)

				default:
				throw SchemaViolationError(type: UpdateTeamDiscussionPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UpdateTeamDiscussionPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var teamDiscussion: ExampleSchema.TeamDiscussion? {
			return internalGetTeamDiscussion()
		}

		func internalGetTeamDiscussion(aliasSuffix: String? = nil) -> ExampleSchema.TeamDiscussion? {
			return field(field: "teamDiscussion", aliasSuffix: aliasSuffix) as! ExampleSchema.TeamDiscussion?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "teamDiscussion":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "teamDiscussion":
				return internalGetTeamDiscussion()

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
					case "teamDiscussion":
					if let value = internalGetTeamDiscussion() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

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
