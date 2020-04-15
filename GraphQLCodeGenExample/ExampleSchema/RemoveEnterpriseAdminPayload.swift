// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RemoveEnterpriseAdminPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RemoveEnterpriseAdminPayload

		@discardableResult
		open func admin(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> RemoveEnterpriseAdminPayloadQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "admin", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> RemoveEnterpriseAdminPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func enterprise(aliasSuffix: String? = nil, _ subfields: (EnterpriseQuery) -> Void) -> RemoveEnterpriseAdminPayloadQuery {
			let subquery = EnterpriseQuery()
			subfields(subquery)

			addField(field: "enterprise", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func message(aliasSuffix: String? = nil) -> RemoveEnterpriseAdminPayloadQuery {
			addField(field: "message", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewer(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> RemoveEnterpriseAdminPayloadQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "viewer", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class RemoveEnterpriseAdminPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = RemoveEnterpriseAdminPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "admin":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RemoveEnterpriseAdminPayload.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: RemoveEnterpriseAdminPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "enterprise":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RemoveEnterpriseAdminPayload.self, field: fieldName, value: fieldValue)
				}
				return try Enterprise(fields: value)

				case "message":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: RemoveEnterpriseAdminPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewer":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RemoveEnterpriseAdminPayload.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				default:
				throw SchemaViolationError(type: RemoveEnterpriseAdminPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "RemoveEnterpriseAdminPayload" }

		open var admin: ExampleSchema.User? {
			return internalGetAdmin()
		}

		func internalGetAdmin(aliasSuffix: String? = nil) -> ExampleSchema.User? {
			return field(field: "admin", aliasSuffix: aliasSuffix) as! ExampleSchema.User?
		}

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var enterprise: ExampleSchema.Enterprise? {
			return internalGetEnterprise()
		}

		func internalGetEnterprise(aliasSuffix: String? = nil) -> ExampleSchema.Enterprise? {
			return field(field: "enterprise", aliasSuffix: aliasSuffix) as! ExampleSchema.Enterprise?
		}

		open var message: String? {
			return internalGetMessage()
		}

		func internalGetMessage(aliasSuffix: String? = nil) -> String? {
			return field(field: "message", aliasSuffix: aliasSuffix) as! String?
		}

		open var viewer: ExampleSchema.User? {
			return internalGetViewer()
		}

		func internalGetViewer(aliasSuffix: String? = nil) -> ExampleSchema.User? {
			return field(field: "viewer", aliasSuffix: aliasSuffix) as! ExampleSchema.User?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "admin":

				return .object

				case "clientMutationId":

				return .scalar

				case "enterprise":

				return .object

				case "message":

				return .scalar

				case "viewer":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "admin":
				return internalGetAdmin()

				case "enterprise":
				return internalGetEnterprise()

				case "viewer":
				return internalGetViewer()

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
					case "admin":
					if let value = internalGetAdmin() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "enterprise":
					if let value = internalGetEnterprise() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "viewer":
					if let value = internalGetViewer() {
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
