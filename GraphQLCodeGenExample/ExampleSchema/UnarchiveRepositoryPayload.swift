// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UnarchiveRepositoryPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UnarchiveRepositoryPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> UnarchiveRepositoryPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> UnarchiveRepositoryPayloadQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class UnarchiveRepositoryPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = UnarchiveRepositoryPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnarchiveRepositoryPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "repository":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnarchiveRepositoryPayload.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				default:
				throw SchemaViolationError(type: UnarchiveRepositoryPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UnarchiveRepositoryPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var repository: ExampleSchema.Repository? {
			return internalGetRepository()
		}

		func internalGetRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository? {
			return field(field: "repository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "repository":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "repository":
				return internalGetRepository()

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
					case "repository":
					if let value = internalGetRepository() {
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
