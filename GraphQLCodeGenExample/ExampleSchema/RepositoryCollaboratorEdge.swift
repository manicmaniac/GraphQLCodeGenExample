// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RepositoryCollaboratorEdgeQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RepositoryCollaboratorEdge

		@discardableResult
		open func cursor(aliasSuffix: String? = nil) -> RepositoryCollaboratorEdgeQuery {
			addField(field: "cursor", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func node(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> RepositoryCollaboratorEdgeQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "node", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func permission(aliasSuffix: String? = nil) -> RepositoryCollaboratorEdgeQuery {
			addField(field: "permission", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func permissionSources(aliasSuffix: String? = nil, _ subfields: (PermissionSourceQuery) -> Void) -> RepositoryCollaboratorEdgeQuery {
			let subquery = PermissionSourceQuery()
			subfields(subquery)

			addField(field: "permissionSources", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class RepositoryCollaboratorEdge: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = RepositoryCollaboratorEdgeQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "cursor":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RepositoryCollaboratorEdge.self, field: fieldName, value: fieldValue)
				}
				return value

				case "node":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RepositoryCollaboratorEdge.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				case "permission":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RepositoryCollaboratorEdge.self, field: fieldName, value: fieldValue)
				}
				return RepositoryPermission(rawValue: value) ?? .unknownValue

				case "permissionSources":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: RepositoryCollaboratorEdge.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try PermissionSource(fields: $0) }

				default:
				throw SchemaViolationError(type: RepositoryCollaboratorEdge.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "RepositoryCollaboratorEdge" }

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

		open var permission: ExampleSchema.RepositoryPermission {
			return internalGetPermission()
		}

		func internalGetPermission(aliasSuffix: String? = nil) -> ExampleSchema.RepositoryPermission {
			return field(field: "permission", aliasSuffix: aliasSuffix) as! ExampleSchema.RepositoryPermission
		}

		open var permissionSources: [ExampleSchema.PermissionSource]? {
			return internalGetPermissionSources()
		}

		func internalGetPermissionSources(aliasSuffix: String? = nil) -> [ExampleSchema.PermissionSource]? {
			return field(field: "permissionSources", aliasSuffix: aliasSuffix) as! [ExampleSchema.PermissionSource]?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "cursor":

				return .scalar

				case "node":

				return .object

				case "permission":

				return .scalar

				case "permissionSources":

				return .objectList

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
				case "permissionSources":
				return internalGetPermissionSources() ?? []

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

					case "permissionSources":
					if let value = internalGetPermissionSources() {
						value.forEach {
							response.append($0)
							response.append(contentsOf: $0.childResponseObjectMap())
						}
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
