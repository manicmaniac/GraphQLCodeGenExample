// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class InviteEnterpriseAdminPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = InviteEnterpriseAdminPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> InviteEnterpriseAdminPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func invitation(aliasSuffix: String? = nil, _ subfields: (EnterpriseAdministratorInvitationQuery) -> Void) -> InviteEnterpriseAdminPayloadQuery {
			let subquery = EnterpriseAdministratorInvitationQuery()
			subfields(subquery)

			addField(field: "invitation", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class InviteEnterpriseAdminPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = InviteEnterpriseAdminPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: InviteEnterpriseAdminPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "invitation":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: InviteEnterpriseAdminPayload.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseAdministratorInvitation(fields: value)

				default:
				throw SchemaViolationError(type: InviteEnterpriseAdminPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "InviteEnterpriseAdminPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var invitation: ExampleSchema.EnterpriseAdministratorInvitation? {
			return internalGetInvitation()
		}

		func internalGetInvitation(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseAdministratorInvitation? {
			return field(field: "invitation", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseAdministratorInvitation?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "invitation":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "invitation":
				return internalGetInvitation()

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
					case "invitation":
					if let value = internalGetInvitation() {
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
