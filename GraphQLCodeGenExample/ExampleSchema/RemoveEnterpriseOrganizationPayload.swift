// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RemoveEnterpriseOrganizationPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RemoveEnterpriseOrganizationPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> RemoveEnterpriseOrganizationPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func enterprise(aliasSuffix: String? = nil, _ subfields: (EnterpriseQuery) -> Void) -> RemoveEnterpriseOrganizationPayloadQuery {
			let subquery = EnterpriseQuery()
			subfields(subquery)

			addField(field: "enterprise", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func organization(aliasSuffix: String? = nil, _ subfields: (OrganizationQuery) -> Void) -> RemoveEnterpriseOrganizationPayloadQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)

			addField(field: "organization", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func viewer(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> RemoveEnterpriseOrganizationPayloadQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "viewer", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class RemoveEnterpriseOrganizationPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = RemoveEnterpriseOrganizationPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: RemoveEnterpriseOrganizationPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "enterprise":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RemoveEnterpriseOrganizationPayload.self, field: fieldName, value: fieldValue)
				}
				return try Enterprise(fields: value)

				case "organization":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RemoveEnterpriseOrganizationPayload.self, field: fieldName, value: fieldValue)
				}
				return try Organization(fields: value)

				case "viewer":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RemoveEnterpriseOrganizationPayload.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				default:
				throw SchemaViolationError(type: RemoveEnterpriseOrganizationPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "RemoveEnterpriseOrganizationPayload" }

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

		open var organization: ExampleSchema.Organization? {
			return internalGetOrganization()
		}

		func internalGetOrganization(aliasSuffix: String? = nil) -> ExampleSchema.Organization? {
			return field(field: "organization", aliasSuffix: aliasSuffix) as! ExampleSchema.Organization?
		}

		open var viewer: ExampleSchema.User? {
			return internalGetViewer()
		}

		func internalGetViewer(aliasSuffix: String? = nil) -> ExampleSchema.User? {
			return field(field: "viewer", aliasSuffix: aliasSuffix) as! ExampleSchema.User?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "enterprise":

				return .object

				case "organization":

				return .object

				case "viewer":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "enterprise":
				return internalGetEnterprise()

				case "organization":
				return internalGetOrganization()

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
					case "enterprise":
					if let value = internalGetEnterprise() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "organization":
					if let value = internalGetOrganization() {
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
