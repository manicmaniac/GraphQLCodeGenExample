// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class MoveProjectColumnPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = MoveProjectColumnPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> MoveProjectColumnPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func columnEdge(aliasSuffix: String? = nil, _ subfields: (ProjectColumnEdgeQuery) -> Void) -> MoveProjectColumnPayloadQuery {
			let subquery = ProjectColumnEdgeQuery()
			subfields(subquery)

			addField(field: "columnEdge", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class MoveProjectColumnPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = MoveProjectColumnPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MoveProjectColumnPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "columnEdge":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: MoveProjectColumnPayload.self, field: fieldName, value: fieldValue)
				}
				return try ProjectColumnEdge(fields: value)

				default:
				throw SchemaViolationError(type: MoveProjectColumnPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "MoveProjectColumnPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var columnEdge: ExampleSchema.ProjectColumnEdge? {
			return internalGetColumnEdge()
		}

		func internalGetColumnEdge(aliasSuffix: String? = nil) -> ExampleSchema.ProjectColumnEdge? {
			return field(field: "columnEdge", aliasSuffix: aliasSuffix) as! ExampleSchema.ProjectColumnEdge?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "columnEdge":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "columnEdge":
				return internalGetColumnEdge()

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
					case "columnEdge":
					if let value = internalGetColumnEdge() {
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
