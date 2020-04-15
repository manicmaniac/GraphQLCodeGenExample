// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class MoveProjectCardPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = MoveProjectCardPayload

		@discardableResult
		open func cardEdge(aliasSuffix: String? = nil, _ subfields: (ProjectCardEdgeQuery) -> Void) -> MoveProjectCardPayloadQuery {
			let subquery = ProjectCardEdgeQuery()
			subfields(subquery)

			addField(field: "cardEdge", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> MoveProjectCardPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class MoveProjectCardPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = MoveProjectCardPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "cardEdge":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: MoveProjectCardPayload.self, field: fieldName, value: fieldValue)
				}
				return try ProjectCardEdge(fields: value)

				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MoveProjectCardPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: MoveProjectCardPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "MoveProjectCardPayload" }

		open var cardEdge: ExampleSchema.ProjectCardEdge? {
			return internalGetCardEdge()
		}

		func internalGetCardEdge(aliasSuffix: String? = nil) -> ExampleSchema.ProjectCardEdge? {
			return field(field: "cardEdge", aliasSuffix: aliasSuffix) as! ExampleSchema.ProjectCardEdge?
		}

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "cardEdge":

				return .object

				case "clientMutationId":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "cardEdge":
				return internalGetCardEdge()

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
					case "cardEdge":
					if let value = internalGetCardEdge() {
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
