// Generated from graphql_swift_gen gem
import Foundation

public protocol OauthApplicationAuditEntryData {
	var typeName: String { get }

	var oauthApplicationName: String? { get }

	var oauthApplicationResourcePath: String? { get }

	var oauthApplicationUrl: String? { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class OauthApplicationAuditEntryDataQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = OauthApplicationAuditEntryData

		@discardableResult
		open func oauthApplicationName(aliasSuffix: String? = nil) -> OauthApplicationAuditEntryDataQuery {
			addField(field: "oauthApplicationName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func oauthApplicationResourcePath(aliasSuffix: String? = nil) -> OauthApplicationAuditEntryDataQuery {
			addField(field: "oauthApplicationResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func oauthApplicationUrl(aliasSuffix: String? = nil) -> OauthApplicationAuditEntryDataQuery {
			addField(field: "oauthApplicationUrl", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onOauthApplicationCreateAuditEntry(subfields: (OauthApplicationCreateAuditEntryQuery) -> Void) -> OauthApplicationAuditEntryDataQuery {
			let subquery = OauthApplicationCreateAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OauthApplicationCreateAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgOauthAppAccessApprovedAuditEntry(subfields: (OrgOauthAppAccessApprovedAuditEntryQuery) -> Void) -> OauthApplicationAuditEntryDataQuery {
			let subquery = OrgOauthAppAccessApprovedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgOauthAppAccessApprovedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgOauthAppAccessDeniedAuditEntry(subfields: (OrgOauthAppAccessDeniedAuditEntryQuery) -> Void) -> OauthApplicationAuditEntryDataQuery {
			let subquery = OrgOauthAppAccessDeniedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgOauthAppAccessDeniedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgOauthAppAccessRequestedAuditEntry(subfields: (OrgOauthAppAccessRequestedAuditEntryQuery) -> Void) -> OauthApplicationAuditEntryDataQuery {
			let subquery = OrgOauthAppAccessRequestedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgOauthAppAccessRequestedAuditEntry", subfields: subquery)
			return self
		}
	}

	open class UnknownOauthApplicationAuditEntryData: GraphQL.AbstractResponse, GraphQLObject, OauthApplicationAuditEntryData {
		public typealias Query = OauthApplicationAuditEntryDataQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "oauthApplicationName":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownOauthApplicationAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				case "oauthApplicationResourcePath":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownOauthApplicationAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				case "oauthApplicationUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownOauthApplicationAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownOauthApplicationAuditEntryData.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> OauthApplicationAuditEntryData {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownOauthApplicationAuditEntryData.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "OauthApplicationCreateAuditEntry":
				return try OauthApplicationCreateAuditEntry.init(fields: fields)

				case "OrgOauthAppAccessApprovedAuditEntry":
				return try OrgOauthAppAccessApprovedAuditEntry.init(fields: fields)

				case "OrgOauthAppAccessDeniedAuditEntry":
				return try OrgOauthAppAccessDeniedAuditEntry.init(fields: fields)

				case "OrgOauthAppAccessRequestedAuditEntry":
				return try OrgOauthAppAccessRequestedAuditEntry.init(fields: fields)

				default:
				return try UnknownOauthApplicationAuditEntryData.init(fields: fields)
			}
		}

		open var oauthApplicationName: String? {
			return internalGetOauthApplicationName()
		}

		func internalGetOauthApplicationName(aliasSuffix: String? = nil) -> String? {
			return field(field: "oauthApplicationName", aliasSuffix: aliasSuffix) as! String?
		}

		open var oauthApplicationResourcePath: String? {
			return internalGetOauthApplicationResourcePath()
		}

		func internalGetOauthApplicationResourcePath(aliasSuffix: String? = nil) -> String? {
			return field(field: "oauthApplicationResourcePath", aliasSuffix: aliasSuffix) as! String?
		}

		open var oauthApplicationUrl: String? {
			return internalGetOauthApplicationUrl()
		}

		func internalGetOauthApplicationUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "oauthApplicationUrl", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "oauthApplicationName":

				return .scalar

				case "oauthApplicationResourcePath":

				return .scalar

				case "oauthApplicationUrl":

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
