// Generated from graphql_swift_gen gem
import Foundation

public protocol TeamAuditEntryData {
	var typeName: String { get }

	var team: ExampleSchema.Team? { get }

	var teamName: String? { get }

	var teamResourcePath: String? { get }

	var teamUrl: String? { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class TeamAuditEntryDataQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = TeamAuditEntryData

		@discardableResult
		open func team(aliasSuffix: String? = nil, _ subfields: (TeamQuery) -> Void) -> TeamAuditEntryDataQuery {
			let subquery = TeamQuery()
			subfields(subquery)

			addField(field: "team", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func teamName(aliasSuffix: String? = nil) -> TeamAuditEntryDataQuery {
			addField(field: "teamName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func teamResourcePath(aliasSuffix: String? = nil) -> TeamAuditEntryDataQuery {
			addField(field: "teamResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func teamUrl(aliasSuffix: String? = nil) -> TeamAuditEntryDataQuery {
			addField(field: "teamUrl", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onOrgRestoreMemberMembershipTeamAuditEntryData(subfields: (OrgRestoreMemberMembershipTeamAuditEntryDataQuery) -> Void) -> TeamAuditEntryDataQuery {
			let subquery = OrgRestoreMemberMembershipTeamAuditEntryDataQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRestoreMemberMembershipTeamAuditEntryData", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamAddMemberAuditEntry(subfields: (TeamAddMemberAuditEntryQuery) -> Void) -> TeamAuditEntryDataQuery {
			let subquery = TeamAddMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamAddMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamAddRepositoryAuditEntry(subfields: (TeamAddRepositoryAuditEntryQuery) -> Void) -> TeamAuditEntryDataQuery {
			let subquery = TeamAddRepositoryAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamAddRepositoryAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamChangeParentTeamAuditEntry(subfields: (TeamChangeParentTeamAuditEntryQuery) -> Void) -> TeamAuditEntryDataQuery {
			let subquery = TeamChangeParentTeamAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamChangeParentTeamAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamRemoveMemberAuditEntry(subfields: (TeamRemoveMemberAuditEntryQuery) -> Void) -> TeamAuditEntryDataQuery {
			let subquery = TeamRemoveMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamRemoveMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamRemoveRepositoryAuditEntry(subfields: (TeamRemoveRepositoryAuditEntryQuery) -> Void) -> TeamAuditEntryDataQuery {
			let subquery = TeamRemoveRepositoryAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamRemoveRepositoryAuditEntry", subfields: subquery)
			return self
		}
	}

	open class UnknownTeamAuditEntryData: GraphQL.AbstractResponse, GraphQLObject, TeamAuditEntryData {
		public typealias Query = TeamAuditEntryDataQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "team":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownTeamAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return try Team(fields: value)

				case "teamName":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownTeamAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				case "teamResourcePath":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownTeamAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				case "teamUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownTeamAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownTeamAuditEntryData.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> TeamAuditEntryData {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownTeamAuditEntryData.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "OrgRestoreMemberMembershipTeamAuditEntryData":
				return try OrgRestoreMemberMembershipTeamAuditEntryData.init(fields: fields)

				case "TeamAddMemberAuditEntry":
				return try TeamAddMemberAuditEntry.init(fields: fields)

				case "TeamAddRepositoryAuditEntry":
				return try TeamAddRepositoryAuditEntry.init(fields: fields)

				case "TeamChangeParentTeamAuditEntry":
				return try TeamChangeParentTeamAuditEntry.init(fields: fields)

				case "TeamRemoveMemberAuditEntry":
				return try TeamRemoveMemberAuditEntry.init(fields: fields)

				case "TeamRemoveRepositoryAuditEntry":
				return try TeamRemoveRepositoryAuditEntry.init(fields: fields)

				default:
				return try UnknownTeamAuditEntryData.init(fields: fields)
			}
		}

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
