// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RegistryPackageDependencyQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RegistryPackageDependency

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageDependency` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func dependencyType(aliasSuffix: String? = nil) -> RegistryPackageDependencyQuery {
			addField(field: "dependencyType", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> RegistryPackageDependencyQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageDependency` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func name(aliasSuffix: String? = nil) -> RegistryPackageDependencyQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageDependency` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func version(aliasSuffix: String? = nil) -> RegistryPackageDependencyQuery {
			addField(field: "version", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class RegistryPackageDependency: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = RegistryPackageDependencyQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "dependencyType":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageDependency.self, field: fieldName, value: fieldValue)
				}
				return RegistryPackageDependencyType(rawValue: value) ?? .unknownValue

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageDependency.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageDependency.self, field: fieldName, value: fieldValue)
				}
				return value

				case "version":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageDependency.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: RegistryPackageDependency.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "RegistryPackageDependency" }

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageDependency` object instead. Removal on 2020-04-01 UTC.")
		open var dependencyType: ExampleSchema.RegistryPackageDependencyType {
			return internalGetDependencyType()
		}

		func internalGetDependencyType(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageDependencyType {
			return field(field: "dependencyType", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageDependencyType
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageDependency` object instead. Removal on 2020-04-01 UTC.")
		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageDependency` object instead. Removal on 2020-04-01 UTC.")
		open var version: String {
			return internalGetVersion()
		}

		func internalGetVersion(aliasSuffix: String? = nil) -> String {
			return field(field: "version", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "dependencyType":

				return .scalar

				case "id":

				return .scalar

				case "name":

				return .scalar

				case "version":

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
