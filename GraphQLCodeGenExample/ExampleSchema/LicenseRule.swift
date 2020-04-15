// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class LicenseRuleQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = LicenseRule

		@discardableResult
		open func description(aliasSuffix: String? = nil) -> LicenseRuleQuery {
			addField(field: "description", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func key(aliasSuffix: String? = nil) -> LicenseRuleQuery {
			addField(field: "key", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func label(aliasSuffix: String? = nil) -> LicenseRuleQuery {
			addField(field: "label", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class LicenseRule: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = LicenseRuleQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "description":
				guard let value = value as? String else {
					throw SchemaViolationError(type: LicenseRule.self, field: fieldName, value: fieldValue)
				}
				return value

				case "key":
				guard let value = value as? String else {
					throw SchemaViolationError(type: LicenseRule.self, field: fieldName, value: fieldValue)
				}
				return value

				case "label":
				guard let value = value as? String else {
					throw SchemaViolationError(type: LicenseRule.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: LicenseRule.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "LicenseRule" }

		open var description: String {
			return internalGetDescription()
		}

		func internalGetDescription(aliasSuffix: String? = nil) -> String {
			return field(field: "description", aliasSuffix: aliasSuffix) as! String
		}

		open var key: String {
			return internalGetKey()
		}

		func internalGetKey(aliasSuffix: String? = nil) -> String {
			return field(field: "key", aliasSuffix: aliasSuffix) as! String
		}

		open var label: String {
			return internalGetLabel()
		}

		func internalGetLabel(aliasSuffix: String? = nil) -> String {
			return field(field: "label", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "description":

				return .scalar

				case "key":

				return .scalar

				case "label":

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
