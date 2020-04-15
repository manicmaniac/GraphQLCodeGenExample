// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CreateIpAllowListEntryPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = CreateIpAllowListEntryPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> CreateIpAllowListEntryPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func ipAllowListEntry(aliasSuffix: String? = nil, _ subfields: (IpAllowListEntryQuery) -> Void) -> CreateIpAllowListEntryPayloadQuery {
			let subquery = IpAllowListEntryQuery()
			subfields(subquery)

			addField(field: "ipAllowListEntry", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class CreateIpAllowListEntryPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = CreateIpAllowListEntryPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: CreateIpAllowListEntryPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "ipAllowListEntry":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: CreateIpAllowListEntryPayload.self, field: fieldName, value: fieldValue)
				}
				return try IpAllowListEntry(fields: value)

				default:
				throw SchemaViolationError(type: CreateIpAllowListEntryPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "CreateIpAllowListEntryPayload" }

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
