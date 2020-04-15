// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdatePullRequestReviewCommentPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UpdatePullRequestReviewCommentPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> UpdatePullRequestReviewCommentPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pullRequestReviewComment(aliasSuffix: String? = nil, _ subfields: (PullRequestReviewCommentQuery) -> Void) -> UpdatePullRequestReviewCommentPayloadQuery {
			let subquery = PullRequestReviewCommentQuery()
			subfields(subquery)

			addField(field: "pullRequestReviewComment", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class UpdatePullRequestReviewCommentPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = UpdatePullRequestReviewCommentPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UpdatePullRequestReviewCommentPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "pullRequestReviewComment":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UpdatePullRequestReviewCommentPayload.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestReviewComment(fields: value)

				default:
				throw SchemaViolationError(type: UpdatePullRequestReviewCommentPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UpdatePullRequestReviewCommentPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var pullRequestReviewComment: ExampleSchema.PullRequestReviewComment? {
			return internalGetPullRequestReviewComment()
		}

		func internalGetPullRequestReviewComment(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestReviewComment? {
			return field(field: "pullRequestReviewComment", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestReviewComment?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "pullRequestReviewComment":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "pullRequestReviewComment":
				return internalGetPullRequestReviewComment()

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
					case "pullRequestReviewComment":
					if let value = internalGetPullRequestReviewComment() {
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
