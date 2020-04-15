// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class EnterpriseUserAccountQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EnterpriseUserAccount

		@discardableResult
		open func avatarUrl(aliasSuffix: String? = nil, size: Int32? = nil) -> EnterpriseUserAccountQuery {
			var args: [String] = []

			if let size = size {
				args.append("size:\(size)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "avatarUrl", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> EnterpriseUserAccountQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func enterprise(aliasSuffix: String? = nil, _ subfields: (EnterpriseQuery) -> Void) -> EnterpriseUserAccountQuery {
			let subquery = EnterpriseQuery()
			subfields(subquery)

			addField(field: "enterprise", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> EnterpriseUserAccountQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func login(aliasSuffix: String? = nil) -> EnterpriseUserAccountQuery {
			addField(field: "login", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> EnterpriseUserAccountQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func organizations(aliasSuffix: String? = nil, query: String? = nil, orderBy: OrganizationOrder? = nil, role: EnterpriseUserAccountMembershipRole? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (EnterpriseOrganizationMembershipConnectionQuery) -> Void) -> EnterpriseUserAccountQuery {
			var args: [String] = []

			if let query = query {
				args.append("query:\(GraphQL.quoteString(input: query))")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			if let role = role {
				args.append("role:\(role.rawValue)")
			}

			if let after = after {
				args.append("after:\(GraphQL.quoteString(input: after))")
			}

			if let before = before {
				args.append("before:\(GraphQL.quoteString(input: before))")
			}

			if let first = first {
				args.append("first:\(first)")
			}

			if let last = last {
				args.append("last:\(last)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = EnterpriseOrganizationMembershipConnectionQuery()
			subfields(subquery)

			addField(field: "organizations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> EnterpriseUserAccountQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> EnterpriseUserAccountQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> EnterpriseUserAccountQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func user(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> EnterpriseUserAccountQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class EnterpriseUserAccount: GraphQL.AbstractResponse, GraphQLObject, Actor, EnterpriseMember, Node {
		public typealias Query = EnterpriseUserAccountQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "avatarUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseUserAccount.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseUserAccount.self, field: fieldName, value: fieldValue)
				}
				return value

				case "enterprise":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseUserAccount.self, field: fieldName, value: fieldValue)
				}
				return try Enterprise(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseUserAccount.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "login":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseUserAccount.self, field: fieldName, value: fieldValue)
				}
				return value

				case "name":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseUserAccount.self, field: fieldName, value: fieldValue)
				}
				return value

				case "organizations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseUserAccount.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseOrganizationMembershipConnection(fields: value)

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseUserAccount.self, field: fieldName, value: fieldValue)
				}
				return value

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseUserAccount.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseUserAccount.self, field: fieldName, value: fieldValue)
				}
				return value

				case "user":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseUserAccount.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				default:
				throw SchemaViolationError(type: EnterpriseUserAccount.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EnterpriseUserAccount" }

		open var avatarUrl: String {
			return internalGetAvatarUrl()
		}

		open func aliasedAvatarUrl(aliasSuffix: String) -> String {
			return internalGetAvatarUrl(aliasSuffix: aliasSuffix)
		}

		func internalGetAvatarUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "avatarUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
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

		open var login: String {
			return internalGetLogin()
		}

		func internalGetLogin(aliasSuffix: String? = nil) -> String {
			return field(field: "login", aliasSuffix: aliasSuffix) as! String
		}

		open var name: String? {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String? {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String?
		}

		open var organizations: ExampleSchema.EnterpriseOrganizationMembershipConnection {
			return internalGetOrganizations()
		}

		open func aliasedOrganizations(aliasSuffix: String) -> ExampleSchema.EnterpriseOrganizationMembershipConnection {
			return internalGetOrganizations(aliasSuffix: aliasSuffix)
		}

		func internalGetOrganizations(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseOrganizationMembershipConnection {
			return field(field: "organizations", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseOrganizationMembershipConnection
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var updatedAt: String {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String
		}

		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		open var user: ExampleSchema.User? {
			return internalGetUser()
		}

		func internalGetUser(aliasSuffix: String? = nil) -> ExampleSchema.User? {
			return field(field: "user", aliasSuffix: aliasSuffix) as! ExampleSchema.User?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "avatarUrl":

				return .scalar

				case "createdAt":

				return .scalar

				case "enterprise":

				return .object

				case "id":

				return .scalar

				case "login":

				return .scalar

				case "name":

				return .scalar

				case "organizations":

				return .object

				case "resourcePath":

				return .scalar

				case "updatedAt":

				return .scalar

				case "url":

				return .scalar

				case "user":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "enterprise":
				return internalGetEnterprise()

				case "organizations":
				return internalGetOrganizations()

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
					case "enterprise":
					response.append(internalGetEnterprise())
					response.append(contentsOf: internalGetEnterprise().childResponseObjectMap())

					case "organizations":
					response.append(internalGetOrganizations())
					response.append(contentsOf: internalGetOrganizations().childResponseObjectMap())

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
