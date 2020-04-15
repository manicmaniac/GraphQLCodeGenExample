// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class AddPullRequestReviewCommentPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = AddPullRequestReviewCommentPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> AddPullRequestReviewCommentPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func comment(aliasSuffix: String? = nil, _ subfields: (PullRequestReviewCommentQuery) -> Void) -> AddPullRequestReviewCommentPayloadQuery {
			let subquery = PullRequestReviewCommentQuery()
			subfields(subquery)

			addField(field: "comment", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func commentEdge(aliasSuffix: String? = nil, _ subfields: (PullRequestReviewCommentEdgeQuery) -> Void) -> AddPullRequestReviewCommentPayloadQuery {
			let subquery = PullRequestReviewCommentEdgeQuery()
			subfields(subquery)

			addField(field: "commentEdge", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class AddPullRequestReviewCommentPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = AddPullRequestReviewCommentPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: AddPullRequestReviewCommentPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "comment":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: AddPullRequestReviewCommentPayload.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestReviewComment(fields: value)

				case "commentEdge":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: AddPullRequestReviewCommentPayload.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestReviewCommentEdge(fields: value)

				default:
				throw SchemaViolationError(type: AddPullRequestReviewCommentPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "AddPullRequestReviewCommentPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var comment: ExampleSchema.PullRequestReviewComment? {
			return internalGetComment()
		}

		func internalGetComment(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestReviewComment? {
			return field(field: "comment", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestReviewComment?
		}

		open var commentEdge: ExampleSchema.PullRequestReviewCommentEdge? {
			return internalGetCommentEdge()
		}

		func internalGetCommentEdge(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestReviewCommentEdge? {
			return field(field: "commentEdge", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestReviewCommentEdge?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "comment":

				return .object

				case "commentEdge":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "comment":
				return internalGetComment()

				case "commentEdge":
				return internalGetCommentEdge()

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
					case "comment":
					if let value = internalGetComment() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "commentEdge":
					if let value = internalGetCommentEdge() {
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
