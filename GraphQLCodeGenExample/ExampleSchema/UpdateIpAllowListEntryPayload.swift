// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateIpAllowListEntryPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UpdateIpAllowListEntryPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> UpdateIpAllowListEntryPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func ipAllowListEntry(aliasSuffix: String? = nil, _ subfields: (IpAllowListEntryQuery) -> Void) -> UpdateIpAllowListEntryPayloadQuery {
			let subquery = IpAllowListEntryQuery()
			subfields(subquery)

			addField(field: "ipAllowListEntry", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class UpdateIpAllowListEntryPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = UpdateIpAllowListEntryPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UpdateIpAllowListEntryPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "ipAllowListEntry":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UpdateIpAllowListEntryPayload.self, field: fieldName, value: fieldValue)
				}
				return try IpAllowListEntry(fields: value)

				default:
				throw SchemaViolationError(type: UpdateIpAllowListEntryPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UpdateIpAllowListEntryPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var ipAllowListEntry: ExampleSchema.IpAllowListEntry? {
			return internalGetIpAllowListEntry()
		}

		func internalGetIpAllowListEntry(aliasSuffix: String? = nil) -> ExampleSchema.IpAllowListEntry? {
			return field(field: "ipAllowListEntry", aliasSuffix: aliasSuffix) as! ExampleSchema.IpAllowListEntry?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "ipAllowListEntry":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "ipAllowListEntry":
				return internalGetIpAllowListEntry()

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
					case "ipAllowListEntry":
					if let value = internalGetIpAllowListEntry() {
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
