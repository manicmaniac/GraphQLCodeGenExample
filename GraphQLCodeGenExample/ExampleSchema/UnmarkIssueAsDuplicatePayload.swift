// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UnmarkIssueAsDuplicatePayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UnmarkIssueAsDuplicatePayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> UnmarkIssueAsDuplicatePayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func duplicate(aliasSuffix: String? = nil, _ subfields: (IssueOrPullRequestQuery) -> Void) -> UnmarkIssueAsDuplicatePayloadQuery {
			let subquery = IssueOrPullRequestQuery()
			subfields(subquery)

			addField(field: "duplicate", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class UnmarkIssueAsDuplicatePayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = UnmarkIssueAsDuplicatePayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnmarkIssueAsDuplicatePayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "duplicate":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnmarkIssueAsDuplicatePayload.self, field: fieldName, value: fieldValue)
				}
				return try UnknownIssueOrPullRequest.create(fields: value)

				default:
				throw SchemaViolationError(type: UnmarkIssueAsDuplicatePayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UnmarkIssueAsDuplicatePayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var duplicate: IssueOrPullRequest? {
			return internalGetDuplicate()
		}

		func internalGetDuplicate(aliasSuffix: String? = nil) -> IssueOrPullRequest? {
			return field(field: "duplicate", aliasSuffix: aliasSuffix) as! IssueOrPullRequest?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "duplicate":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
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
			return []
		}

		open func responseObject() -> GraphQL.AbstractResponse {
			return self as GraphQL.AbstractResponse
		}
	}
}
