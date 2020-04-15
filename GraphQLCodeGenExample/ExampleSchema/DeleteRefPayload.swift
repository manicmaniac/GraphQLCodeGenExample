// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class DeleteRefPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = DeleteRefPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> DeleteRefPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class DeleteRefPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = DeleteRefPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeleteRefPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: DeleteRefPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "DeleteRefPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

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
