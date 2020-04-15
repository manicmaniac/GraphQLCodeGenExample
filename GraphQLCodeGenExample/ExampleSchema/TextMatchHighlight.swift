// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class TextMatchHighlightQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = TextMatchHighlight

		@discardableResult
		open func beginIndice(aliasSuffix: String? = nil) -> TextMatchHighlightQuery {
			addField(field: "beginIndice", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func endIndice(aliasSuffix: String? = nil) -> TextMatchHighlightQuery {
			addField(field: "endIndice", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func text(aliasSuffix: String? = nil) -> TextMatchHighlightQuery {
			addField(field: "text", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class TextMatchHighlight: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = TextMatchHighlightQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "beginIndice":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: TextMatchHighlight.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "endIndice":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: TextMatchHighlight.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "text":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TextMatchHighlight.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: TextMatchHighlight.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "TextMatchHighlight" }

		open var beginIndice: Int32 {
			return internalGetBeginIndice()
		}

		func internalGetBeginIndice(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "beginIndice", aliasSuffix: aliasSuffix) as! Int32
		}

		open var endIndice: Int32 {
			return internalGetEndIndice()
		}

		func internalGetEndIndice(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "endIndice", aliasSuffix: aliasSuffix) as! Int32
		}

		open var text: String {
			return internalGetText()
		}

		func internalGetText(aliasSuffix: String? = nil) -> String {
			return field(field: "text", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "beginIndice":

				return .scalar

				case "endIndice":

				return .scalar

				case "text":

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
