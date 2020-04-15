// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class TextMatchQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = TextMatch

		@discardableResult
		open func fragment(aliasSuffix: String? = nil) -> TextMatchQuery {
			addField(field: "fragment", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func highlights(aliasSuffix: String? = nil, _ subfields: (TextMatchHighlightQuery) -> Void) -> TextMatchQuery {
			let subquery = TextMatchHighlightQuery()
			subfields(subquery)

			addField(field: "highlights", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func property(aliasSuffix: String? = nil) -> TextMatchQuery {
			addField(field: "property", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class TextMatch: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = TextMatchQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "fragment":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TextMatch.self, field: fieldName, value: fieldValue)
				}
				return value

				case "highlights":
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: TextMatch.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try TextMatchHighlight(fields: $0) }

				case "property":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TextMatch.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: TextMatch.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "TextMatch" }

		open var fragment: String {
			return internalGetFragment()
		}

		func internalGetFragment(aliasSuffix: String? = nil) -> String {
			return field(field: "fragment", aliasSuffix: aliasSuffix) as! String
		}

		open var highlights: [ExampleSchema.TextMatchHighlight] {
			return internalGetHighlights()
		}

		func internalGetHighlights(aliasSuffix: String? = nil) -> [ExampleSchema.TextMatchHighlight] {
			return field(field: "highlights", aliasSuffix: aliasSuffix) as! [ExampleSchema.TextMatchHighlight]
		}

		open var property: String {
			return internalGetProperty()
		}

		func internalGetProperty(aliasSuffix: String? = nil) -> String {
			return field(field: "property", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "fragment":

				return .scalar

				case "highlights":

				return .objectList

				case "property":

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
				case "highlights":
				return internalGetHighlights()

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
