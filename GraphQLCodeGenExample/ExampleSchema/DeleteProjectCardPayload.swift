// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class DeleteProjectCardPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = DeleteProjectCardPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> DeleteProjectCardPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func column(aliasSuffix: String? = nil, _ subfields: (ProjectColumnQuery) -> Void) -> DeleteProjectCardPayloadQuery {
			let subquery = ProjectColumnQuery()
			subfields(subquery)

			addField(field: "column", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func deletedCardId(aliasSuffix: String? = nil) -> DeleteProjectCardPayloadQuery {
			addField(field: "deletedCardId", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class DeleteProjectCardPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = DeleteProjectCardPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeleteProjectCardPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "column":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: DeleteProjectCardPayload.self, field: fieldName, value: fieldValue)
				}
				return try ProjectColumn(fields: value)

				case "deletedCardId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeleteProjectCardPayload.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				default:
				throw SchemaViolationError(type: DeleteProjectCardPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "DeleteProjectCardPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var column: ExampleSchema.ProjectColumn? {
			return internalGetColumn()
		}

		func internalGetColumn(aliasSuffix: String? = nil) -> ExampleSchema.ProjectColumn? {
			return field(field: "column", aliasSuffix: aliasSuffix) as! ExampleSchema.ProjectColumn?
		}

		open var deletedCardId: GraphQL.ID? {
			return internalGetDeletedCardId()
		}

		func internalGetDeletedCardId(aliasSuffix: String? = nil) -> GraphQL.ID? {
			return field(field: "deletedCardId", aliasSuffix: aliasSuffix) as! GraphQL.ID?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "column":

				return .object

				case "deletedCardId":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "column":
				return internalGetColumn()

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
					case "column":
					if let value = internalGetColumn() {
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
