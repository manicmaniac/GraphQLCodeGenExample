// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class OrganizationInvitationQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = OrganizationInvitation

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> OrganizationInvitationQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func email(aliasSuffix: String? = nil) -> OrganizationInvitationQuery {
			addField(field: "email", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> OrganizationInvitationQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func invitationType(aliasSuffix: String? = nil) -> OrganizationInvitationQuery {
			addField(field: "invitationType", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func invitee(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> OrganizationInvitationQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "invitee", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func inviter(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> OrganizationInvitationQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "inviter", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func organization(aliasSuffix: String? = nil, _ subfields: (OrganizationQuery) -> Void) -> OrganizationInvitationQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)

			addField(field: "organization", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func role(aliasSuffix: String? = nil) -> OrganizationInvitationQuery {
			addField(field: "role", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class OrganizationInvitation: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = OrganizationInvitationQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrganizationInvitation.self, field: fieldName, value: fieldValue)
				}
				return value

				case "email":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrganizationInvitation.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrganizationInvitation.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "invitationType":
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrganizationInvitation.self, field: fieldName, value: fieldValue)
				}
				return OrganizationInvitationType(rawValue: value) ?? .unknownValue

				case "invitee":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: OrganizationInvitation.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				case "inviter":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: OrganizationInvitation.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				case "organization":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: OrganizationInvitation.self, field: fieldName, value: fieldValue)
				}
				return try Organization(fields: value)

				case "role":
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrganizationInvitation.self, field: fieldName, value: fieldValue)
				}
				return OrganizationInvitationRole(rawValue: value) ?? .unknownValue

				default:
				throw SchemaViolationError(type: OrganizationInvitation.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "OrganizationInvitation" }

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var email: String? {
			return internalGetEmail()
		}

		func internalGetEmail(aliasSuffix: String? = nil) -> String? {
			return field(field: "email", aliasSuffix: aliasSuffix) as! String?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var invitationType: ExampleSchema.OrganizationInvitationType {
			return internalGetInvitationType()
		}

		func internalGetInvitationType(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationInvitationType {
			return field(field: "invitationType", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationInvitationType
		}

		open var invitee: ExampleSchema.User? {
			return internalGetInvitee()
		}

		func internalGetInvitee(aliasSuffix: String? = nil) -> ExampleSchema.User? {
			return field(field: "invitee", aliasSuffix: aliasSuffix) as! ExampleSchema.User?
		}

		open var inviter: ExampleSchema.User {
			return internalGetInviter()
		}

		func internalGetInviter(aliasSuffix: String? = nil) -> ExampleSchema.User {
			return field(field: "inviter", aliasSuffix: aliasSuffix) as! ExampleSchema.User
		}

		open var organization: ExampleSchema.Organization {
			return internalGetOrganization()
		}

		func internalGetOrganization(aliasSuffix: String? = nil) -> ExampleSchema.Organization {
			return field(field: "organization", aliasSuffix: aliasSuffix) as! ExampleSchema.Organization
		}

		open var role: ExampleSchema.OrganizationInvitationRole {
			return internalGetRole()
		}

		func internalGetRole(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationInvitationRole {
			return field(field: "role", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationInvitationRole
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "createdAt":

				return .scalar

				case "email":

				return .scalar

				case "id":

				return .scalar

				case "invitationType":

				return .scalar

				case "invitee":

				return .object

				case "inviter":

				return .object

				case "organization":

				return .object

				case "role":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "invitee":
				return internalGetInvitee()

				case "inviter":
				return internalGetInviter()

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
					case "invitee":
					if let value = internalGetInvitee() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "inviter":
					response.append(internalGetInviter())
					response.append(contentsOf: internalGetInviter().childResponseObjectMap())

					case "organization":
					response.append(internalGetOrganization())
					response.append(contentsOf: internalGetOrganization().childResponseObjectMap())

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
