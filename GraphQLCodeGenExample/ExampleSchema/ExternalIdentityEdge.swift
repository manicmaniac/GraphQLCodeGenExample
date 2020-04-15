// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ExternalIdentityEdgeQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ExternalIdentityEdge

		@discardableResult
		open func cursor(aliasSuffix: String? = nil) -> ExternalIdentityEdgeQuery {
			addField(field: "cursor", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func node(aliasSuffix: String? = nil, _ subfields: (ExternalIdentityQuery) -> Void) -> ExternalIdentityEdgeQuery {
			let subquery = ExternalIdentityQuery()
			subfields(subquery)

			addField(field: "node", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class ExternalIdentityEdge: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = ExternalIdentityEdgeQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "cursor":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ExternalIdentityEdge.self, field: fieldName, value: fieldValue)
				}
				return value

				case "node":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ExternalIdentityEdge.self, field: fieldName, value: fieldValue)
				}
				return try ExternalIdentity(fields: value)

				default:
				throw SchemaViolationError(type: ExternalIdentityEdge.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ExternalIdentityEdge" }

		open var cursor: String {
			return internalGetCursor()
		}

		func internalGetCursor(aliasSuffix: String? = nil) -> String {
			return field(field: "cursor", aliasSuffix: aliasSuffix) as! String
		}

		open var node: ExampleSchema.ExternalIdentity? {
			return internalGetNode()
		}

		func internalGetNode(aliasSuffix: String? = nil) -> ExampleSchema.ExternalIdentity? {
			return field(field: "node", aliasSuffix: aliasSuffix) as! ExampleSchema.ExternalIdentity?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "cursor":

				return .scalar

				case "node":

				return .object

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
