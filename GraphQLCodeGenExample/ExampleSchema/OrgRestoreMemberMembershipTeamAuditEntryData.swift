// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class OrgRestoreMemberMembershipTeamAuditEntryDataQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = OrgRestoreMemberMembershipTeamAuditEntryData

		@discardableResult
		open func team(aliasSuffix: String? = nil, _ subfields: (TeamQuery) -> Void) -> OrgRestoreMemberMembershipTeamAuditEntryDataQuery {
			let subquery = TeamQuery()
			subfields(subquery)

			addField(field: "team", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func teamName(aliasSuffix: String? = nil) -> OrgRestoreMemberMembershipTeamAuditEntryDataQuery {
			addField(field: "teamName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func teamResourcePath(aliasSuffix: String? = nil) -> OrgRestoreMemberMembershipTeamAuditEntryDataQuery {
			addField(field: "teamResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func teamUrl(aliasSuffix: String? = nil) -> OrgRestoreMemberMembershipTeamAuditEntryDataQuery {
			addField(field: "teamUrl", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class OrgRestoreMemberMembershipTeamAuditEntryData: GraphQL.AbstractResponse, GraphQLObject, OrgRestoreMemberAuditEntryMembership, TeamAuditEntryData {
		public typealias Query = OrgRestoreMemberMembershipTeamAuditEntryDataQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "team":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: OrgRestoreMemberMembershipTeamAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return try Team(fields: value)

				case "teamName":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrgRestoreMemberMembershipTeamAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				case "teamResourcePath":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrgRestoreMemberMembershipTeamAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				case "teamUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrgRestoreMemberMembershipTeamAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: OrgRestoreMemberMembershipTeamAuditEntryData.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "OrgRestoreMemberMembershipTeamAuditEntryData" }

		open var team: ExampleSchema.Team? {
			return internalGetTeam()
		}

		func internalGetTeam(aliasSuffix: String? = nil) -> ExampleSchema.Team? {
			return field(field: "team", aliasSuffix: aliasSuffix) as! ExampleSchema.Team?
		}

		open var teamName: String? {
			return internalGetTeamName()
		}

		func internalGetTeamName(aliasSuffix: String? = nil) -> String? {
			return field(field: "teamName", aliasSuffix: aliasSuffix) as! String?
		}

		open var teamResourcePath: String? {
			return internalGetTeamResourcePath()
		}

		func internalGetTeamResourcePath(aliasSuffix: String? = nil) -> String? {
			return field(field: "teamResourcePath", aliasSuffix: aliasSuffix) as! String?
		}

		open var teamUrl: String? {
			return internalGetTeamUrl()
		}

		func internalGetTeamUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "teamUrl", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "team":

				return .object

				case "teamName":

				return .scalar

				case "teamResourcePath":

				return .scalar

				case "teamUrl":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "team":
				return internalGetTeam()

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
					case "team":
					if let value = internalGetTeam() {
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
