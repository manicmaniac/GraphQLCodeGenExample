// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class EnterpriseOrganizationMembershipEdgeQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EnterpriseOrganizationMembershipEdge

		@discardableResult
		open func cursor(aliasSuffix: String? = nil) -> EnterpriseOrganizationMembershipEdgeQuery {
			addField(field: "cursor", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func node(aliasSuffix: String? = nil, _ subfields: (OrganizationQuery) -> Void) -> EnterpriseOrganizationMembershipEdgeQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)

			addField(field: "node", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func role(aliasSuffix: String? = nil) -> EnterpriseOrganizationMembershipEdgeQuery {
			addField(field: "role", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class EnterpriseOrganizationMembershipEdge: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = EnterpriseOrganizationMembershipEdgeQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "cursor":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseOrganizationMembershipEdge.self, field: fieldName, value: fieldValue)
				}
				return value

				case "node":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOrganizationMembershipEdge.self, field: fieldName, value: fieldValue)
				}
				return try Organization(fields: value)

				case "role":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseOrganizationMembershipEdge.self, field: fieldName, value: fieldValue)
				}
				return EnterpriseUserAccountMembershipRole(rawValue: value) ?? .unknownValue

				default:
				throw SchemaViolationError(type: EnterpriseOrganizationMembershipEdge.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EnterpriseOrganizationMembershipEdge" }

		open var cursor: String {
			return internalGetCursor()
		}

		func internalGetCursor(aliasSuffix: String? = nil) -> String {
			return field(field: "cursor", aliasSuffix: aliasSuffix) as! String
		}

		open var node: ExampleSchema.Organization? {
			return internalGetNode()
		}

		func internalGetNode(aliasSuffix: String? = nil) -> ExampleSchema.Organization? {
			return field(field: "node", aliasSuffix: aliasSuffix) as! ExampleSchema.Organization?
		}

		open var role: ExampleSchema.EnterpriseUserAccountMembershipRole {
			return internalGetRole()
		}

		func internalGetRole(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseUserAccountMembershipRole {
			return field(field: "role", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseUserAccountMembershipRole
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "cursor":

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
