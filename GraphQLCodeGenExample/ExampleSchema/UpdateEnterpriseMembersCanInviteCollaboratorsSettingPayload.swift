// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateEnterpriseMembersCanInviteCollaboratorsSettingPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UpdateEnterpriseMembersCanInviteCollaboratorsSettingPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> UpdateEnterpriseMembersCanInviteCollaboratorsSettingPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func enterprise(aliasSuffix: String? = nil, _ subfields: (EnterpriseQuery) -> Void) -> UpdateEnterpriseMembersCanInviteCollaboratorsSettingPayloadQuery {
			let subquery = EnterpriseQuery()
			subfields(subquery)

			addField(field: "enterprise", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func message(aliasSuffix: String? = nil) -> UpdateEnterpriseMembersCanInviteCollaboratorsSettingPayloadQuery {
			addField(field: "message", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class UpdateEnterpriseMembersCanInviteCollaboratorsSettingPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = UpdateEnterpriseMembersCanInviteCollaboratorsSettingPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UpdateEnterpriseMembersCanInviteCollaboratorsSettingPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "enterprise":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UpdateEnterpriseMembersCanInviteCollaboratorsSettingPayload.self, field: fieldName, value: fieldValue)
				}
				return try Enterprise(fields: value)

				case "message":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UpdateEnterpriseMembersCanInviteCollaboratorsSettingPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UpdateEnterpriseMembersCanInviteCollaboratorsSettingPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UpdateEnterpriseMembersCanInviteCollaboratorsSettingPayload" }

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

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "enterprise":

				return .object

				case "message":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "enterprise":
				return internalGetEnterprise()

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
					if let value = internalGetEnterprise() {
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
