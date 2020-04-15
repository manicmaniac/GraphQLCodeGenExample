// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RegistryPackageQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RegistryPackage

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func color(aliasSuffix: String? = nil) -> RegistryPackageQuery {
			addField(field: "color", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> RegistryPackageQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func latestVersion(aliasSuffix: String? = nil, _ subfields: (RegistryPackageVersionQuery) -> Void) -> RegistryPackageQuery {
			let subquery = RegistryPackageVersionQuery()
			subfields(subquery)

			addField(field: "latestVersion", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func name(aliasSuffix: String? = nil) -> RegistryPackageQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func nameWithOwner(aliasSuffix: String? = nil) -> RegistryPackageQuery {
			addField(field: "nameWithOwner", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func packageFileByGuid(aliasSuffix: String? = nil, guid: String, _ subfields: (RegistryPackageFileQuery) -> Void) -> RegistryPackageQuery {
			var args: [String] = []

			args.append("guid:\(GraphQL.quoteString(input: guid))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RegistryPackageFileQuery()
			subfields(subquery)

			addField(field: "packageFileByGuid", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func packageFileBySha256(aliasSuffix: String? = nil, sha256: String, _ subfields: (RegistryPackageFileQuery) -> Void) -> RegistryPackageQuery {
			var args: [String] = []

			args.append("sha256:\(GraphQL.quoteString(input: sha256))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RegistryPackageFileQuery()
			subfields(subquery)

			addField(field: "packageFileBySha256", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func packageType(aliasSuffix: String? = nil) -> RegistryPackageQuery {
			addField(field: "packageType", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func preReleaseVersions(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (RegistryPackageVersionConnectionQuery) -> Void) -> RegistryPackageQuery {
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

			let subquery = RegistryPackageVersionConnectionQuery()
			subfields(subquery)

			addField(field: "preReleaseVersions", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func registryPackageType(aliasSuffix: String? = nil) -> RegistryPackageQuery {
			addField(field: "registryPackageType", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> RegistryPackageQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func statistics(aliasSuffix: String? = nil, _ subfields: (RegistryPackageStatisticsQuery) -> Void) -> RegistryPackageQuery {
			let subquery = RegistryPackageStatisticsQuery()
			subfields(subquery)

			addField(field: "statistics", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func tags(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (RegistryPackageTagConnectionQuery) -> Void) -> RegistryPackageQuery {
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

			let subquery = RegistryPackageTagConnectionQuery()
			subfields(subquery)

			addField(field: "tags", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func topics(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (TopicConnectionQuery) -> Void) -> RegistryPackageQuery {
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

			let subquery = TopicConnectionQuery()
			subfields(subquery)

			addField(field: "topics", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func version(aliasSuffix: String? = nil, version: String, _ subfields: (RegistryPackageVersionQuery) -> Void) -> RegistryPackageQuery {
			var args: [String] = []

			args.append("version:\(GraphQL.quoteString(input: version))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RegistryPackageVersionQuery()
			subfields(subquery)

			addField(field: "version", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func versionByPlatform(aliasSuffix: String? = nil, version: String, platform: String, _ subfields: (RegistryPackageVersionQuery) -> Void) -> RegistryPackageQuery {
			var args: [String] = []

			args.append("version:\(GraphQL.quoteString(input: version))")

			args.append("platform:\(GraphQL.quoteString(input: platform))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RegistryPackageVersionQuery()
			subfields(subquery)

			addField(field: "versionByPlatform", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func versionBySha256(aliasSuffix: String? = nil, sha256: String, _ subfields: (RegistryPackageVersionQuery) -> Void) -> RegistryPackageQuery {
			var args: [String] = []

			args.append("sha256:\(GraphQL.quoteString(input: sha256))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RegistryPackageVersionQuery()
			subfields(subquery)

			addField(field: "versionBySha256", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func versions(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (RegistryPackageVersionConnectionQuery) -> Void) -> RegistryPackageQuery {
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

			let subquery = RegistryPackageVersionConnectionQuery()
			subfields(subquery)

			addField(field: "versions", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func versionsByMetadatum(aliasSuffix: String? = nil, metadatum: RegistryPackageMetadatum, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (RegistryPackageVersionConnectionQuery) -> Void) -> RegistryPackageQuery {
			var args: [String] = []

			args.append("metadatum:\(metadatum.serialize())")

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

			let subquery = RegistryPackageVersionConnectionQuery()
			subfields(subquery)

			addField(field: "versionsByMetadatum", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}
	}

	open class RegistryPackage: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = RegistryPackageQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "color":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackage.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackage.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "latestVersion":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RegistryPackage.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageVersion(fields: value)

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackage.self, field: fieldName, value: fieldValue)
				}
				return value

				case "nameWithOwner":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackage.self, field: fieldName, value: fieldValue)
				}
				return value

				case "packageFileByGuid":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RegistryPackage.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageFile(fields: value)

				case "packageFileBySha256":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RegistryPackage.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageFile(fields: value)

				case "packageType":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackage.self, field: fieldName, value: fieldValue)
				}
				return RegistryPackageType(rawValue: value) ?? .unknownValue

				case "preReleaseVersions":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RegistryPackage.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageVersionConnection(fields: value)

				case "registryPackageType":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: RegistryPackage.self, field: fieldName, value: fieldValue)
				}
				return value

				case "repository":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RegistryPackage.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "statistics":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RegistryPackage.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageStatistics(fields: value)

				case "tags":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RegistryPackage.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageTagConnection(fields: value)

				case "topics":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RegistryPackage.self, field: fieldName, value: fieldValue)
				}
				return try TopicConnection(fields: value)

				case "version":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RegistryPackage.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageVersion(fields: value)

				case "versionByPlatform":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RegistryPackage.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageVersion(fields: value)

				case "versionBySha256":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RegistryPackage.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageVersion(fields: value)

				case "versions":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RegistryPackage.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageVersionConnection(fields: value)

				case "versionsByMetadatum":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RegistryPackage.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageVersionConnection(fields: value)

				default:
				throw SchemaViolationError(type: RegistryPackage.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "RegistryPackage" }

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		open var color: String {
			return internalGetColor()
		}

		func internalGetColor(aliasSuffix: String? = nil) -> String {
			return field(field: "color", aliasSuffix: aliasSuffix) as! String
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		open var latestVersion: ExampleSchema.RegistryPackageVersion? {
			return internalGetLatestVersion()
		}

		func internalGetLatestVersion(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageVersion? {
			return field(field: "latestVersion", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageVersion?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		open var nameWithOwner: String {
			return internalGetNameWithOwner()
		}

		func internalGetNameWithOwner(aliasSuffix: String? = nil) -> String {
			return field(field: "nameWithOwner", aliasSuffix: aliasSuffix) as! String
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object. Removal on 2020-04-01 UTC.")
		open var packageFileByGuid: ExampleSchema.RegistryPackageFile? {
			return internalGetPackageFileByGuid()
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object. Removal on 2020-04-01 UTC.")
		open func aliasedPackageFileByGuid(aliasSuffix: String) -> ExampleSchema.RegistryPackageFile? {
			return internalGetPackageFileByGuid(aliasSuffix: aliasSuffix)
		}

		func internalGetPackageFileByGuid(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageFile? {
			return field(field: "packageFileByGuid", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageFile?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object. Removal on 2020-04-01 UTC.")
		open var packageFileBySha256: ExampleSchema.RegistryPackageFile? {
			return internalGetPackageFileBySha256()
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object. Removal on 2020-04-01 UTC.")
		open func aliasedPackageFileBySha256(aliasSuffix: String) -> ExampleSchema.RegistryPackageFile? {
			return internalGetPackageFileBySha256(aliasSuffix: aliasSuffix)
		}

		func internalGetPackageFileBySha256(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageFile? {
			return field(field: "packageFileBySha256", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageFile?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		open var packageType: ExampleSchema.RegistryPackageType {
			return internalGetPackageType()
		}

		func internalGetPackageType(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageType {
			return field(field: "packageType", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageType
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		open var preReleaseVersions: ExampleSchema.RegistryPackageVersionConnection? {
			return internalGetPreReleaseVersions()
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		open func aliasedPreReleaseVersions(aliasSuffix: String) -> ExampleSchema.RegistryPackageVersionConnection? {
			return internalGetPreReleaseVersions(aliasSuffix: aliasSuffix)
		}

		func internalGetPreReleaseVersions(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageVersionConnection? {
			return field(field: "preReleaseVersions", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageVersionConnection?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		open var registryPackageType: String? {
			return internalGetRegistryPackageType()
		}

		func internalGetRegistryPackageType(aliasSuffix: String? = nil) -> String? {
			return field(field: "registryPackageType", aliasSuffix: aliasSuffix) as! String?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		open var repository: ExampleSchema.Repository? {
			return internalGetRepository()
		}

		func internalGetRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository? {
			return field(field: "repository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		open var statistics: ExampleSchema.RegistryPackageStatistics? {
			return internalGetStatistics()
		}

		func internalGetStatistics(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageStatistics? {
			return field(field: "statistics", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageStatistics?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object. Removal on 2020-04-01 UTC.")
		open var tags: ExampleSchema.RegistryPackageTagConnection {
			return internalGetTags()
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object. Removal on 2020-04-01 UTC.")
		open func aliasedTags(aliasSuffix: String) -> ExampleSchema.RegistryPackageTagConnection {
			return internalGetTags(aliasSuffix: aliasSuffix)
		}

		func internalGetTags(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageTagConnection {
			return field(field: "tags", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageTagConnection
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object. Removal on 2020-04-01 UTC.")
		open var topics: ExampleSchema.TopicConnection? {
			return internalGetTopics()
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object. Removal on 2020-04-01 UTC.")
		open func aliasedTopics(aliasSuffix: String) -> ExampleSchema.TopicConnection? {
			return internalGetTopics(aliasSuffix: aliasSuffix)
		}

		func internalGetTopics(aliasSuffix: String? = nil) -> ExampleSchema.TopicConnection? {
			return field(field: "topics", aliasSuffix: aliasSuffix) as! ExampleSchema.TopicConnection?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		open var version: ExampleSchema.RegistryPackageVersion? {
			return internalGetVersion()
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		open func aliasedVersion(aliasSuffix: String) -> ExampleSchema.RegistryPackageVersion? {
			return internalGetVersion(aliasSuffix: aliasSuffix)
		}

		func internalGetVersion(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageVersion? {
			return field(field: "version", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageVersion?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		open var versionByPlatform: ExampleSchema.RegistryPackageVersion? {
			return internalGetVersionByPlatform()
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		open func aliasedVersionByPlatform(aliasSuffix: String) -> ExampleSchema.RegistryPackageVersion? {
			return internalGetVersionByPlatform(aliasSuffix: aliasSuffix)
		}

		func internalGetVersionByPlatform(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageVersion? {
			return field(field: "versionByPlatform", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageVersion?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		open var versionBySha256: ExampleSchema.RegistryPackageVersion? {
			return internalGetVersionBySha256()
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		open func aliasedVersionBySha256(aliasSuffix: String) -> ExampleSchema.RegistryPackageVersion? {
			return internalGetVersionBySha256(aliasSuffix: aliasSuffix)
		}

		func internalGetVersionBySha256(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageVersion? {
			return field(field: "versionBySha256", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageVersion?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		open var versions: ExampleSchema.RegistryPackageVersionConnection {
			return internalGetVersions()
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		open func aliasedVersions(aliasSuffix: String) -> ExampleSchema.RegistryPackageVersionConnection {
			return internalGetVersions(aliasSuffix: aliasSuffix)
		}

		func internalGetVersions(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageVersionConnection {
			return field(field: "versions", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageVersionConnection
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		open var versionsByMetadatum: ExampleSchema.RegistryPackageVersionConnection? {
			return internalGetVersionsByMetadatum()
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `Package` object instead. Removal on 2020-04-01 UTC.")
		open func aliasedVersionsByMetadatum(aliasSuffix: String) -> ExampleSchema.RegistryPackageVersionConnection? {
			return internalGetVersionsByMetadatum(aliasSuffix: aliasSuffix)
		}

		func internalGetVersionsByMetadatum(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageVersionConnection? {
			return field(field: "versionsByMetadatum", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageVersionConnection?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "color":

				return .scalar

				case "id":

				return .scalar

				case "latestVersion":

				return .object

				case "name":

				return .scalar

				case "nameWithOwner":

				return .scalar

				case "packageFileByGuid":

				return .object

				case "packageFileBySha256":

				return .object

				case "packageType":

				return .scalar

				case "preReleaseVersions":

				return .object

				case "registryPackageType":

				return .scalar

				case "repository":

				return .object

				case "statistics":

				return .object

				case "tags":

				return .object

				case "topics":

				return .object

				case "version":

				return .object

				case "versionByPlatform":

				return .object

				case "versionBySha256":

				return .object

				case "versions":

				return .object

				case "versionsByMetadatum":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "latestVersion":
				return internalGetLatestVersion()

				case "packageFileByGuid":
				return internalGetPackageFileByGuid()

				case "packageFileBySha256":
				return internalGetPackageFileBySha256()

				case "preReleaseVersions":
				return internalGetPreReleaseVersions()

				case "repository":
				return internalGetRepository()

				case "statistics":
				return internalGetStatistics()

				case "tags":
				return internalGetTags()

				case "topics":
				return internalGetTopics()

				case "version":
				return internalGetVersion()

				case "versionByPlatform":
				return internalGetVersionByPlatform()

				case "versionBySha256":
				return internalGetVersionBySha256()

				case "versions":
				return internalGetVersions()

				case "versionsByMetadatum":
				return internalGetVersionsByMetadatum()

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
					case "latestVersion":
					if let value = internalGetLatestVersion() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "packageFileByGuid":
					if let value = internalGetPackageFileByGuid() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "packageFileBySha256":
					if let value = internalGetPackageFileBySha256() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "preReleaseVersions":
					if let value = internalGetPreReleaseVersions() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "repository":
					if let value = internalGetRepository() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "statistics":
					if let value = internalGetStatistics() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "tags":
					response.append(internalGetTags())
					response.append(contentsOf: internalGetTags().childResponseObjectMap())

					case "topics":
					if let value = internalGetTopics() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "version":
					if let value = internalGetVersion() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "versionByPlatform":
					if let value = internalGetVersionByPlatform() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "versionBySha256":
					if let value = internalGetVersionBySha256() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "versions":
					response.append(internalGetVersions())
					response.append(contentsOf: internalGetVersions().childResponseObjectMap())

					case "versionsByMetadatum":
					if let value = internalGetVersionsByMetadatum() {
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
