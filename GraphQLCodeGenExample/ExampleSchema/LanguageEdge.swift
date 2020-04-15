// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class LanguageEdgeQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = LanguageEdge

		@discardableResult
		open func cursor(aliasSuffix: String? = nil) -> LanguageEdgeQuery {
			addField(field: "cursor", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func node(aliasSuffix: String? = nil, _ subfields: (LanguageQuery) -> Void) -> LanguageEdgeQuery {
			let subquery = LanguageQuery()
			subfields(subquery)

			addField(field: "node", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func size(aliasSuffix: String? = nil) -> LanguageEdgeQuery {
			addField(field: "size", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class LanguageEdge: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = LanguageEdgeQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "cursor":
				guard let value = value as? String else {
					throw SchemaViolationError(type: LanguageEdge.self, field: fieldName, value: fieldValue)
				}
				return value

				case "node":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: LanguageEdge.self, field: fieldName, value: fieldValue)
				}
				return try Language(fields: value)

				case "size":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: LanguageEdge.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				default:
				throw SchemaViolationError(type: LanguageEdge.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "LanguageEdge" }

		open var cursor: String {
			return internalGetCursor()
		}

		func internalGetCursor(aliasSuffix: String? = nil) -> String {
			return field(field: "cursor", aliasSuffix: aliasSuffix) as! String
		}

		open var node: ExampleSchema.Language {
			return internalGetNode()
		}

		func internalGetNode(aliasSuffix: String? = nil) -> ExampleSchema.Language {
			return field(field: "node", aliasSuffix: aliasSuffix) as! ExampleSchema.Language
		}

		open var size: Int32 {
			return internalGetSize()
		}

		func internalGetSize(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "size", aliasSuffix: aliasSuffix) as! Int32
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "cursor":

				return .scalar

				case "node":

				return .object

				case "size":

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
