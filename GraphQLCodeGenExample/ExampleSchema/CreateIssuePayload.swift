// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CreateIssuePayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = CreateIssuePayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> CreateIssuePayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func issue(aliasSuffix: String? = nil, _ subfields: (IssueQuery) -> Void) -> CreateIssuePayloadQuery {
			let subquery = IssueQuery()
			subfields(subquery)

			addField(field: "issue", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class CreateIssuePayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = CreateIssuePayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: CreateIssuePayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "issue":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: CreateIssuePayload.self, field: fieldName, value: fieldValue)
				}
				return try Issue(fields: value)

				default:
				throw SchemaViolationError(type: CreateIssuePayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "CreateIssuePayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var issue: ExampleSchema.Issue? {
			return internalGetIssue()
		}

		func internalGetIssue(aliasSuffix: String? = nil) -> ExampleSchema.Issue? {
			return field(field: "issue", aliasSuffix: aliasSuffix) as! ExampleSchema.Issue?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "issue":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "issue":
				return internalGetIssue()

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
					case "issue":
					if let value = internalGetIssue() {
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
