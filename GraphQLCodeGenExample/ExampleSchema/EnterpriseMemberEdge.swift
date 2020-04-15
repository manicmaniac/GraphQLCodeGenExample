// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class EnterpriseMemberEdgeQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EnterpriseMemberEdge

		@discardableResult
		open func cursor(aliasSuffix: String? = nil) -> EnterpriseMemberEdgeQuery {
			addField(field: "cursor", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isUnlicensed(aliasSuffix: String? = nil) -> EnterpriseMemberEdgeQuery {
			addField(field: "isUnlicensed", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func node(aliasSuffix: String? = nil, _ subfields: (EnterpriseMemberQuery) -> Void) -> EnterpriseMemberEdgeQuery {
			let subquery = EnterpriseMemberQuery()
			subfields(subquery)

			addField(field: "node", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class EnterpriseMemberEdge: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = EnterpriseMemberEdgeQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "cursor":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseMemberEdge.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isUnlicensed":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: EnterpriseMemberEdge.self, field: fieldName, value: fieldValue)
				}
				return value

				case "node":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseMemberEdge.self, field: fieldName, value: fieldValue)
				}
				return try UnknownEnterpriseMember.create(fields: value)

				default:
				throw SchemaViolationError(type: EnterpriseMemberEdge.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EnterpriseMemberEdge" }

		open var cursor: String {
			return internalGetCursor()
		}

		func internalGetCursor(aliasSuffix: String? = nil) -> String {
			return field(field: "cursor", aliasSuffix: aliasSuffix) as! String
		}

		open var isUnlicensed: Bool {
			return internalGetIsUnlicensed()
		}

		func internalGetIsUnlicensed(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isUnlicensed", aliasSuffix: aliasSuffix) as! Bool
		}

		open var node: EnterpriseMember? {
			return internalGetNode()
		}

		func internalGetNode(aliasSuffix: String? = nil) -> EnterpriseMember? {
			return field(field: "node", aliasSuffix: aliasSuffix) as! EnterpriseMember?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "cursor":

				return .scalar

				case "isUnlicensed":

				return .scalar

				case "node":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
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
			return []
		}

		open func responseObject() -> GraphQL.AbstractResponse {
			return self as GraphQL.AbstractResponse
		}
	}
}
