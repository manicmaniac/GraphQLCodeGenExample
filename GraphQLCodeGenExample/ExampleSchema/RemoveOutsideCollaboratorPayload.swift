// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RemoveOutsideCollaboratorPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RemoveOutsideCollaboratorPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> RemoveOutsideCollaboratorPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func removedUser(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> RemoveOutsideCollaboratorPayloadQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "removedUser", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class RemoveOutsideCollaboratorPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = RemoveOutsideCollaboratorPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: RemoveOutsideCollaboratorPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "removedUser":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RemoveOutsideCollaboratorPayload.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				default:
				throw SchemaViolationError(type: RemoveOutsideCollaboratorPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "RemoveOutsideCollaboratorPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var removedUser: ExampleSchema.User? {
			return internalGetRemovedUser()
		}

		func internalGetRemovedUser(aliasSuffix: String? = nil) -> ExampleSchema.User? {
			return field(field: "removedUser", aliasSuffix: aliasSuffix) as! ExampleSchema.User?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "removedUser":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "removedUser":
				return internalGetRemovedUser()

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
					case "removedUser":
					if let value = internalGetRemovedUser() {
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
