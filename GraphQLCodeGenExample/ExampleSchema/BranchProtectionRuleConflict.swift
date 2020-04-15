// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class BranchProtectionRuleConflictQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = BranchProtectionRuleConflict

		@discardableResult
		open func branchProtectionRule(aliasSuffix: String? = nil, _ subfields: (BranchProtectionRuleQuery) -> Void) -> BranchProtectionRuleConflictQuery {
			let subquery = BranchProtectionRuleQuery()
			subfields(subquery)

			addField(field: "branchProtectionRule", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func conflictingBranchProtectionRule(aliasSuffix: String? = nil, _ subfields: (BranchProtectionRuleQuery) -> Void) -> BranchProtectionRuleConflictQuery {
			let subquery = BranchProtectionRuleQuery()
			subfields(subquery)

			addField(field: "conflictingBranchProtectionRule", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func ref(aliasSuffix: String? = nil, _ subfields: (RefQuery) -> Void) -> BranchProtectionRuleConflictQuery {
			let subquery = RefQuery()
			subfields(subquery)

			addField(field: "ref", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class BranchProtectionRuleConflict: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = BranchProtectionRuleConflictQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "branchProtectionRule":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: BranchProtectionRuleConflict.self, field: fieldName, value: fieldValue)
				}
				return try BranchProtectionRule(fields: value)

				case "conflictingBranchProtectionRule":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: BranchProtectionRuleConflict.self, field: fieldName, value: fieldValue)
				}
				return try BranchProtectionRule(fields: value)

				case "ref":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: BranchProtectionRuleConflict.self, field: fieldName, value: fieldValue)
				}
				return try Ref(fields: value)

				default:
				throw SchemaViolationError(type: BranchProtectionRuleConflict.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "BranchProtectionRuleConflict" }

		open var branchProtectionRule: ExampleSchema.BranchProtectionRule? {
			return internalGetBranchProtectionRule()
		}

		func internalGetBranchProtectionRule(aliasSuffix: String? = nil) -> ExampleSchema.BranchProtectionRule? {
			return field(field: "branchProtectionRule", aliasSuffix: aliasSuffix) as! ExampleSchema.BranchProtectionRule?
		}

		open var conflictingBranchProtectionRule: ExampleSchema.BranchProtectionRule? {
			return internalGetConflictingBranchProtectionRule()
		}

		func internalGetConflictingBranchProtectionRule(aliasSuffix: String? = nil) -> ExampleSchema.BranchProtectionRule? {
			return field(field: "conflictingBranchProtectionRule", aliasSuffix: aliasSuffix) as! ExampleSchema.BranchProtectionRule?
		}

		open var ref: ExampleSchema.Ref? {
			return internalGetRef()
		}

		func internalGetRef(aliasSuffix: String? = nil) -> ExampleSchema.Ref? {
			return field(field: "ref", aliasSuffix: aliasSuffix) as! ExampleSchema.Ref?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "branchProtectionRule":

				return .object

				case "conflictingBranchProtectionRule":

				return .object

				case "ref":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "branchProtectionRule":
				return internalGetBranchProtectionRule()

				case "conflictingBranchProtectionRule":
				return internalGetConflictingBranchProtectionRule()

				case "ref":
				return internalGetRef()

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

					case "conflictingBranchProtectionRule":
					if let value = internalGetConflictingBranchProtectionRule() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "ref":
					if let value = internalGetRef() {
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
