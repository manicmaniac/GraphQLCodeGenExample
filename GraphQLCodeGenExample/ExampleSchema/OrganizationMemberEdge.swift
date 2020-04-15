// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class OrganizationMemberEdgeQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = OrganizationMemberEdge

		@discardableResult
		open func cursor(aliasSuffix: String? = nil) -> OrganizationMemberEdgeQuery {
			addField(field: "cursor", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func hasTwoFactorEnabled(aliasSuffix: String? = nil) -> OrganizationMemberEdgeQuery {
			addField(field: "hasTwoFactorEnabled", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func node(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> OrganizationMemberEdgeQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "node", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func role(aliasSuffix: String? = nil) -> OrganizationMemberEdgeQuery {
			addField(field: "role", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class OrganizationMemberEdge: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = OrganizationMemberEdgeQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "cursor":
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrganizationMemberEdge.self, field: fieldName, value: fieldValue)
				}
				return value

				case "hasTwoFactorEnabled":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: OrganizationMemberEdge.self, field: fieldName, value: fieldValue)
				}
				return value

				case "node":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: OrganizationMemberEdge.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				case "role":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrganizationMemberEdge.self, field: fieldName, value: fieldValue)
				}
				return OrganizationMemberRole(rawValue: value) ?? .unknownValue

				default:
				throw SchemaViolationError(type: OrganizationMemberEdge.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "OrganizationMemberEdge" }

		open var cursor: String {
			return internalGetCursor()
		}

		func internalGetCursor(aliasSuffix: String? = nil) -> String {
			return field(field: "cursor", aliasSuffix: aliasSuffix) as! String
		}

		open var hasTwoFactorEnabled: Bool? {
			return internalGetHasTwoFactorEnabled()
		}

		func internalGetHasTwoFactorEnabled(aliasSuffix: String? = nil) -> Bool? {
			return field(field: "hasTwoFactorEnabled", aliasSuffix: aliasSuffix) as! Bool?
		}

		open var node: ExampleSchema.User? {
			return internalGetNode()
		}

		func internalGetNode(aliasSuffix: String? = nil) -> ExampleSchema.User? {
			return field(field: "node", aliasSuffix: aliasSuffix) as! ExampleSchema.User?
		}

		open var role: ExampleSchema.OrganizationMemberRole? {
			return internalGetRole()
		}

		func internalGetRole(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationMemberRole? {
			return field(field: "role", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationMemberRole?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "cursor":

				return .scalar

				case "hasTwoFactorEnabled":

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
					if let value = internalGetNode() {
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
