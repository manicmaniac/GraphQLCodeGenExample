// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class SetEnterpriseIdentityProviderPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SetEnterpriseIdentityProviderPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> SetEnterpriseIdentityProviderPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func identityProvider(aliasSuffix: String? = nil, _ subfields: (EnterpriseIdentityProviderQuery) -> Void) -> SetEnterpriseIdentityProviderPayloadQuery {
			let subquery = EnterpriseIdentityProviderQuery()
			subfields(subquery)

			addField(field: "identityProvider", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class SetEnterpriseIdentityProviderPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = SetEnterpriseIdentityProviderPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: SetEnterpriseIdentityProviderPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "identityProvider":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SetEnterpriseIdentityProviderPayload.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseIdentityProvider(fields: value)

				default:
				throw SchemaViolationError(type: SetEnterpriseIdentityProviderPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "SetEnterpriseIdentityProviderPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var identityProvider: ExampleSchema.EnterpriseIdentityProvider? {
			return internalGetIdentityProvider()
		}

		func internalGetIdentityProvider(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseIdentityProvider? {
			return field(field: "identityProvider", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseIdentityProvider?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "identityProvider":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "identityProvider":
				return internalGetIdentityProvider()

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
					case "identityProvider":
					if let value = internalGetIdentityProvider() {
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
