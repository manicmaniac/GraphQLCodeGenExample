// Generated from graphql_swift_gen gem
import Foundation

public protocol OrgRestoreMemberAuditEntryMembership {
	var typeName: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class OrgRestoreMemberAuditEntryMembershipQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = OrgRestoreMemberAuditEntryMembership

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onOrgRestoreMemberMembershipOrganizationAuditEntryData(subfields: (OrgRestoreMemberMembershipOrganizationAuditEntryDataQuery) -> Void) -> OrgRestoreMemberAuditEntryMembershipQuery {
			let subquery = OrgRestoreMemberMembershipOrganizationAuditEntryDataQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRestoreMemberMembershipOrganizationAuditEntryData", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgRestoreMemberMembershipRepositoryAuditEntryData(subfields: (OrgRestoreMemberMembershipRepositoryAuditEntryDataQuery) -> Void) -> OrgRestoreMemberAuditEntryMembershipQuery {
			let subquery = OrgRestoreMemberMembershipRepositoryAuditEntryDataQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRestoreMemberMembershipRepositoryAuditEntryData", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgRestoreMemberMembershipTeamAuditEntryData(subfields: (OrgRestoreMemberMembershipTeamAuditEntryDataQuery) -> Void) -> OrgRestoreMemberAuditEntryMembershipQuery {
			let subquery = OrgRestoreMemberMembershipTeamAuditEntryDataQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRestoreMemberMembershipTeamAuditEntryData", subfields: subquery)
			return self
		}
	}

	open class UnknownOrgRestoreMemberAuditEntryMembership: GraphQL.AbstractResponse, GraphQLObject, OrgRestoreMemberAuditEntryMembership {
		public typealias Query = OrgRestoreMemberAuditEntryMembershipQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				default:
				throw SchemaViolationError(type: UnknownOrgRestoreMemberAuditEntryMembership.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> OrgRestoreMemberAuditEntryMembership {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownOrgRestoreMemberAuditEntryMembership.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "OrgRestoreMemberMembershipOrganizationAuditEntryData":
				return try OrgRestoreMemberMembershipOrganizationAuditEntryData.init(fields: fields)

				case "OrgRestoreMemberMembershipRepositoryAuditEntryData":
				return try OrgRestoreMemberMembershipRepositoryAuditEntryData.init(fields: fields)

				case "OrgRestoreMemberMembershipTeamAuditEntryData":
				return try OrgRestoreMemberMembershipTeamAuditEntryData.init(fields: fields)

				default:
				return try UnknownOrgRestoreMemberAuditEntryMembership.init(fields: fields)
			}
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
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
