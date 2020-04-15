// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CreatePullRequestPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = CreatePullRequestPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> CreatePullRequestPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pullRequest(aliasSuffix: String? = nil, _ subfields: (PullRequestQuery) -> Void) -> CreatePullRequestPayloadQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)

			addField(field: "pullRequest", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class CreatePullRequestPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = CreatePullRequestPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: CreatePullRequestPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "pullRequest":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: CreatePullRequestPayload.self, field: fieldName, value: fieldValue)
				}
				return try PullRequest(fields: value)

				default:
				throw SchemaViolationError(type: CreatePullRequestPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "CreatePullRequestPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var pullRequest: ExampleSchema.PullRequest? {
			return internalGetPullRequest()
		}

		func internalGetPullRequest(aliasSuffix: String? = nil) -> ExampleSchema.PullRequest? {
			return field(field: "pullRequest", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequest?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "pullRequest":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
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
					case "pullRequest":
					if let value = internalGetPullRequest() {
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
