// Generated from graphql_swift_gen gem
import Foundation

public protocol EnterpriseAuditEntryData {
	var typeName: String { get }

	var enterpriseResourcePath: String? { get }

	var enterpriseSlug: String? { get }

	var enterpriseUrl: String? { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class EnterpriseAuditEntryDataQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EnterpriseAuditEntryData

		@discardableResult
		open func enterpriseResourcePath(aliasSuffix: String? = nil) -> EnterpriseAuditEntryDataQuery {
			addField(field: "enterpriseResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func enterpriseSlug(aliasSuffix: String? = nil) -> EnterpriseAuditEntryDataQuery {
			addField(field: "enterpriseSlug", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func enterpriseUrl(aliasSuffix: String? = nil) -> EnterpriseAuditEntryDataQuery {
			addField(field: "enterpriseUrl", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onMembersCanDeleteReposClearAuditEntry(subfields: (MembersCanDeleteReposClearAuditEntryQuery) -> Void) -> EnterpriseAuditEntryDataQuery {
			let subquery = MembersCanDeleteReposClearAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "MembersCanDeleteReposClearAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMembersCanDeleteReposDisableAuditEntry(subfields: (MembersCanDeleteReposDisableAuditEntryQuery) -> Void) -> EnterpriseAuditEntryDataQuery {
			let subquery = MembersCanDeleteReposDisableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "MembersCanDeleteReposDisableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMembersCanDeleteReposEnableAuditEntry(subfields: (MembersCanDeleteReposEnableAuditEntryQuery) -> Void) -> EnterpriseAuditEntryDataQuery {
			let subquery = MembersCanDeleteReposEnableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "MembersCanDeleteReposEnableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgInviteToBusinessAuditEntry(subfields: (OrgInviteToBusinessAuditEntryQuery) -> Void) -> EnterpriseAuditEntryDataQuery {
			let subquery = OrgInviteToBusinessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgInviteToBusinessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPrivateRepositoryForkingDisableAuditEntry(subfields: (PrivateRepositoryForkingDisableAuditEntryQuery) -> Void) -> EnterpriseAuditEntryDataQuery {
			let subquery = PrivateRepositoryForkingDisableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "PrivateRepositoryForkingDisableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPrivateRepositoryForkingEnableAuditEntry(subfields: (PrivateRepositoryForkingEnableAuditEntryQuery) -> Void) -> EnterpriseAuditEntryDataQuery {
			let subquery = PrivateRepositoryForkingEnableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "PrivateRepositoryForkingEnableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepositoryVisibilityChangeDisableAuditEntry(subfields: (RepositoryVisibilityChangeDisableAuditEntryQuery) -> Void) -> EnterpriseAuditEntryDataQuery {
			let subquery = RepositoryVisibilityChangeDisableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepositoryVisibilityChangeDisableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepositoryVisibilityChangeEnableAuditEntry(subfields: (RepositoryVisibilityChangeEnableAuditEntryQuery) -> Void) -> EnterpriseAuditEntryDataQuery {
			let subquery = RepositoryVisibilityChangeEnableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepositoryVisibilityChangeEnableAuditEntry", subfields: subquery)
			return self
		}
	}

	open class UnknownEnterpriseAuditEntryData: GraphQL.AbstractResponse, GraphQLObject, EnterpriseAuditEntryData {
		public typealias Query = EnterpriseAuditEntryDataQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "enterpriseResourcePath":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownEnterpriseAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				case "enterpriseSlug":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownEnterpriseAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				case "enterpriseUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownEnterpriseAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownEnterpriseAuditEntryData.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> EnterpriseAuditEntryData {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownEnterpriseAuditEntryData.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "MembersCanDeleteReposClearAuditEntry":
				return try MembersCanDeleteReposClearAuditEntry.init(fields: fields)

				case "MembersCanDeleteReposDisableAuditEntry":
				return try MembersCanDeleteReposDisableAuditEntry.init(fields: fields)

				case "MembersCanDeleteReposEnableAuditEntry":
				return try MembersCanDeleteReposEnableAuditEntry.init(fields: fields)

				case "OrgInviteToBusinessAuditEntry":
				return try OrgInviteToBusinessAuditEntry.init(fields: fields)

				case "PrivateRepositoryForkingDisableAuditEntry":
				return try PrivateRepositoryForkingDisableAuditEntry.init(fields: fields)

				case "PrivateRepositoryForkingEnableAuditEntry":
				return try PrivateRepositoryForkingEnableAuditEntry.init(fields: fields)

				case "RepositoryVisibilityChangeDisableAuditEntry":
				return try RepositoryVisibilityChangeDisableAuditEntry.init(fields: fields)

				case "RepositoryVisibilityChangeEnableAuditEntry":
				return try RepositoryVisibilityChangeEnableAuditEntry.init(fields: fields)

				default:
				return try UnknownEnterpriseAuditEntryData.init(fields: fields)
			}
		}

		open var enterpriseResourcePath: String? {
			return internalGetEnterpriseResourcePath()
		}

		func internalGetEnterpriseResourcePath(aliasSuffix: String? = nil) -> String? {
			return field(field: "enterpriseResourcePath", aliasSuffix: aliasSuffix) as! String?
		}

		open var enterpriseSlug: String? {
			return internalGetEnterpriseSlug()
		}

		func internalGetEnterpriseSlug(aliasSuffix: String? = nil) -> String? {
			return field(field: "enterpriseSlug", aliasSuffix: aliasSuffix) as! String?
		}

		open var enterpriseUrl: String? {
			return internalGetEnterpriseUrl()
		}

		func internalGetEnterpriseUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "enterpriseUrl", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "enterpriseResourcePath":

				return .scalar

				case "enterpriseSlug":

				return .scalar

				case "enterpriseUrl":

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
