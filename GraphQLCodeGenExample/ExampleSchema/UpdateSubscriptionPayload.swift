// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateSubscriptionPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UpdateSubscriptionPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> UpdateSubscriptionPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func subscribable(aliasSuffix: String? = nil, _ subfields: (SubscribableQuery) -> Void) -> UpdateSubscriptionPayloadQuery {
			let subquery = SubscribableQuery()
			subfields(subquery)

			addField(field: "subscribable", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class UpdateSubscriptionPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = UpdateSubscriptionPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UpdateSubscriptionPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "subscribable":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UpdateSubscriptionPayload.self, field: fieldName, value: fieldValue)
				}
				return try UnknownSubscribable.create(fields: value)

				default:
				throw SchemaViolationError(type: UpdateSubscriptionPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UpdateSubscriptionPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var subscribable: Subscribable? {
			return internalGetSubscribable()
		}

		func internalGetSubscribable(aliasSuffix: String? = nil) -> Subscribable? {
			return field(field: "subscribable", aliasSuffix: aliasSuffix) as! Subscribable?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "subscribable":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "subscribable":
				return internalGetSubscribable()?.responseObject()

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
					case "subscribable":
					if let value = internalGetSubscribable() {
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
