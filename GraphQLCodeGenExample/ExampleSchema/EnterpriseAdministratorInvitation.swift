// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class EnterpriseAdministratorInvitationQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EnterpriseAdministratorInvitation

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> EnterpriseAdministratorInvitationQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func email(aliasSuffix: String? = nil) -> EnterpriseAdministratorInvitationQuery {
			addField(field: "email", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func enterprise(aliasSuffix: String? = nil, _ subfields: (EnterpriseQuery) -> Void) -> EnterpriseAdministratorInvitationQuery {
			let subquery = EnterpriseQuery()
			subfields(subquery)

			addField(field: "enterprise", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> EnterpriseAdministratorInvitationQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func invitee(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> EnterpriseAdministratorInvitationQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "invitee", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func inviter(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> EnterpriseAdministratorInvitationQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "inviter", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func role(aliasSuffix: String? = nil) -> EnterpriseAdministratorInvitationQuery {
			addField(field: "role", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class EnterpriseAdministratorInvitation: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = EnterpriseAdministratorInvitationQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseAdministratorInvitation.self, field: fieldName, value: fieldValue)
				}
				return value

				case "email":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseAdministratorInvitation.self, field: fieldName, value: fieldValue)
				}
				return value

				case "enterprise":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseAdministratorInvitation.self, field: fieldName, value: fieldValue)
				}
				return try Enterprise(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseAdministratorInvitation.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "invitee":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseAdministratorInvitation.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				case "inviter":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseAdministratorInvitation.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				case "role":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseAdministratorInvitation.self, field: fieldName, value: fieldValue)
				}
				return EnterpriseAdministratorRole(rawValue: value) ?? .unknownValue

				default:
				throw SchemaViolationError(type: EnterpriseAdministratorInvitation.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EnterpriseAdministratorInvitation" }

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

		open var enterprise: ExampleSchema.Enterprise {
			return internalGetEnterprise()
		}

		func internalGetEnterprise(aliasSuffix: String? = nil) -> ExampleSchema.Enterprise {
			return field(field: "enterprise", aliasSuffix: aliasSuffix) as! ExampleSchema.Enterprise
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var invitee: ExampleSchema.User? {
			return internalGetInvitee()
		}

		func internalGetInvitee(aliasSuffix: String? = nil) -> ExampleSchema.User? {
			return field(field: "invitee", aliasSuffix: aliasSuffix) as! ExampleSchema.User?
		}

		open var inviter: ExampleSchema.User? {
			return internalGetInviter()
		}

		func internalGetInviter(aliasSuffix: String? = nil) -> ExampleSchema.User? {
			return field(field: "inviter", aliasSuffix: aliasSuffix) as! ExampleSchema.User?
		}

		open var role: ExampleSchema.EnterpriseAdministratorRole {
			return internalGetRole()
		}

		func internalGetRole(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseAdministratorRole {
			return field(field: "role", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseAdministratorRole
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "createdAt":

				return .scalar

				case "email":

				return .scalar

				case "enterprise":

				return .object

				case "id":

				return .scalar

				case "invitee":

				return .object

				case "inviter":

				return .object

				case "role":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "enterprise":
				return internalGetEnterprise()

				case "invitee":
				return internalGetInvitee()

				case "inviter":
				return internalGetInviter()

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
					case "enterprise":
					response.append(internalGetEnterprise())
					response.append(contentsOf: internalGetEnterprise().childResponseObjectMap())

					case "invitee":
					if let value = internalGetInvitee() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "inviter":
					if let value = internalGetInviter() {
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
