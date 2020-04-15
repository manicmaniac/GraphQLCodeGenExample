// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class SearchResultItemEdgeQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SearchResultItemEdge

		@discardableResult
		open func cursor(aliasSuffix: String? = nil) -> SearchResultItemEdgeQuery {
			addField(field: "cursor", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func node(aliasSuffix: String? = nil, _ subfields: (SearchResultItemQuery) -> Void) -> SearchResultItemEdgeQuery {
			let subquery = SearchResultItemQuery()
			subfields(subquery)

			addField(field: "node", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func textMatches(aliasSuffix: String? = nil, _ subfields: (TextMatchQuery) -> Void) -> SearchResultItemEdgeQuery {
			let subquery = TextMatchQuery()
			subfields(subquery)

			addField(field: "textMatches", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class SearchResultItemEdge: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = SearchResultItemEdgeQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "cursor":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SearchResultItemEdge.self, field: fieldName, value: fieldValue)
				}
				return value

				case "node":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchResultItemEdge.self, field: fieldName, value: fieldValue)
				}
				return try UnknownSearchResultItem.create(fields: value)

				case "textMatches":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchResultItemEdge.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchResultItemEdge.self, field: fieldName, value: fieldValue)
				}
				return try TextMatch(fields: value) } as [Any?]

				default:
				throw SchemaViolationError(type: SearchResultItemEdge.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "SearchResultItemEdge" }

		open var cursor: String {
			return internalGetCursor()
		}

		func internalGetCursor(aliasSuffix: String? = nil) -> String {
			return field(field: "cursor", aliasSuffix: aliasSuffix) as! String
		}

		open var node: SearchResultItem? {
			return internalGetNode()
		}

		func internalGetNode(aliasSuffix: String? = nil) -> SearchResultItem? {
			return field(field: "node", aliasSuffix: aliasSuffix) as! SearchResultItem?
		}

		open var textMatches: [ExampleSchema.TextMatch?]? {
			return internalGetTextMatches()
		}

		func internalGetTextMatches(aliasSuffix: String? = nil) -> [ExampleSchema.TextMatch?]? {
			return field(field: "textMatches", aliasSuffix: aliasSuffix) as! [ExampleSchema.TextMatch?]?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "cursor":

				return .scalar

				case "node":

				return .scalar

				case "textMatches":

				return .objectList

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
				case "textMatches":
				return internalGetTextMatches() ?? []

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
