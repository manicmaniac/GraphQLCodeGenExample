// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RegistryPackageFileQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RegistryPackageFile

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageFile` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func guid(aliasSuffix: String? = nil) -> RegistryPackageFileQuery {
			addField(field: "guid", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> RegistryPackageFileQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageFile` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func md5(aliasSuffix: String? = nil) -> RegistryPackageFileQuery {
			addField(field: "md5", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageFile` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func metadataUrl(aliasSuffix: String? = nil) -> RegistryPackageFileQuery {
			addField(field: "metadataUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageFile` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func name(aliasSuffix: String? = nil) -> RegistryPackageFileQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageFile` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func packageVersion(aliasSuffix: String? = nil, _ subfields: (RegistryPackageVersionQuery) -> Void) -> RegistryPackageFileQuery {
			let subquery = RegistryPackageVersionQuery()
			subfields(subquery)

			addField(field: "packageVersion", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageFile` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func sha1(aliasSuffix: String? = nil) -> RegistryPackageFileQuery {
			addField(field: "sha1", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageFile` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func sha256(aliasSuffix: String? = nil) -> RegistryPackageFileQuery {
			addField(field: "sha256", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageFile` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func size(aliasSuffix: String? = nil) -> RegistryPackageFileQuery {
			addField(field: "size", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> RegistryPackageFileQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageFile` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func url(aliasSuffix: String? = nil) -> RegistryPackageFileQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class RegistryPackageFile: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = RegistryPackageFileQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "guid":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageFile.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageFile.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "md5":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageFile.self, field: fieldName, value: fieldValue)
				}
				return value

				case "metadataUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageFile.self, field: fieldName, value: fieldValue)
				}
				return value

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageFile.self, field: fieldName, value: fieldValue)
				}
				return value

				case "packageVersion":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RegistryPackageFile.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageVersion(fields: value)

				case "sha1":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageFile.self, field: fieldName, value: fieldValue)
				}
				return value

				case "sha256":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageFile.self, field: fieldName, value: fieldValue)
				}
				return value

				case "size":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: RegistryPackageFile.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageFile.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageFile.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: RegistryPackageFile.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "RegistryPackageFile" }

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageFile` object instead. Removal on 2020-04-01 UTC.")
		open var guid: String? {
			return internalGetGuid()
		}

		func internalGetGuid(aliasSuffix: String? = nil) -> String? {
			return field(field: "guid", aliasSuffix: aliasSuffix) as! String?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageFile` object instead. Removal on 2020-04-01 UTC.")
		open var md5: String? {
			return internalGetMd5()
		}

		func internalGetMd5(aliasSuffix: String? = nil) -> String? {
			return field(field: "md5", aliasSuffix: aliasSuffix) as! String?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageFile` object instead. Removal on 2020-04-01 UTC.")
		open var metadataUrl: String {
			return internalGetMetadataUrl()
		}

		func internalGetMetadataUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "metadataUrl", aliasSuffix: aliasSuffix) as! String
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageFile` object instead. Removal on 2020-04-01 UTC.")
		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageFile` object instead. Removal on 2020-04-01 UTC.")
		open var packageVersion: ExampleSchema.RegistryPackageVersion {
			return internalGetPackageVersion()
		}

		func internalGetPackageVersion(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageVersion {
			return field(field: "packageVersion", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageVersion
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageFile` object instead. Removal on 2020-04-01 UTC.")
		open var sha1: String? {
			return internalGetSha1()
		}

		func internalGetSha1(aliasSuffix: String? = nil) -> String? {
			return field(field: "sha1", aliasSuffix: aliasSuffix) as! String?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageFile` object instead. Removal on 2020-04-01 UTC.")
		open var sha256: String? {
			return internalGetSha256()
		}

		func internalGetSha256(aliasSuffix: String? = nil) -> String? {
			return field(field: "sha256", aliasSuffix: aliasSuffix) as! String?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageFile` object instead. Removal on 2020-04-01 UTC.")
		open var size: Int32? {
			return internalGetSize()
		}

		func internalGetSize(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "size", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var updatedAt: String {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageFile` object instead. Removal on 2020-04-01 UTC.")
		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "guid":

				return .scalar

				case "id":

				return .scalar

				case "md5":

				return .scalar

				case "metadataUrl":

				return .scalar

				case "name":

				return .scalar

				case "packageVersion":

				return .object

				case "sha1":

				return .scalar

				case "sha256":

				return .scalar

				case "size":

				return .scalar

				case "updatedAt":

				return .scalar

				case "url":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "packageVersion":
				return internalGetPackageVersion()

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
					case "packageVersion":
					response.append(internalGetPackageVersion())
					response.append(contentsOf: internalGetPackageVersion().childResponseObjectMap())

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
