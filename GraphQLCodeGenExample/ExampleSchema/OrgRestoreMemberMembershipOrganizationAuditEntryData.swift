// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class OrgRestoreMemberMembershipOrganizationAuditEntryDataQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = OrgRestoreMemberMembershipOrganizationAuditEntryData

		@discardableResult
		open func organization(aliasSuffix: String? = nil, _ subfields: (OrganizationQuery) -> Void) -> OrgRestoreMemberMembershipOrganizationAuditEntryDataQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)

			addField(field: "organization", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func organizationName(aliasSuffix: String? = nil) -> OrgRestoreMemberMembershipOrganizationAuditEntryDataQuery {
			addField(field: "organizationName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func organizationResourcePath(aliasSuffix: String? = nil) -> OrgRestoreMemberMembershipOrganizationAuditEntryDataQuery {
			addField(field: "organizationResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func organizationUrl(aliasSuffix: String? = nil) -> OrgRestoreMemberMembershipOrganizationAuditEntryDataQuery {
			addField(field: "organizationUrl", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class OrgRestoreMemberMembershipOrganizationAuditEntryData: GraphQL.AbstractResponse, GraphQLObject, OrgRestoreMemberAuditEntryMembership, OrganizationAuditEntryData {
		public typealias Query = OrgRestoreMemberMembershipOrganizationAuditEntryDataQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "organization":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: OrgRestoreMemberMembershipOrganizationAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return try Organization(fields: value)

				case "organizationName":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrgRestoreMemberMembershipOrganizationAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				case "organizationResourcePath":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrgRestoreMemberMembershipOrganizationAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				case "organizationUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrgRestoreMemberMembershipOrganizationAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: OrgRestoreMemberMembershipOrganizationAuditEntryData.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "OrgRestoreMemberMembershipOrganizationAuditEntryData" }

		open var organization: ExampleSchema.Organization? {
			return internalGetOrganization()
		}

		func internalGetOrganization(aliasSuffix: String? = nil) -> ExampleSchema.Organization? {
			return field(field: "organization", aliasSuffix: aliasSuffix) as! ExampleSchema.Organization?
		}

		open var organizationName: String? {
			return internalGetOrganizationName()
		}

		func internalGetOrganizationName(aliasSuffix: String? = nil) -> String? {
			return field(field: "organizationName", aliasSuffix: aliasSuffix) as! String?
		}

		open var organizationResourcePath: String? {
			return internalGetOrganizationResourcePath()
		}

		func internalGetOrganizationResourcePath(aliasSuffix: String? = nil) -> String? {
			return field(field: "organizationResourcePath", aliasSuffix: aliasSuffix) as! String?
		}

		open var organizationUrl: String? {
			return internalGetOrganizationUrl()
		}

		func internalGetOrganizationUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "organizationUrl", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "organization":

				return .object

				case "organizationName":

				return .scalar

				case "organizationResourcePath":

				return .scalar

				case "organizationUrl":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "organization":
				return internalGetOrganization()

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
					case "organization":
					if let value = internalGetOrganization() {
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
