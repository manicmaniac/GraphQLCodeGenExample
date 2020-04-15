// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class DeleteProjectPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = DeleteProjectPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> DeleteProjectPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func owner(aliasSuffix: String? = nil, _ subfields: (ProjectOwnerQuery) -> Void) -> DeleteProjectPayloadQuery {
			let subquery = ProjectOwnerQuery()
			subfields(subquery)

			addField(field: "owner", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class DeleteProjectPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = DeleteProjectPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeleteProjectPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "owner":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: DeleteProjectPayload.self, field: fieldName, value: fieldValue)
				}
				return try UnknownProjectOwner.create(fields: value)

				default:
				throw SchemaViolationError(type: DeleteProjectPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "DeleteProjectPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var owner: ProjectOwner? {
			return internalGetOwner()
		}

		func internalGetOwner(aliasSuffix: String? = nil) -> ProjectOwner? {
			return field(field: "owner", aliasSuffix: aliasSuffix) as! ProjectOwner?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "owner":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "owner":
				return internalGetOwner()?.responseObject()

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
					case "owner":
					if let value = internalGetOwner() {
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
