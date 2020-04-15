// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class AcceptEnterpriseAdministratorInvitationPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = AcceptEnterpriseAdministratorInvitationPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> AcceptEnterpriseAdministratorInvitationPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func invitation(aliasSuffix: String? = nil, _ subfields: (EnterpriseAdministratorInvitationQuery) -> Void) -> AcceptEnterpriseAdministratorInvitationPayloadQuery {
			let subquery = EnterpriseAdministratorInvitationQuery()
			subfields(subquery)

			addField(field: "invitation", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func message(aliasSuffix: String? = nil) -> AcceptEnterpriseAdministratorInvitationPayloadQuery {
			addField(field: "message", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class AcceptEnterpriseAdministratorInvitationPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = AcceptEnterpriseAdministratorInvitationPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: AcceptEnterpriseAdministratorInvitationPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "invitation":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: AcceptEnterpriseAdministratorInvitationPayload.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseAdministratorInvitation(fields: value)

				case "message":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: AcceptEnterpriseAdministratorInvitationPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: AcceptEnterpriseAdministratorInvitationPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "AcceptEnterpriseAdministratorInvitationPayload" }

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

				case "invitation":

				return .object

				case "message":

				return .scalar

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
