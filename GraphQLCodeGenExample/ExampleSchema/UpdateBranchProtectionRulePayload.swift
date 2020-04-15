// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateBranchProtectionRulePayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UpdateBranchProtectionRulePayload

		@discardableResult
		open func branchProtectionRule(aliasSuffix: String? = nil, _ subfields: (BranchProtectionRuleQuery) -> Void) -> UpdateBranchProtectionRulePayloadQuery {
			let subquery = BranchProtectionRuleQuery()
			subfields(subquery)

			addField(field: "branchProtectionRule", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> UpdateBranchProtectionRulePayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class UpdateBranchProtectionRulePayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = UpdateBranchProtectionRulePayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "branchProtectionRule":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UpdateBranchProtectionRulePayload.self, field: fieldName, value: fieldValue)
				}
				return try BranchProtectionRule(fields: value)

				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UpdateBranchProtectionRulePayload.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UpdateBranchProtectionRulePayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UpdateBranchProtectionRulePayload" }

		open var branchProtectionRule: ExampleSchema.BranchProtectionRule? {
			return internalGetBranchProtectionRule()
		}

		func internalGetBranchProtectionRule(aliasSuffix: String? = nil) -> ExampleSchema.BranchProtectionRule? {
			return field(field: "branchProtectionRule", aliasSuffix: aliasSuffix) as! ExampleSchema.BranchProtectionRule?
		}

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "branchProtectionRule":

				return .object

				case "clientMutationId":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "branchProtectionRule":
				return internalGetBranchProtectionRule()

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
					case "branchProtectionRule":
					if let value = internalGetBranchProtectionRule() {
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
