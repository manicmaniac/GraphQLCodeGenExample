// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RegistryPackageVersionStatisticsQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RegistryPackageVersionStatistics

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersionStatistics` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func downloadsThisMonth(aliasSuffix: String? = nil) -> RegistryPackageVersionStatisticsQuery {
			addField(field: "downloadsThisMonth", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersionStatistics` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func downloadsThisWeek(aliasSuffix: String? = nil) -> RegistryPackageVersionStatisticsQuery {
			addField(field: "downloadsThisWeek", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersionStatistics` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func downloadsThisYear(aliasSuffix: String? = nil) -> RegistryPackageVersionStatisticsQuery {
			addField(field: "downloadsThisYear", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersionStatistics` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func downloadsToday(aliasSuffix: String? = nil) -> RegistryPackageVersionStatisticsQuery {
			addField(field: "downloadsToday", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersionStatistics` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func downloadsTotalCount(aliasSuffix: String? = nil) -> RegistryPackageVersionStatisticsQuery {
			addField(field: "downloadsTotalCount", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class RegistryPackageVersionStatistics: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = RegistryPackageVersionStatisticsQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "downloadsThisMonth":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: RegistryPackageVersionStatistics.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "downloadsThisWeek":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: RegistryPackageVersionStatistics.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "downloadsThisYear":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: RegistryPackageVersionStatistics.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "downloadsToday":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: RegistryPackageVersionStatistics.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "downloadsTotalCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: RegistryPackageVersionStatistics.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				default:
				throw SchemaViolationError(type: RegistryPackageVersionStatistics.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "RegistryPackageVersionStatistics" }

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersionStatistics` object instead. Removal on 2020-04-01 UTC.")
		open var downloadsThisMonth: Int32 {
			return internalGetDownloadsThisMonth()
		}

		func internalGetDownloadsThisMonth(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "downloadsThisMonth", aliasSuffix: aliasSuffix) as! Int32
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersionStatistics` object instead. Removal on 2020-04-01 UTC.")
		open var downloadsThisWeek: Int32 {
			return internalGetDownloadsThisWeek()
		}

		func internalGetDownloadsThisWeek(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "downloadsThisWeek", aliasSuffix: aliasSuffix) as! Int32
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersionStatistics` object instead. Removal on 2020-04-01 UTC.")
		open var downloadsThisYear: Int32 {
			return internalGetDownloadsThisYear()
		}

		func internalGetDownloadsThisYear(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "downloadsThisYear", aliasSuffix: aliasSuffix) as! Int32
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersionStatistics` object instead. Removal on 2020-04-01 UTC.")
		open var downloadsToday: Int32 {
			return internalGetDownloadsToday()
		}

		func internalGetDownloadsToday(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "downloadsToday", aliasSuffix: aliasSuffix) as! Int32
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageVersionStatistics` object instead. Removal on 2020-04-01 UTC.")
		open var downloadsTotalCount: Int32 {
			return internalGetDownloadsTotalCount()
		}

		func internalGetDownloadsTotalCount(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "downloadsTotalCount", aliasSuffix: aliasSuffix) as! Int32
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "downloadsThisMonth":

				return .scalar

				case "downloadsThisWeek":

				return .scalar

				case "downloadsThisYear":

				return .scalar

				case "downloadsToday":

				return .scalar

				case "downloadsTotalCount":

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
