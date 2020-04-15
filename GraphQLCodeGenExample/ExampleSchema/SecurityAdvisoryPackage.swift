// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class SecurityAdvisoryPackageQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SecurityAdvisoryPackage

		@discardableResult
		open func ecosystem(aliasSuffix: String? = nil) -> SecurityAdvisoryPackageQuery {
			addField(field: "ecosystem", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> SecurityAdvisoryPackageQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class SecurityAdvisoryPackage: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = SecurityAdvisoryPackageQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "ecosystem":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SecurityAdvisoryPackage.self, field: fieldName, value: fieldValue)
				}
				return SecurityAdvisoryEcosystem(rawValue: value) ?? .unknownValue

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SecurityAdvisoryPackage.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: SecurityAdvisoryPackage.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "SecurityAdvisoryPackage" }

		open var ecosystem: ExampleSchema.SecurityAdvisoryEcosystem {
			return internalGetEcosystem()
		}

		func internalGetEcosystem(aliasSuffix: String? = nil) -> ExampleSchema.SecurityAdvisoryEcosystem {
			return field(field: "ecosystem", aliasSuffix: aliasSuffix) as! ExampleSchema.SecurityAdvisoryEcosystem
		}

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "ecosystem":

				return .scalar

				case "name":

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
