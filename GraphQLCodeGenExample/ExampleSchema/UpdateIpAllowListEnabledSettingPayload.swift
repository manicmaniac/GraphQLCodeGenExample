// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateIpAllowListEnabledSettingPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UpdateIpAllowListEnabledSettingPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> UpdateIpAllowListEnabledSettingPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func owner(aliasSuffix: String? = nil, _ subfields: (IpAllowListOwnerQuery) -> Void) -> UpdateIpAllowListEnabledSettingPayloadQuery {
			let subquery = IpAllowListOwnerQuery()
			subfields(subquery)

			addField(field: "owner", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class UpdateIpAllowListEnabledSettingPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = UpdateIpAllowListEnabledSettingPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UpdateIpAllowListEnabledSettingPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "owner":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UpdateIpAllowListEnabledSettingPayload.self, field: fieldName, value: fieldValue)
				}
				return try UnknownIpAllowListOwner.create(fields: value)

				default:
				throw SchemaViolationError(type: UpdateIpAllowListEnabledSettingPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UpdateIpAllowListEnabledSettingPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var owner: IpAllowListOwner? {
			return internalGetOwner()
		}

		func internalGetOwner(aliasSuffix: String? = nil) -> IpAllowListOwner? {
			return field(field: "owner", aliasSuffix: aliasSuffix) as! IpAllowListOwner?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "owner":

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
