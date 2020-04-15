// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class EnterpriseServerUserAccountsUploadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EnterpriseServerUserAccountsUpload

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> EnterpriseServerUserAccountsUploadQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func enterprise(aliasSuffix: String? = nil, _ subfields: (EnterpriseQuery) -> Void) -> EnterpriseServerUserAccountsUploadQuery {
			let subquery = EnterpriseQuery()
			subfields(subquery)

			addField(field: "enterprise", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func enterpriseServerInstallation(aliasSuffix: String? = nil, _ subfields: (EnterpriseServerInstallationQuery) -> Void) -> EnterpriseServerUserAccountsUploadQuery {
			let subquery = EnterpriseServerInstallationQuery()
			subfields(subquery)

			addField(field: "enterpriseServerInstallation", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> EnterpriseServerUserAccountsUploadQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> EnterpriseServerUserAccountsUploadQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func syncState(aliasSuffix: String? = nil) -> EnterpriseServerUserAccountsUploadQuery {
			addField(field: "syncState", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> EnterpriseServerUserAccountsUploadQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class EnterpriseServerUserAccountsUpload: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = EnterpriseServerUserAccountsUploadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseServerUserAccountsUpload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "enterprise":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseServerUserAccountsUpload.self, field: fieldName, value: fieldValue)
				}
				return try Enterprise(fields: value)

				case "enterpriseServerInstallation":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseServerUserAccountsUpload.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseServerInstallation(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseServerUserAccountsUpload.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseServerUserAccountsUpload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "syncState":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseServerUserAccountsUpload.self, field: fieldName, value: fieldValue)
				}
				return EnterpriseServerUserAccountsUploadSyncState(rawValue: value) ?? .unknownValue

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseServerUserAccountsUpload.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: EnterpriseServerUserAccountsUpload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EnterpriseServerUserAccountsUpload" }

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

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		open var syncState: ExampleSchema.EnterpriseServerUserAccountsUploadSyncState {
			return internalGetSyncState()
		}

		func internalGetSyncState(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseServerUserAccountsUploadSyncState {
			return field(field: "syncState", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseServerUserAccountsUploadSyncState
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

				case "enterprise":

				return .object

				case "enterpriseServerInstallation":

				return .object

				case "id":

				return .scalar

				case "name":

				return .scalar

				case "syncState":

				return .scalar

				case "updatedAt":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "enterprise":
				return internalGetEnterprise()

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
					case "enterprise":
					response.append(internalGetEnterprise())
					response.append(contentsOf: internalGetEnterprise().childResponseObjectMap())

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
