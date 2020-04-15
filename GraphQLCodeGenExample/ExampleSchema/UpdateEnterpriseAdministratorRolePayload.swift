// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateEnterpriseAdministratorRolePayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UpdateEnterpriseAdministratorRolePayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> UpdateEnterpriseAdministratorRolePayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func message(aliasSuffix: String? = nil) -> UpdateEnterpriseAdministratorRolePayloadQuery {
			addField(field: "message", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class UpdateEnterpriseAdministratorRolePayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = UpdateEnterpriseAdministratorRolePayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UpdateEnterpriseAdministratorRolePayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "message":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UpdateEnterpriseAdministratorRolePayload.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UpdateEnterpriseAdministratorRolePayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UpdateEnterpriseAdministratorRolePayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var message: String? {
			return internalGetMessage()
		}

		func internalGetMessage(aliasSuffix: String? = nil) -> String? {
			return field(field: "message", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "message":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
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
			return []
		}

		open func responseObject() -> GraphQL.AbstractResponse {
			return self as GraphQL.AbstractResponse
		}
	}
}
