// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class TeamRepositoryEdgeQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = TeamRepositoryEdge

		@discardableResult
		open func cursor(aliasSuffix: String? = nil) -> TeamRepositoryEdgeQuery {
			addField(field: "cursor", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func node(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> TeamRepositoryEdgeQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "node", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func permission(aliasSuffix: String? = nil) -> TeamRepositoryEdgeQuery {
			addField(field: "permission", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class TeamRepositoryEdge: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = TeamRepositoryEdgeQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "cursor":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamRepositoryEdge.self, field: fieldName, value: fieldValue)
				}
				return value

				case "node":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: TeamRepositoryEdge.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "permission":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamRepositoryEdge.self, field: fieldName, value: fieldValue)
				}
				return RepositoryPermission(rawValue: value) ?? .unknownValue

				default:
				throw SchemaViolationError(type: TeamRepositoryEdge.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "TeamRepositoryEdge" }

		open var cursor: String {
			return internalGetCursor()
		}

		func internalGetCursor(aliasSuffix: String? = nil) -> String {
			return field(field: "cursor", aliasSuffix: aliasSuffix) as! String
		}

		open var node: ExampleSchema.Repository {
			return internalGetNode()
		}

		func internalGetNode(aliasSuffix: String? = nil) -> ExampleSchema.Repository {
			return field(field: "node", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository
		}

		open var permission: ExampleSchema.RepositoryPermission {
			return internalGetPermission()
		}

		func internalGetPermission(aliasSuffix: String? = nil) -> ExampleSchema.RepositoryPermission {
			return field(field: "permission", aliasSuffix: aliasSuffix) as! ExampleSchema.RepositoryPermission
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "cursor":

				return .scalar

				case "node":

				return .object

				case "permission":

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
