// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class EnterpriseServerUserAccountEmailQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EnterpriseServerUserAccountEmail

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> EnterpriseServerUserAccountEmailQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func email(aliasSuffix: String? = nil) -> EnterpriseServerUserAccountEmailQuery {
			addField(field: "email", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> EnterpriseServerUserAccountEmailQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isPrimary(aliasSuffix: String? = nil) -> EnterpriseServerUserAccountEmailQuery {
			addField(field: "isPrimary", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> EnterpriseServerUserAccountEmailQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func userAccount(aliasSuffix: String? = nil, _ subfields: (EnterpriseServerUserAccountQuery) -> Void) -> EnterpriseServerUserAccountEmailQuery {
			let subquery = EnterpriseServerUserAccountQuery()
			subfields(subquery)

			addField(field: "userAccount", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class EnterpriseServerUserAccountEmail: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = EnterpriseServerUserAccountEmailQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseServerUserAccountEmail.self, field: fieldName, value: fieldValue)
				}
				return value

				case "email":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseServerUserAccountEmail.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseServerUserAccountEmail.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "isPrimary":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: EnterpriseServerUserAccountEmail.self, field: fieldName, value: fieldValue)
				}
				return value

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseServerUserAccountEmail.self, field: fieldName, value: fieldValue)
				}
				return value

				case "userAccount":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseServerUserAccountEmail.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseServerUserAccount(fields: value)

				default:
				throw SchemaViolationError(type: EnterpriseServerUserAccountEmail.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EnterpriseServerUserAccountEmail" }

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var email: String {
			return internalGetEmail()
		}

		func internalGetEmail(aliasSuffix: String? = nil) -> String {
			return field(field: "email", aliasSuffix: aliasSuffix) as! String
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var isPrimary: Bool {
			return internalGetIsPrimary()
		}

		func internalGetIsPrimary(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isPrimary", aliasSuffix: aliasSuffix) as! Bool
		}

		open var updatedAt: String {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String
		}

		open var userAccount: ExampleSchema.EnterpriseServerUserAccount {
			return internalGetUserAccount()
		}

		func internalGetUserAccount(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseServerUserAccount {
			return field(field: "userAccount", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseServerUserAccount
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "createdAt":

				return .scalar

				case "email":

				return .scalar

				case "id":

				return .scalar

				case "isPrimary":

				return .scalar

				case "updatedAt":

				return .scalar

				case "userAccount":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "userAccount":
				return internalGetUserAccount()

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
					case "userAccount":
					response.append(internalGetUserAccount())
					response.append(contentsOf: internalGetUserAccount().childResponseObjectMap())

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
