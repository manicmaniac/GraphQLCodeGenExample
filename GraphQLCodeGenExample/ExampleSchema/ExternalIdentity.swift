// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ExternalIdentityQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ExternalIdentity

		@discardableResult
		open func guid(aliasSuffix: String? = nil) -> ExternalIdentityQuery {
			addField(field: "guid", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> ExternalIdentityQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func organizationInvitation(aliasSuffix: String? = nil, _ subfields: (OrganizationInvitationQuery) -> Void) -> ExternalIdentityQuery {
			let subquery = OrganizationInvitationQuery()
			subfields(subquery)

			addField(field: "organizationInvitation", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func samlIdentity(aliasSuffix: String? = nil, _ subfields: (ExternalIdentitySamlAttributesQuery) -> Void) -> ExternalIdentityQuery {
			let subquery = ExternalIdentitySamlAttributesQuery()
			subfields(subquery)

			addField(field: "samlIdentity", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func scimIdentity(aliasSuffix: String? = nil, _ subfields: (ExternalIdentityScimAttributesQuery) -> Void) -> ExternalIdentityQuery {
			let subquery = ExternalIdentityScimAttributesQuery()
			subfields(subquery)

			addField(field: "scimIdentity", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func user(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> ExternalIdentityQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class ExternalIdentity: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = ExternalIdentityQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "guid":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ExternalIdentity.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ExternalIdentity.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "organizationInvitation":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ExternalIdentity.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationInvitation(fields: value)

				case "samlIdentity":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ExternalIdentity.self, field: fieldName, value: fieldValue)
				}
				return try ExternalIdentitySamlAttributes(fields: value)

				case "scimIdentity":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ExternalIdentity.self, field: fieldName, value: fieldValue)
				}
				return try ExternalIdentityScimAttributes(fields: value)

				case "user":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ExternalIdentity.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				default:
				throw SchemaViolationError(type: ExternalIdentity.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ExternalIdentity" }

		open var guid: String {
			return internalGetGuid()
		}

		func internalGetGuid(aliasSuffix: String? = nil) -> String {
			return field(field: "guid", aliasSuffix: aliasSuffix) as! String
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var organizationInvitation: ExampleSchema.OrganizationInvitation? {
			return internalGetOrganizationInvitation()
		}

		func internalGetOrganizationInvitation(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationInvitation? {
			return field(field: "organizationInvitation", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationInvitation?
		}

		open var samlIdentity: ExampleSchema.ExternalIdentitySamlAttributes? {
			return internalGetSamlIdentity()
		}

		func internalGetSamlIdentity(aliasSuffix: String? = nil) -> ExampleSchema.ExternalIdentitySamlAttributes? {
			return field(field: "samlIdentity", aliasSuffix: aliasSuffix) as! ExampleSchema.ExternalIdentitySamlAttributes?
		}

		open var scimIdentity: ExampleSchema.ExternalIdentityScimAttributes? {
			return internalGetScimIdentity()
		}

		func internalGetScimIdentity(aliasSuffix: String? = nil) -> ExampleSchema.ExternalIdentityScimAttributes? {
			return field(field: "scimIdentity", aliasSuffix: aliasSuffix) as! ExampleSchema.ExternalIdentityScimAttributes?
		}

		open var user: ExampleSchema.User? {
			return internalGetUser()
		}

		func internalGetUser(aliasSuffix: String? = nil) -> ExampleSchema.User? {
			return field(field: "user", aliasSuffix: aliasSuffix) as! ExampleSchema.User?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "guid":

				return .scalar

				case "id":

				return .scalar

				case "organizationInvitation":

				return .object

				case "samlIdentity":

				return .object

				case "scimIdentity":

				return .object

				case "user":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "organizationInvitation":
				return internalGetOrganizationInvitation()

				case "samlIdentity":
				return internalGetSamlIdentity()

				case "scimIdentity":
				return internalGetScimIdentity()

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
					case "organizationInvitation":
					if let value = internalGetOrganizationInvitation() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "samlIdentity":
					if let value = internalGetSamlIdentity() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "scimIdentity":
					if let value = internalGetScimIdentity() {
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
