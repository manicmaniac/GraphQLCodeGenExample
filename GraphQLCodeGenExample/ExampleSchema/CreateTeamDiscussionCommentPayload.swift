// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CreateTeamDiscussionCommentPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = CreateTeamDiscussionCommentPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> CreateTeamDiscussionCommentPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func teamDiscussionComment(aliasSuffix: String? = nil, _ subfields: (TeamDiscussionCommentQuery) -> Void) -> CreateTeamDiscussionCommentPayloadQuery {
			let subquery = TeamDiscussionCommentQuery()
			subfields(subquery)

			addField(field: "teamDiscussionComment", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class CreateTeamDiscussionCommentPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = CreateTeamDiscussionCommentPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: CreateTeamDiscussionCommentPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "teamDiscussionComment":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: CreateTeamDiscussionCommentPayload.self, field: fieldName, value: fieldValue)
				}
				return try TeamDiscussionComment(fields: value)

				default:
				throw SchemaViolationError(type: CreateTeamDiscussionCommentPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "CreateTeamDiscussionCommentPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var teamDiscussionComment: ExampleSchema.TeamDiscussionComment? {
			return internalGetTeamDiscussionComment()
		}

		func internalGetTeamDiscussionComment(aliasSuffix: String? = nil) -> ExampleSchema.TeamDiscussionComment? {
			return field(field: "teamDiscussionComment", aliasSuffix: aliasSuffix) as! ExampleSchema.TeamDiscussionComment?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "teamDiscussionComment":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "teamDiscussionComment":
				return internalGetTeamDiscussionComment()

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
					case "teamDiscussionComment":
					if let value = internalGetTeamDiscussionComment() {
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
