// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ChangeUserStatusPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ChangeUserStatusPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> ChangeUserStatusPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func status(aliasSuffix: String? = nil, _ subfields: (UserStatusQuery) -> Void) -> ChangeUserStatusPayloadQuery {
			let subquery = UserStatusQuery()
			subfields(subquery)

			addField(field: "status", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class ChangeUserStatusPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = ChangeUserStatusPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ChangeUserStatusPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "status":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ChangeUserStatusPayload.self, field: fieldName, value: fieldValue)
				}
				return try UserStatus(fields: value)

				default:
				throw SchemaViolationError(type: ChangeUserStatusPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ChangeUserStatusPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var status: ExampleSchema.UserStatus? {
			return internalGetStatus()
		}

		func internalGetStatus(aliasSuffix: String? = nil) -> ExampleSchema.UserStatus? {
			return field(field: "status", aliasSuffix: aliasSuffix) as! ExampleSchema.UserStatus?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "status":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "status":
				return internalGetStatus()

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
					case "status":
					if let value = internalGetStatus() {
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
