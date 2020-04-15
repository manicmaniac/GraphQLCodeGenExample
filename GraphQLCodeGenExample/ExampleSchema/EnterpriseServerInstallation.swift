// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class EnterpriseServerInstallationQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EnterpriseServerInstallation

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> EnterpriseServerInstallationQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func customerName(aliasSuffix: String? = nil) -> EnterpriseServerInstallationQuery {
			addField(field: "customerName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func hostName(aliasSuffix: String? = nil) -> EnterpriseServerInstallationQuery {
			addField(field: "hostName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> EnterpriseServerInstallationQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isConnected(aliasSuffix: String? = nil) -> EnterpriseServerInstallationQuery {
			addField(field: "isConnected", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> EnterpriseServerInstallationQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func userAccounts(aliasSuffix: String? = nil, orderBy: EnterpriseServerUserAccountOrder? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (EnterpriseServerUserAccountConnectionQuery) -> Void) -> EnterpriseServerInstallationQuery {
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

			let subquery = EnterpriseServerUserAccountConnectionQuery()
			subfields(subquery)

			addField(field: "userAccounts", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func userAccountsUploads(aliasSuffix: String? = nil, orderBy: EnterpriseServerUserAccountsUploadOrder? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (EnterpriseServerUserAccountsUploadConnectionQuery) -> Void) -> EnterpriseServerInstallationQuery {
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

			let subquery = EnterpriseServerUserAccountsUploadConnectionQuery()
			subfields(subquery)

			addField(field: "userAccountsUploads", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}
	}

	open class EnterpriseServerInstallation: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = EnterpriseServerInstallationQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseServerInstallation.self, field: fieldName, value: fieldValue)
				}
				return value

				case "customerName":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseServerInstallation.self, field: fieldName, value: fieldValue)
				}
				return value

				case "hostName":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseServerInstallation.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseServerInstallation.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "isConnected":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: EnterpriseServerInstallation.self, field: fieldName, value: fieldValue)
				}
				return value

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseServerInstallation.self, field: fieldName, value: fieldValue)
				}
				return value

				case "userAccounts":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseServerInstallation.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseServerUserAccountConnection(fields: value)

				case "userAccountsUploads":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseServerInstallation.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseServerUserAccountsUploadConnection(fields: value)

				default:
				throw SchemaViolationError(type: EnterpriseServerInstallation.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EnterpriseServerInstallation" }

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var customerName: String {
			return internalGetCustomerName()
		}

		func internalGetCustomerName(aliasSuffix: String? = nil) -> String {
			return field(field: "customerName", aliasSuffix: aliasSuffix) as! String
		}

		open var hostName: String {
			return internalGetHostName()
		}

		func internalGetHostName(aliasSuffix: String? = nil) -> String {
			return field(field: "hostName", aliasSuffix: aliasSuffix) as! String
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var isConnected: Bool {
			return internalGetIsConnected()
		}

		func internalGetIsConnected(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isConnected", aliasSuffix: aliasSuffix) as! Bool
		}

		open var updatedAt: String {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String
		}

		open var userAccounts: ExampleSchema.EnterpriseServerUserAccountConnection {
			return internalGetUserAccounts()
		}

		open func aliasedUserAccounts(aliasSuffix: String) -> ExampleSchema.EnterpriseServerUserAccountConnection {
			return internalGetUserAccounts(aliasSuffix: aliasSuffix)
		}

		func internalGetUserAccounts(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseServerUserAccountConnection {
			return field(field: "userAccounts", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseServerUserAccountConnection
		}

		open var userAccountsUploads: ExampleSchema.EnterpriseServerUserAccountsUploadConnection {
			return internalGetUserAccountsUploads()
		}

		open func aliasedUserAccountsUploads(aliasSuffix: String) -> ExampleSchema.EnterpriseServerUserAccountsUploadConnection {
			return internalGetUserAccountsUploads(aliasSuffix: aliasSuffix)
		}

		func internalGetUserAccountsUploads(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseServerUserAccountsUploadConnection {
			return field(field: "userAccountsUploads", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseServerUserAccountsUploadConnection
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "createdAt":

				return .scalar

				case "customerName":

				return .scalar

				case "hostName":

				return .scalar

				case "id":

				return .scalar

				case "isConnected":

				return .scalar

				case "updatedAt":

				return .scalar

				case "userAccounts":

				return .object

				case "userAccountsUploads":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "userAccounts":
				return internalGetUserAccounts()

				case "userAccountsUploads":
				return internalGetUserAccountsUploads()

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
					case "userAccounts":
					response.append(internalGetUserAccounts())
					response.append(contentsOf: internalGetUserAccounts().childResponseObjectMap())

					case "userAccountsUploads":
					response.append(internalGetUserAccountsUploads())
					response.append(contentsOf: internalGetUserAccountsUploads().childResponseObjectMap())

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
