// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class EnterpriseBillingInfoQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EnterpriseBillingInfo

		@discardableResult
		open func allLicensableUsersCount(aliasSuffix: String? = nil) -> EnterpriseBillingInfoQuery {
			addField(field: "allLicensableUsersCount", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func assetPacks(aliasSuffix: String? = nil) -> EnterpriseBillingInfoQuery {
			addField(field: "assetPacks", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"`availableSeats` will be replaced with `totalAvailableLicenses` to provide more clarity on the value being returned Use EnterpriseBillingInfo.totalAvailableLicenses instead. Removal on 2020-01-01 UTC.")
		@discardableResult
		open func availableSeats(aliasSuffix: String? = nil) -> EnterpriseBillingInfoQuery {
			addField(field: "availableSeats", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func bandwidthQuota(aliasSuffix: String? = nil) -> EnterpriseBillingInfoQuery {
			addField(field: "bandwidthQuota", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func bandwidthUsage(aliasSuffix: String? = nil) -> EnterpriseBillingInfoQuery {
			addField(field: "bandwidthUsage", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func bandwidthUsagePercentage(aliasSuffix: String? = nil) -> EnterpriseBillingInfoQuery {
			addField(field: "bandwidthUsagePercentage", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"`seats` will be replaced with `totalLicenses` to provide more clarity on the value being returned Use EnterpriseBillingInfo.totalLicenses instead. Removal on 2020-01-01 UTC.")
		@discardableResult
		open func seats(aliasSuffix: String? = nil) -> EnterpriseBillingInfoQuery {
			addField(field: "seats", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func storageQuota(aliasSuffix: String? = nil) -> EnterpriseBillingInfoQuery {
			addField(field: "storageQuota", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func storageUsage(aliasSuffix: String? = nil) -> EnterpriseBillingInfoQuery {
			addField(field: "storageUsage", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func storageUsagePercentage(aliasSuffix: String? = nil) -> EnterpriseBillingInfoQuery {
			addField(field: "storageUsagePercentage", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func totalAvailableLicenses(aliasSuffix: String? = nil) -> EnterpriseBillingInfoQuery {
			addField(field: "totalAvailableLicenses", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func totalLicenses(aliasSuffix: String? = nil) -> EnterpriseBillingInfoQuery {
			addField(field: "totalLicenses", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class EnterpriseBillingInfo: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = EnterpriseBillingInfoQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "allLicensableUsersCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: EnterpriseBillingInfo.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "assetPacks":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: EnterpriseBillingInfo.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "availableSeats":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: EnterpriseBillingInfo.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "bandwidthQuota":
				guard let value = value as? Double else {
					throw SchemaViolationError(type: EnterpriseBillingInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "bandwidthUsage":
				guard let value = value as? Double else {
					throw SchemaViolationError(type: EnterpriseBillingInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "bandwidthUsagePercentage":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: EnterpriseBillingInfo.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "seats":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: EnterpriseBillingInfo.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "storageQuota":
				guard let value = value as? Double else {
					throw SchemaViolationError(type: EnterpriseBillingInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "storageUsage":
				guard let value = value as? Double else {
					throw SchemaViolationError(type: EnterpriseBillingInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "storageUsagePercentage":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: EnterpriseBillingInfo.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "totalAvailableLicenses":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: EnterpriseBillingInfo.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "totalLicenses":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: EnterpriseBillingInfo.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				default:
				throw SchemaViolationError(type: EnterpriseBillingInfo.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EnterpriseBillingInfo" }

		open var allLicensableUsersCount: Int32 {
			return internalGetAllLicensableUsersCount()
		}

		func internalGetAllLicensableUsersCount(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "allLicensableUsersCount", aliasSuffix: aliasSuffix) as! Int32
		}

		open var assetPacks: Int32 {
			return internalGetAssetPacks()
		}

		func internalGetAssetPacks(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "assetPacks", aliasSuffix: aliasSuffix) as! Int32
		}

		@available(*, deprecated, message:"`availableSeats` will be replaced with `totalAvailableLicenses` to provide more clarity on the value being returned Use EnterpriseBillingInfo.totalAvailableLicenses instead. Removal on 2020-01-01 UTC.")
		open var availableSeats: Int32 {
			return internalGetAvailableSeats()
		}

		func internalGetAvailableSeats(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "availableSeats", aliasSuffix: aliasSuffix) as! Int32
		}

		open var bandwidthQuota: Double {
			return internalGetBandwidthQuota()
		}

		func internalGetBandwidthQuota(aliasSuffix: String? = nil) -> Double {
			return field(field: "bandwidthQuota", aliasSuffix: aliasSuffix) as! Double
		}

		open var bandwidthUsage: Double {
			return internalGetBandwidthUsage()
		}

		func internalGetBandwidthUsage(aliasSuffix: String? = nil) -> Double {
			return field(field: "bandwidthUsage", aliasSuffix: aliasSuffix) as! Double
		}

		open var bandwidthUsagePercentage: Int32 {
			return internalGetBandwidthUsagePercentage()
		}

		func internalGetBandwidthUsagePercentage(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "bandwidthUsagePercentage", aliasSuffix: aliasSuffix) as! Int32
		}

		@available(*, deprecated, message:"`seats` will be replaced with `totalLicenses` to provide more clarity on the value being returned Use EnterpriseBillingInfo.totalLicenses instead. Removal on 2020-01-01 UTC.")
		open var seats: Int32 {
			return internalGetSeats()
		}

		func internalGetSeats(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "seats", aliasSuffix: aliasSuffix) as! Int32
		}

		open var storageQuota: Double {
			return internalGetStorageQuota()
		}

		func internalGetStorageQuota(aliasSuffix: String? = nil) -> Double {
			return field(field: "storageQuota", aliasSuffix: aliasSuffix) as! Double
		}

		open var storageUsage: Double {
			return internalGetStorageUsage()
		}

		func internalGetStorageUsage(aliasSuffix: String? = nil) -> Double {
			return field(field: "storageUsage", aliasSuffix: aliasSuffix) as! Double
		}

		open var storageUsagePercentage: Int32 {
			return internalGetStorageUsagePercentage()
		}

		func internalGetStorageUsagePercentage(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "storageUsagePercentage", aliasSuffix: aliasSuffix) as! Int32
		}

		open var totalAvailableLicenses: Int32 {
			return internalGetTotalAvailableLicenses()
		}

		func internalGetTotalAvailableLicenses(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "totalAvailableLicenses", aliasSuffix: aliasSuffix) as! Int32
		}

		open var totalLicenses: Int32 {
			return internalGetTotalLicenses()
		}

		func internalGetTotalLicenses(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "totalLicenses", aliasSuffix: aliasSuffix) as! Int32
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "allLicensableUsersCount":

				return .scalar

				case "assetPacks":

				return .scalar

				case "availableSeats":

				return .scalar

				case "bandwidthQuota":

				return .scalar

				case "bandwidthUsage":

				return .scalar

				case "bandwidthUsagePercentage":

				return .scalar

				case "seats":

				return .scalar

				case "storageQuota":

				return .scalar

				case "storageUsage":

				return .scalar

				case "storageUsagePercentage":

				return .scalar

				case "totalAvailableLicenses":

				return .scalar

				case "totalLicenses":

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
