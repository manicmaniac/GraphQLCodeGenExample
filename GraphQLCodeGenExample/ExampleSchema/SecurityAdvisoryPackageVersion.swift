// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class SecurityAdvisoryPackageVersionQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SecurityAdvisoryPackageVersion

		@discardableResult
		open func identifier(aliasSuffix: String? = nil) -> SecurityAdvisoryPackageVersionQuery {
			addField(field: "identifier", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class SecurityAdvisoryPackageVersion: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = SecurityAdvisoryPackageVersionQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "identifier":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SecurityAdvisoryPackageVersion.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: SecurityAdvisoryPackageVersion.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "SecurityAdvisoryPackageVersion" }

		open var identifier: String {
			return internalGetIdentifier()
		}

		func internalGetIdentifier(aliasSuffix: String? = nil) -> String {
			return field(field: "identifier", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "identifier":

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
