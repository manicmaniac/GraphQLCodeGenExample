// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RegistryPackageTagQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RegistryPackageTag

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> RegistryPackageTagQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageTag` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func name(aliasSuffix: String? = nil) -> RegistryPackageTagQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageTag` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func version(aliasSuffix: String? = nil, _ subfields: (RegistryPackageVersionQuery) -> Void) -> RegistryPackageTagQuery {
			let subquery = RegistryPackageVersionQuery()
			subfields(subquery)

			addField(field: "version", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class RegistryPackageTag: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = RegistryPackageTagQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageTag.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageTag.self, field: fieldName, value: fieldValue)
				}
				return value

				case "version":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RegistryPackageTag.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageVersion(fields: value)

				default:
				throw SchemaViolationError(type: RegistryPackageTag.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "RegistryPackageTag" }

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageTag` object instead. Removal on 2020-04-01 UTC.")
		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageTag` object instead. Removal on 2020-04-01 UTC.")
		open var version: ExampleSchema.RegistryPackageVersion? {
			return internalGetVersion()
		}

		func internalGetVersion(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageVersion? {
			return field(field: "version", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageVersion?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "id":

				return .scalar

				case "name":

				return .scalar

				case "version":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "version":
				return internalGetVersion()

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
					case "version":
					if let value = internalGetVersion() {
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
