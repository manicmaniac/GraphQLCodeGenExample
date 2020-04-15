// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RegistryPackageVersionQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RegistryPackageVersion

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func dependencies(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, type: RegistryPackageDependencyType? = nil, _ subfields: (RegistryPackageDependencyConnectionQuery) -> Void) -> RegistryPackageVersionQuery {
			var args: [String] = []

			if let after = after {
				args.append("after:\(GraphQL.quoteString(input: after))")
			}

			if let before = before {
				args.append("before:\(GraphQL.quoteString(input: before))")
			}

			if let first = first {
				args.append("first:\(first)")
			}

			if let last = last {
				args.append("last:\(last)")
			}

			if let type = type {
				args.append("type:\(type.rawValue)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = RegistryPackageDependencyConnectionQuery()
			subfields(subquery)

			addField(field: "dependencies", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func fileByName(aliasSuffix: String? = nil, filename: String, _ subfields: (RegistryPackageFileQuery) -> Void) -> RegistryPackageVersionQuery {
			var args: [String] = []

			args.append("filename:\(GraphQL.quoteString(input: filename))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RegistryPackageFileQuery()
			subfields(subquery)

			addField(field: "fileByName", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func files(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (RegistryPackageFileConnectionQuery) -> Void) -> RegistryPackageVersionQuery {
			var args: [String] = []

			if let after = after {
				args.append("after:\(GraphQL.quoteString(input: after))")
			}

			if let before = before {
				args.append("before:\(GraphQL.quoteString(input: before))")
			}

			if let first = first {
				args.append("first:\(first)")
			}

			if let last = last {
				args.append("last:\(last)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = RegistryPackageFileConnectionQuery()
			subfields(subquery)

			addField(field: "files", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> RegistryPackageVersionQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func installationCommand(aliasSuffix: String? = nil) -> RegistryPackageVersionQuery {
			addField(field: "installationCommand", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func manifest(aliasSuffix: String? = nil) -> RegistryPackageVersionQuery {
			addField(field: "manifest", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func platform(aliasSuffix: String? = nil) -> RegistryPackageVersionQuery {
			addField(field: "platform", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func preRelease(aliasSuffix: String? = nil) -> RegistryPackageVersionQuery {
			addField(field: "preRelease", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func readme(aliasSuffix: String? = nil) -> RegistryPackageVersionQuery {
			addField(field: "readme", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func readmeHtml(aliasSuffix: String? = nil) -> RegistryPackageVersionQuery {
			addField(field: "readmeHtml", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func registryPackage(aliasSuffix: String? = nil, _ subfields: (RegistryPackageQuery) -> Void) -> RegistryPackageVersionQuery {
			let subquery = RegistryPackageQuery()
			subfields(subquery)

			addField(field: "registryPackage", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func release(aliasSuffix: String? = nil, _ subfields: (ReleaseQuery) -> Void) -> RegistryPackageVersionQuery {
			let subquery = ReleaseQuery()
			subfields(subquery)

			addField(field: "release", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func sha256(aliasSuffix: String? = nil) -> RegistryPackageVersionQuery {
			addField(field: "sha256", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func size(aliasSuffix: String? = nil) -> RegistryPackageVersionQuery {
			addField(field: "size", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func statistics(aliasSuffix: String? = nil, _ subfields: (RegistryPackageVersionStatisticsQuery) -> Void) -> RegistryPackageVersionQuery {
			let subquery = RegistryPackageVersionStatisticsQuery()
			subfields(subquery)

			addField(field: "statistics", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func summary(aliasSuffix: String? = nil) -> RegistryPackageVersionQuery {
			addField(field: "summary", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> RegistryPackageVersionQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func version(aliasSuffix: String? = nil) -> RegistryPackageVersionQuery {
			addField(field: "version", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func viewerCanEdit(aliasSuffix: String? = nil) -> RegistryPackageVersionQuery {
			addField(field: "viewerCanEdit", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class RegistryPackageVersion: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = RegistryPackageVersionQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "dependencies":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RegistryPackageVersion.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageDependencyConnection(fields: value)

				case "fileByName":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RegistryPackageVersion.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageFile(fields: value)

				case "files":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RegistryPackageVersion.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageFileConnection(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageVersion.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "installationCommand":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageVersion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "manifest":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageVersion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "platform":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageVersion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "preRelease":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: RegistryPackageVersion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "readme":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageVersion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "readmeHtml":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageVersion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "registryPackage":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RegistryPackageVersion.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackage(fields: value)

				case "release":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RegistryPackageVersion.self, field: fieldName, value: fieldValue)
				}
				return try Release(fields: value)

				case "sha256":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageVersion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "size":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: RegistryPackageVersion.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "statistics":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RegistryPackageVersion.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageVersionStatistics(fields: value)

				case "summary":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageVersion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageVersion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "version":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackageVersion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanEdit":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: RegistryPackageVersion.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: RegistryPackageVersion.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "RegistryPackageVersion" }

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		open var dependencies: ExampleSchema.RegistryPackageDependencyConnection {
			return internalGetDependencies()
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		open func aliasedDependencies(aliasSuffix: String) -> ExampleSchema.RegistryPackageDependencyConnection {
			return internalGetDependencies(aliasSuffix: aliasSuffix)
		}

		func internalGetDependencies(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageDependencyConnection {
			return field(field: "dependencies", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageDependencyConnection
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		open var fileByName: ExampleSchema.RegistryPackageFile? {
			return internalGetFileByName()
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		open func aliasedFileByName(aliasSuffix: String) -> ExampleSchema.RegistryPackageFile? {
			return internalGetFileByName(aliasSuffix: aliasSuffix)
		}

		func internalGetFileByName(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageFile? {
			return field(field: "fileByName", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageFile?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		open var files: ExampleSchema.RegistryPackageFileConnection {
			return internalGetFiles()
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		open func aliasedFiles(aliasSuffix: String) -> ExampleSchema.RegistryPackageFileConnection {
			return internalGetFiles(aliasSuffix: aliasSuffix)
		}

		func internalGetFiles(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageFileConnection {
			return field(field: "files", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageFileConnection
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		open var installationCommand: String? {
			return internalGetInstallationCommand()
		}

		func internalGetInstallationCommand(aliasSuffix: String? = nil) -> String? {
			return field(field: "installationCommand", aliasSuffix: aliasSuffix) as! String?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		open var manifest: String? {
			return internalGetManifest()
		}

		func internalGetManifest(aliasSuffix: String? = nil) -> String? {
			return field(field: "manifest", aliasSuffix: aliasSuffix) as! String?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		open var platform: String? {
			return internalGetPlatform()
		}

		func internalGetPlatform(aliasSuffix: String? = nil) -> String? {
			return field(field: "platform", aliasSuffix: aliasSuffix) as! String?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		open var preRelease: Bool {
			return internalGetPreRelease()
		}

		func internalGetPreRelease(aliasSuffix: String? = nil) -> Bool {
			return field(field: "preRelease", aliasSuffix: aliasSuffix) as! Bool
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		open var readme: String? {
			return internalGetReadme()
		}

		func internalGetReadme(aliasSuffix: String? = nil) -> String? {
			return field(field: "readme", aliasSuffix: aliasSuffix) as! String?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		open var readmeHtml: String? {
			return internalGetReadmeHtml()
		}

		func internalGetReadmeHtml(aliasSuffix: String? = nil) -> String? {
			return field(field: "readmeHtml", aliasSuffix: aliasSuffix) as! String?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		open var registryPackage: ExampleSchema.RegistryPackage? {
			return internalGetRegistryPackage()
		}

		func internalGetRegistryPackage(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackage? {
			return field(field: "registryPackage", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackage?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		open var release: ExampleSchema.Release? {
			return internalGetRelease()
		}

		func internalGetRelease(aliasSuffix: String? = nil) -> ExampleSchema.Release? {
			return field(field: "release", aliasSuffix: aliasSuffix) as! ExampleSchema.Release?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		open var sha256: String? {
			return internalGetSha256()
		}

		func internalGetSha256(aliasSuffix: String? = nil) -> String? {
			return field(field: "sha256", aliasSuffix: aliasSuffix) as! String?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		open var size: Int32? {
			return internalGetSize()
		}

		func internalGetSize(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "size", aliasSuffix: aliasSuffix) as! Int32?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		open var statistics: ExampleSchema.RegistryPackageVersionStatistics? {
			return internalGetStatistics()
		}

		func internalGetStatistics(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageVersionStatistics? {
			return field(field: "statistics", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageVersionStatistics?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		open var summary: String? {
			return internalGetSummary()
		}

		func internalGetSummary(aliasSuffix: String? = nil) -> String? {
			return field(field: "summary", aliasSuffix: aliasSuffix) as! String?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		open var updatedAt: String {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		open var version: String {
			return internalGetVersion()
		}

		func internalGetVersion(aliasSuffix: String? = nil) -> String {
			return field(field: "version", aliasSuffix: aliasSuffix) as! String
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersion` object instead. Removal on 2020-04-01 UTC.")
		open var viewerCanEdit: Bool {
			return internalGetViewerCanEdit()
		}

		func internalGetViewerCanEdit(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanEdit", aliasSuffix: aliasSuffix) as! Bool
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "dependencies":

				return .object

				case "fileByName":

				return .object

				case "files":

				return .object

				case "id":

				return .scalar

				case "installationCommand":

				return .scalar

				case "manifest":

				return .scalar

				case "platform":

				return .scalar

				case "preRelease":

				return .scalar

				case "readme":

				return .scalar

				case "readmeHtml":

				return .scalar

				case "registryPackage":

				return .object

				case "release":

				return .object

				case "sha256":

				return .scalar

				case "size":

				return .scalar

				case "statistics":

				return .object

				case "summary":

				return .scalar

				case "updatedAt":

				return .scalar

				case "version":

				return .scalar

				case "viewerCanEdit":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "dependencies":
				return internalGetDependencies()

				case "fileByName":
				return internalGetFileByName()

				case "files":
				return internalGetFiles()

				case "registryPackage":
				return internalGetRegistryPackage()

				case "release":
				return internalGetRelease()

				case "statistics":
				return internalGetStatistics()

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
					case "dependencies":
					response.append(internalGetDependencies())
					response.append(contentsOf: internalGetDependencies().childResponseObjectMap())

					case "fileByName":
					if let value = internalGetFileByName() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "files":
					response.append(internalGetFiles())
					response.append(contentsOf: internalGetFiles().childResponseObjectMap())

					case "registryPackage":
					if let value = internalGetRegistryPackage() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "release":
					if let value = internalGetRelease() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "statistics":
					if let value = internalGetStatistics() {
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
