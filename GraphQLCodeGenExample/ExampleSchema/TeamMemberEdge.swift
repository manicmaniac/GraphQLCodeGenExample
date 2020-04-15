// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class TeamMemberEdgeQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = TeamMemberEdge

		@discardableResult
		open func cursor(aliasSuffix: String? = nil) -> TeamMemberEdgeQuery {
			addField(field: "cursor", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func memberAccessResourcePath(aliasSuffix: String? = nil) -> TeamMemberEdgeQuery {
			addField(field: "memberAccessResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func memberAccessUrl(aliasSuffix: String? = nil) -> TeamMemberEdgeQuery {
			addField(field: "memberAccessUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func node(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> TeamMemberEdgeQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "node", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func role(aliasSuffix: String? = nil) -> TeamMemberEdgeQuery {
			addField(field: "role", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class TeamMemberEdge: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = TeamMemberEdgeQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "cursor":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamMemberEdge.self, field: fieldName, value: fieldValue)
				}
				return value

				case "memberAccessResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamMemberEdge.self, field: fieldName, value: fieldValue)
				}
				return value

				case "memberAccessUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamMemberEdge.self, field: fieldName, value: fieldValue)
				}
				return value

				case "node":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: TeamMemberEdge.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				case "role":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamMemberEdge.self, field: fieldName, value: fieldValue)
				}
				return TeamMemberRole(rawValue: value) ?? .unknownValue

				default:
				throw SchemaViolationError(type: TeamMemberEdge.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "TeamMemberEdge" }

		open var cursor: String {
			return internalGetCursor()
		}

		func internalGetCursor(aliasSuffix: String? = nil) -> String {
			return field(field: "cursor", aliasSuffix: aliasSuffix) as! String
		}

		open var memberAccessResourcePath: String {
			return internalGetMemberAccessResourcePath()
		}

		func internalGetMemberAccessResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "memberAccessResourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var memberAccessUrl: String {
			return internalGetMemberAccessUrl()
		}

		func internalGetMemberAccessUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "memberAccessUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var node: ExampleSchema.User {
			return internalGetNode()
		}

		func internalGetNode(aliasSuffix: String? = nil) -> ExampleSchema.User {
			return field(field: "node", aliasSuffix: aliasSuffix) as! ExampleSchema.User
		}

		open var role: ExampleSchema.TeamMemberRole {
			return internalGetRole()
		}

		func internalGetRole(aliasSuffix: String? = nil) -> ExampleSchema.TeamMemberRole {
			return field(field: "role", aliasSuffix: aliasSuffix) as! ExampleSchema.TeamMemberRole
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "cursor":

				return .scalar

				case "memberAccessResourcePath":

				return .scalar

				case "memberAccessUrl":

				return .scalar

				case "node":

				return .object

				case "role":

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
