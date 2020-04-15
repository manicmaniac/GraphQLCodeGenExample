// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class EnterpriseServerUserAccountQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EnterpriseServerUserAccount

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> EnterpriseServerUserAccountQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func emails(aliasSuffix: String? = nil, orderBy: EnterpriseServerUserAccountEmailOrder? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (EnterpriseServerUserAccountEmailConnectionQuery) -> Void) -> EnterpriseServerUserAccountQuery {
			var args: [String] = []

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

			let subquery = EnterpriseServerUserAccountEmailConnectionQuery()
			subfields(subquery)

			addField(field: "emails", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func enterpriseServerInstallation(aliasSuffix: String? = nil, _ subfields: (EnterpriseServerInstallationQuery) -> Void) -> EnterpriseServerUserAccountQuery {
			let subquery = EnterpriseServerInstallationQuery()
			subfields(subquery)

			addField(field: "enterpriseServerInstallation", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> EnterpriseServerUserAccountQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isSiteAdmin(aliasSuffix: String? = nil) -> EnterpriseServerUserAccountQuery {
			addField(field: "isSiteAdmin", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func login(aliasSuffix: String? = nil) -> EnterpriseServerUserAccountQuery {
			addField(field: "login", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func profileName(aliasSuffix: String? = nil) -> EnterpriseServerUserAccountQuery {
			addField(field: "profileName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func remoteCreatedAt(aliasSuffix: String? = nil) -> EnterpriseServerUserAccountQuery {
			addField(field: "remoteCreatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func remoteUserId(aliasSuffix: String? = nil) -> EnterpriseServerUserAccountQuery {
			addField(field: "remoteUserId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> EnterpriseServerUserAccountQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class EnterpriseServerUserAccount: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = EnterpriseServerUserAccountQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseServerUserAccount.self, field: fieldName, value: fieldValue)
				}
				return value

				case "emails":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseServerUserAccount.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseServerUserAccountEmailConnection(fields: value)

				case "enterpriseServerInstallation":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseServerUserAccount.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseServerInstallation(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseServerUserAccount.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "isSiteAdmin":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: EnterpriseServerUserAccount.self, field: fieldName, value: fieldValue)
				}
				return value

				case "login":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseServerUserAccount.self, field: fieldName, value: fieldValue)
				}
				return value

				case "profileName":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseServerUserAccount.self, field: fieldName, value: fieldValue)
				}
				return value

				case "remoteCreatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseServerUserAccount.self, field: fieldName, value: fieldValue)
				}
				return value

				case "remoteUserId":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: EnterpriseServerUserAccount.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseServerUserAccount.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: EnterpriseServerUserAccount.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EnterpriseServerUserAccount" }

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var emails: ExampleSchema.EnterpriseServerUserAccountEmailConnection {
			return internalGetEmails()
		}

		open func aliasedEmails(aliasSuffix: String) -> ExampleSchema.EnterpriseServerUserAccountEmailConnection {
			return internalGetEmails(aliasSuffix: aliasSuffix)
		}

		func internalGetEmails(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseServerUserAccountEmailConnection {
			return field(field: "emails", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseServerUserAccountEmailConnection
		}

		open var enterpriseServerInstallation: ExampleSchema.EnterpriseServerInstallation {
			return internalGetEnterpriseServerInstallation()
		}

		func internalGetEnterpriseServerInstallation(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseServerInstallation {
			return field(field: "enterpriseServerInstallation", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseServerInstallation
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var isSiteAdmin: Bool {
			return internalGetIsSiteAdmin()
		}

		func internalGetIsSiteAdmin(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isSiteAdmin", aliasSuffix: aliasSuffix) as! Bool
		}

		open var login: String {
			return internalGetLogin()
		}

		func internalGetLogin(aliasSuffix: String? = nil) -> String {
			return field(field: "login", aliasSuffix: aliasSuffix) as! String
		}

		open var profileName: String? {
			return internalGetProfileName()
		}

		func internalGetProfileName(aliasSuffix: String? = nil) -> String? {
			return field(field: "profileName", aliasSuffix: aliasSuffix) as! String?
		}

		open var remoteCreatedAt: String {
			return internalGetRemoteCreatedAt()
		}

		func internalGetRemoteCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "remoteCreatedAt", aliasSuffix: aliasSuffix) as! String
		}

		open var remoteUserId: Int32 {
			return internalGetRemoteUserId()
		}

		func internalGetRemoteUserId(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "remoteUserId", aliasSuffix: aliasSuffix) as! Int32
		}

		open var updatedAt: String {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "createdAt":

				return .scalar

				case "emails":

				return .object

				case "enterpriseServerInstallation":

				return .object

				case "id":

				return .scalar

				case "isSiteAdmin":

				return .scalar

				case "login":

				return .scalar

				case "profileName":

				return .scalar

				case "remoteCreatedAt":

				return .scalar

				case "remoteUserId":

				return .scalar

				case "updatedAt":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "emails":
				return internalGetEmails()

				case "enterpriseServerInstallation":
				return internalGetEnterpriseServerInstallation()

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
					case "emails":
					response.append(internalGetEmails())
					response.append(contentsOf: internalGetEmails().childResponseObjectMap())

					case "enterpriseServerInstallation":
					response.append(internalGetEnterpriseServerInstallation())
					response.append(contentsOf: internalGetEnterpriseServerInstallation().childResponseObjectMap())

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
