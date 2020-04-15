// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RemoveStarPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RemoveStarPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> RemoveStarPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func starrable(aliasSuffix: String? = nil, _ subfields: (StarrableQuery) -> Void) -> RemoveStarPayloadQuery {
			let subquery = StarrableQuery()
			subfields(subquery)

			addField(field: "starrable", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class RemoveStarPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = RemoveStarPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: RemoveStarPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "starrable":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RemoveStarPayload.self, field: fieldName, value: fieldValue)
				}
				return try UnknownStarrable.create(fields: value)

				default:
				throw SchemaViolationError(type: RemoveStarPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "RemoveStarPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var starrable: Starrable? {
			return internalGetStarrable()
		}

		func internalGetStarrable(aliasSuffix: String? = nil) -> Starrable? {
			return field(field: "starrable", aliasSuffix: aliasSuffix) as! Starrable?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "starrable":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "starrable":
				return internalGetStarrable()?.responseObject()

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
					case "starrable":
					if let value = internalGetStarrable() {
						response.append(value as! GraphQL.AbstractResponse)
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
