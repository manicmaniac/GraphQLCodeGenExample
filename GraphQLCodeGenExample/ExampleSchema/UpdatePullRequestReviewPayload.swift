// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdatePullRequestReviewPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UpdatePullRequestReviewPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> UpdatePullRequestReviewPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pullRequestReview(aliasSuffix: String? = nil, _ subfields: (PullRequestReviewQuery) -> Void) -> UpdatePullRequestReviewPayloadQuery {
			let subquery = PullRequestReviewQuery()
			subfields(subquery)

			addField(field: "pullRequestReview", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class UpdatePullRequestReviewPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = UpdatePullRequestReviewPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UpdatePullRequestReviewPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "pullRequestReview":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UpdatePullRequestReviewPayload.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestReview(fields: value)

				default:
				throw SchemaViolationError(type: UpdatePullRequestReviewPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UpdatePullRequestReviewPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var pullRequestReview: ExampleSchema.PullRequestReview? {
			return internalGetPullRequestReview()
		}

		func internalGetPullRequestReview(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestReview? {
			return field(field: "pullRequestReview", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestReview?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "pullRequestReview":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "pullRequestReview":
				return internalGetPullRequestReview()

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
					case "pullRequestReview":
					if let value = internalGetPullRequestReview() {
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
