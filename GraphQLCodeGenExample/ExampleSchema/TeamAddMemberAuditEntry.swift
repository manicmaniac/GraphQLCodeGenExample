// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class TeamAddMemberAuditEntryQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = TeamAddMemberAuditEntry

		@discardableResult
		open func action(aliasSuffix: String? = nil) -> TeamAddMemberAuditEntryQuery {
			addField(field: "action", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (AuditEntryActorQuery) -> Void) -> TeamAddMemberAuditEntryQuery {
			let subquery = AuditEntryActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func actorIp(aliasSuffix: String? = nil) -> TeamAddMemberAuditEntryQuery {
			addField(field: "actorIp", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func actorLocation(aliasSuffix: String? = nil, _ subfields: (ActorLocationQuery) -> Void) -> TeamAddMemberAuditEntryQuery {
			let subquery = ActorLocationQuery()
			subfields(subquery)

			addField(field: "actorLocation", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func actorLogin(aliasSuffix: String? = nil) -> TeamAddMemberAuditEntryQuery {
			addField(field: "actorLogin", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func actorResourcePath(aliasSuffix: String? = nil) -> TeamAddMemberAuditEntryQuery {
			addField(field: "actorResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func actorUrl(aliasSuffix: String? = nil) -> TeamAddMemberAuditEntryQuery {
			addField(field: "actorUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> TeamAddMemberAuditEntryQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> TeamAddMemberAuditEntryQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isLdapMapped(aliasSuffix: String? = nil) -> TeamAddMemberAuditEntryQuery {
			addField(field: "isLdapMapped", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func operationType(aliasSuffix: String? = nil) -> TeamAddMemberAuditEntryQuery {
			addField(field: "operationType", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func organization(aliasSuffix: String? = nil, _ subfields: (OrganizationQuery) -> Void) -> TeamAddMemberAuditEntryQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)

			addField(field: "organization", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func organizationName(aliasSuffix: String? = nil) -> TeamAddMemberAuditEntryQuery {
			addField(field: "organizationName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func organizationResourcePath(aliasSuffix: String? = nil) -> TeamAddMemberAuditEntryQuery {
			addField(field: "organizationResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func organizationUrl(aliasSuffix: String? = nil) -> TeamAddMemberAuditEntryQuery {
			addField(field: "organizationUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func team(aliasSuffix: String? = nil, _ subfields: (TeamQuery) -> Void) -> TeamAddMemberAuditEntryQuery {
			let subquery = TeamQuery()
			subfields(subquery)

			addField(field: "team", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func teamName(aliasSuffix: String? = nil) -> TeamAddMemberAuditEntryQuery {
			addField(field: "teamName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func teamResourcePath(aliasSuffix: String? = nil) -> TeamAddMemberAuditEntryQuery {
			addField(field: "teamResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func teamUrl(aliasSuffix: String? = nil) -> TeamAddMemberAuditEntryQuery {
			addField(field: "teamUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func user(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> TeamAddMemberAuditEntryQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func userLogin(aliasSuffix: String? = nil) -> TeamAddMemberAuditEntryQuery {
			addField(field: "userLogin", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func userResourcePath(aliasSuffix: String? = nil) -> TeamAddMemberAuditEntryQuery {
			addField(field: "userResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func userUrl(aliasSuffix: String? = nil) -> TeamAddMemberAuditEntryQuery {
			addField(field: "userUrl", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class TeamAddMemberAuditEntry: GraphQL.AbstractResponse, GraphQLObject, AuditEntry, Node, OrganizationAuditEntry, OrganizationAuditEntryData, TeamAuditEntryData {
		public typealias Query = TeamAddMemberAuditEntryQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "action":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return try UnknownAuditEntryActor.create(fields: value)

				case "actorIp":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "actorLocation":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return try ActorLocation(fields: value)

				case "actorLogin":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "actorResourcePath":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "actorUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "isLdapMapped":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "operationType":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return OperationType(rawValue: value) ?? .unknownValue

				case "organization":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return try Organization(fields: value)

				case "organizationName":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "organizationResourcePath":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "organizationUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "team":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return try Team(fields: value)

				case "teamName":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "teamResourcePath":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "teamUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "user":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				case "userLogin":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "userResourcePath":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "userUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: TeamAddMemberAuditEntry.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "TeamAddMemberAuditEntry" }

		open var action: String {
			return internalGetAction()
		}

		func internalGetAction(aliasSuffix: String? = nil) -> String {
			return field(field: "action", aliasSuffix: aliasSuffix) as! String
		}

		open var actor: AuditEntryActor? {
			return internalGetActor()
		}

		func internalGetActor(aliasSuffix: String? = nil) -> AuditEntryActor? {
			return field(field: "actor", aliasSuffix: aliasSuffix) as! AuditEntryActor?
		}

		open var actorIp: String? {
			return internalGetActorIp()
		}

		func internalGetActorIp(aliasSuffix: String? = nil) -> String? {
			return field(field: "actorIp", aliasSuffix: aliasSuffix) as! String?
		}

		open var actorLocation: ExampleSchema.ActorLocation? {
			return internalGetActorLocation()
		}

		func internalGetActorLocation(aliasSuffix: String? = nil) -> ExampleSchema.ActorLocation? {
			return field(field: "actorLocation", aliasSuffix: aliasSuffix) as! ExampleSchema.ActorLocation?
		}

		open var actorLogin: String? {
			return internalGetActorLogin()
		}

		func internalGetActorLogin(aliasSuffix: String? = nil) -> String? {
			return field(field: "actorLogin", aliasSuffix: aliasSuffix) as! String?
		}

		open var actorResourcePath: String? {
			return internalGetActorResourcePath()
		}

		func internalGetActorResourcePath(aliasSuffix: String? = nil) -> String? {
			return field(field: "actorResourcePath", aliasSuffix: aliasSuffix) as! String?
		}

		open var actorUrl: String? {
			return internalGetActorUrl()
		}

		func internalGetActorUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "actorUrl", aliasSuffix: aliasSuffix) as! String?
		}

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var isLdapMapped: Bool? {
			return internalGetIsLdapMapped()
		}

		func internalGetIsLdapMapped(aliasSuffix: String? = nil) -> Bool? {
			return field(field: "isLdapMapped", aliasSuffix: aliasSuffix) as! Bool?
		}

		open var operationType: ExampleSchema.OperationType? {
			return internalGetOperationType()
		}

		func internalGetOperationType(aliasSuffix: String? = nil) -> ExampleSchema.OperationType? {
			return field(field: "operationType", aliasSuffix: aliasSuffix) as! ExampleSchema.OperationType?
		}

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

		open var user: ExampleSchema.User? {
			return internalGetUser()
		}

		func internalGetUser(aliasSuffix: String? = nil) -> ExampleSchema.User? {
			return field(field: "user", aliasSuffix: aliasSuffix) as! ExampleSchema.User?
		}

		open var userLogin: String? {
			return internalGetUserLogin()
		}

		func internalGetUserLogin(aliasSuffix: String? = nil) -> String? {
			return field(field: "userLogin", aliasSuffix: aliasSuffix) as! String?
		}

		open var userResourcePath: String? {
			return internalGetUserResourcePath()
		}

		func internalGetUserResourcePath(aliasSuffix: String? = nil) -> String? {
			return field(field: "userResourcePath", aliasSuffix: aliasSuffix) as! String?
		}

		open var userUrl: String? {
			return internalGetUserUrl()
		}

		func internalGetUserUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "userUrl", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "action":

				return .scalar

				case "actor":

				return .scalar

				case "actorIp":

				return .scalar

				case "actorLocation":

				return .object

				case "actorLogin":

				return .scalar

				case "actorResourcePath":

				return .scalar

				case "actorUrl":

				return .scalar

				case "createdAt":

				return .scalar

				case "id":

				return .scalar

				case "isLdapMapped":

				return .scalar

				case "operationType":

				return .scalar

				case "organization":

				return .object

				case "organizationName":

				return .scalar

				case "organizationResourcePath":

				return .scalar

				case "organizationUrl":

				return .scalar

				case "team":

				return .object

				case "teamName":

				return .scalar

				case "teamResourcePath":

				return .scalar

				case "teamUrl":

				return .scalar

				case "user":

				return .object

				case "userLogin":

				return .scalar

				case "userResourcePath":

				return .scalar

				case "userUrl":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "actorLocation":
				return internalGetActorLocation()

				case "organization":
				return internalGetOrganization()

				case "team":
				return internalGetTeam()

				case "user":
				return internalGetUser()

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
					case "actor":
					if let value = internalGetActor() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "actorLocation":
					if let value = internalGetActorLocation() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "organization":
					if let value = internalGetOrganization() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "team":
					if let value = internalGetTeam() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "user":
					if let value = internalGetUser() {
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
