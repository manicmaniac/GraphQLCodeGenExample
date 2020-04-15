// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class EnterpriseQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Enterprise

		@discardableResult
		open func avatarUrl(aliasSuffix: String? = nil, size: Int32? = nil) -> EnterpriseQuery {
			var args: [String] = []

			if let size = size {
				args.append("size:\(size)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "avatarUrl", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func billingInfo(aliasSuffix: String? = nil, _ subfields: (EnterpriseBillingInfoQuery) -> Void) -> EnterpriseQuery {
			let subquery = EnterpriseBillingInfoQuery()
			subfields(subquery)

			addField(field: "billingInfo", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> EnterpriseQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> EnterpriseQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func description(aliasSuffix: String? = nil) -> EnterpriseQuery {
			addField(field: "description", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func descriptionHtml(aliasSuffix: String? = nil) -> EnterpriseQuery {
			addField(field: "descriptionHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> EnterpriseQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func location(aliasSuffix: String? = nil) -> EnterpriseQuery {
			addField(field: "location", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func members(aliasSuffix: String? = nil, organizationLogins: [String]? = nil, query: String? = nil, orderBy: EnterpriseMemberOrder? = nil, role: EnterpriseUserAccountMembershipRole? = nil, deployment: EnterpriseUserDeployment? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (EnterpriseMemberConnectionQuery) -> Void) -> EnterpriseQuery {
			var args: [String] = []

			if let organizationLogins = organizationLogins {
				args.append("organizationLogins:[\(organizationLogins.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let query = query {
				args.append("query:\(GraphQL.quoteString(input: query))")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			if let role = role {
				args.append("role:\(role.rawValue)")
			}

			if let deployment = deployment {
				args.append("deployment:\(deployment.rawValue)")
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

			let subquery = EnterpriseMemberConnectionQuery()
			subfields(subquery)

			addField(field: "members", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> EnterpriseQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func organizations(aliasSuffix: String? = nil, query: String? = nil, orderBy: OrganizationOrder? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (OrganizationConnectionQuery) -> Void) -> EnterpriseQuery {
			var args: [String] = []

			if let query = query {
				args.append("query:\(GraphQL.quoteString(input: query))")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
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

			let subquery = OrganizationConnectionQuery()
			subfields(subquery)

			addField(field: "organizations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func ownerInfo(aliasSuffix: String? = nil, _ subfields: (EnterpriseOwnerInfoQuery) -> Void) -> EnterpriseQuery {
			let subquery = EnterpriseOwnerInfoQuery()
			subfields(subquery)

			addField(field: "ownerInfo", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> EnterpriseQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func slug(aliasSuffix: String? = nil) -> EnterpriseQuery {
			addField(field: "slug", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> EnterpriseQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func userAccounts(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (EnterpriseUserAccountConnectionQuery) -> Void) -> EnterpriseQuery {
			var args: [String] = []

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

			let subquery = EnterpriseUserAccountConnectionQuery()
			subfields(subquery)

			addField(field: "userAccounts", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func viewerIsAdmin(aliasSuffix: String? = nil) -> EnterpriseQuery {
			addField(field: "viewerIsAdmin", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func websiteUrl(aliasSuffix: String? = nil) -> EnterpriseQuery {
			addField(field: "websiteUrl", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Enterprise: GraphQL.AbstractResponse, GraphQLObject, IpAllowListOwner, Node {
		public typealias Query = EnterpriseQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "avatarUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Enterprise.self, field: fieldName, value: fieldValue)
				}
				return value

				case "billingInfo":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Enterprise.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseBillingInfo(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Enterprise.self, field: fieldName, value: fieldValue)
				}
				return value

				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Enterprise.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "description":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Enterprise.self, field: fieldName, value: fieldValue)
				}
				return value

				case "descriptionHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Enterprise.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Enterprise.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "location":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Enterprise.self, field: fieldName, value: fieldValue)
				}
				return value

				case "members":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Enterprise.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseMemberConnection(fields: value)

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Enterprise.self, field: fieldName, value: fieldValue)
				}
				return value

				case "organizations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Enterprise.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationConnection(fields: value)

				case "ownerInfo":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Enterprise.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseOwnerInfo(fields: value)

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Enterprise.self, field: fieldName, value: fieldValue)
				}
				return value

				case "slug":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Enterprise.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Enterprise.self, field: fieldName, value: fieldValue)
				}
				return value

				case "userAccounts":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Enterprise.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseUserAccountConnection(fields: value)

				case "viewerIsAdmin":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Enterprise.self, field: fieldName, value: fieldValue)
				}
				return value

				case "websiteUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Enterprise.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Enterprise.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Enterprise" }

		open var avatarUrl: String {
			return internalGetAvatarUrl()
		}

		open func aliasedAvatarUrl(aliasSuffix: String) -> String {
			return internalGetAvatarUrl(aliasSuffix: aliasSuffix)
		}

		func internalGetAvatarUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "avatarUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var billingInfo: ExampleSchema.EnterpriseBillingInfo? {
			return internalGetBillingInfo()
		}

		func internalGetBillingInfo(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseBillingInfo? {
			return field(field: "billingInfo", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseBillingInfo?
		}

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var databaseId: Int32? {
			return internalGetDatabaseId()
		}

		func internalGetDatabaseId(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "databaseId", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var description: String? {
			return internalGetDescription()
		}

		func internalGetDescription(aliasSuffix: String? = nil) -> String? {
			return field(field: "description", aliasSuffix: aliasSuffix) as! String?
		}

		open var descriptionHtml: String {
			return internalGetDescriptionHtml()
		}

		func internalGetDescriptionHtml(aliasSuffix: String? = nil) -> String {
			return field(field: "descriptionHTML", aliasSuffix: aliasSuffix) as! String
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var location: String? {
			return internalGetLocation()
		}

		func internalGetLocation(aliasSuffix: String? = nil) -> String? {
			return field(field: "location", aliasSuffix: aliasSuffix) as! String?
		}

		open var members: ExampleSchema.EnterpriseMemberConnection {
			return internalGetMembers()
		}

		open func aliasedMembers(aliasSuffix: String) -> ExampleSchema.EnterpriseMemberConnection {
			return internalGetMembers(aliasSuffix: aliasSuffix)
		}

		func internalGetMembers(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseMemberConnection {
			return field(field: "members", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseMemberConnection
		}

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		open var organizations: ExampleSchema.OrganizationConnection {
			return internalGetOrganizations()
		}

		open func aliasedOrganizations(aliasSuffix: String) -> ExampleSchema.OrganizationConnection {
			return internalGetOrganizations(aliasSuffix: aliasSuffix)
		}

		func internalGetOrganizations(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationConnection {
			return field(field: "organizations", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationConnection
		}

		open var ownerInfo: ExampleSchema.EnterpriseOwnerInfo? {
			return internalGetOwnerInfo()
		}

		func internalGetOwnerInfo(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseOwnerInfo? {
			return field(field: "ownerInfo", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseOwnerInfo?
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var slug: String {
			return internalGetSlug()
		}

		func internalGetSlug(aliasSuffix: String? = nil) -> String {
			return field(field: "slug", aliasSuffix: aliasSuffix) as! String
		}

		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		open var userAccounts: ExampleSchema.EnterpriseUserAccountConnection {
			return internalGetUserAccounts()
		}

		open func aliasedUserAccounts(aliasSuffix: String) -> ExampleSchema.EnterpriseUserAccountConnection {
			return internalGetUserAccounts(aliasSuffix: aliasSuffix)
		}

		func internalGetUserAccounts(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseUserAccountConnection {
			return field(field: "userAccounts", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseUserAccountConnection
		}

		open var viewerIsAdmin: Bool {
			return internalGetViewerIsAdmin()
		}

		func internalGetViewerIsAdmin(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerIsAdmin", aliasSuffix: aliasSuffix) as! Bool
		}

		open var websiteUrl: String? {
			return internalGetWebsiteUrl()
		}

		func internalGetWebsiteUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "websiteUrl", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "avatarUrl":

				return .scalar

				case "billingInfo":

				return .object

				case "createdAt":

				return .scalar

				case "databaseId":

				return .scalar

				case "description":

				return .scalar

				case "descriptionHTML":

				return .scalar

				case "id":

				return .scalar

				case "location":

				return .scalar

				case "members":

				return .object

				case "name":

				return .scalar

				case "organizations":

				return .object

				case "ownerInfo":

				return .object

				case "resourcePath":

				return .scalar

				case "slug":

				return .scalar

				case "url":

				return .scalar

				case "userAccounts":

				return .object

				case "viewerIsAdmin":

				return .scalar

				case "websiteUrl":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "billingInfo":
				return internalGetBillingInfo()

				case "members":
				return internalGetMembers()

				case "organizations":
				return internalGetOrganizations()

				case "ownerInfo":
				return internalGetOwnerInfo()

				case "userAccounts":
				return internalGetUserAccounts()

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
					case "billingInfo":
					if let value = internalGetBillingInfo() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "members":
					response.append(internalGetMembers())
					response.append(contentsOf: internalGetMembers().childResponseObjectMap())

					case "organizations":
					response.append(internalGetOrganizations())
					response.append(contentsOf: internalGetOrganizations().childResponseObjectMap())

					case "ownerInfo":
					if let value = internalGetOwnerInfo() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "userAccounts":
					response.append(internalGetUserAccounts())
					response.append(contentsOf: internalGetUserAccounts().childResponseObjectMap())

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
