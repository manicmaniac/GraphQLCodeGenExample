// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateIssueCommentPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UpdateIssueCommentPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> UpdateIssueCommentPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func issueComment(aliasSuffix: String? = nil, _ subfields: (IssueCommentQuery) -> Void) -> UpdateIssueCommentPayloadQuery {
			let subquery = IssueCommentQuery()
			subfields(subquery)

			addField(field: "issueComment", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class UpdateIssueCommentPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = UpdateIssueCommentPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UpdateIssueCommentPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "issueComment":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UpdateIssueCommentPayload.self, field: fieldName, value: fieldValue)
				}
				return try IssueComment(fields: value)

				default:
				throw SchemaViolationError(type: UpdateIssueCommentPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UpdateIssueCommentPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var issueComment: ExampleSchema.IssueComment? {
			return internalGetIssueComment()
		}

		func internalGetIssueComment(aliasSuffix: String? = nil) -> ExampleSchema.IssueComment? {
			return field(field: "issueComment", aliasSuffix: aliasSuffix) as! ExampleSchema.IssueComment?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "issueComment":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "issueComment":
				return internalGetIssueComment()

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
					case "issueComment":
					if let value = internalGetIssueComment() {
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
