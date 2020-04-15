// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class StargazerEdgeQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = StargazerEdge

		@discardableResult
		open func cursor(aliasSuffix: String? = nil) -> StargazerEdgeQuery {
			addField(field: "cursor", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func node(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> StargazerEdgeQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "node", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func starredAt(aliasSuffix: String? = nil) -> StargazerEdgeQuery {
			addField(field: "starredAt", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class StargazerEdge: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = StargazerEdgeQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "cursor":
				guard let value = value as? String else {
					throw SchemaViolationError(type: StargazerEdge.self, field: fieldName, value: fieldValue)
				}
				return value

				case "node":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: StargazerEdge.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				case "starredAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: StargazerEdge.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: StargazerEdge.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "StargazerEdge" }

		open var cursor: String {
			return internalGetCursor()
		}

		func internalGetCursor(aliasSuffix: String? = nil) -> String {
			return field(field: "cursor", aliasSuffix: aliasSuffix) as! String
		}

		open var node: ExampleSchema.User {
			return internalGetNode()
		}

		func internalGetNode(aliasSuffix: String? = nil) -> ExampleSchema.User {
			return field(field: "node", aliasSuffix: aliasSuffix) as! ExampleSchema.User
		}

		open var starredAt: String {
			return internalGetStarredAt()
		}

		func internalGetStarredAt(aliasSuffix: String? = nil) -> String {
			return field(field: "starredAt", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "cursor":

				return .scalar

				case "node":

				return .object

				case "starredAt":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "node":
				return internalGetNode()

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
					case "node":
					response.append(internalGetNode())
					response.append(contentsOf: internalGetNode().childResponseObjectMap())

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
