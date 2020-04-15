// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class PageInfoQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = PageInfo

		@discardableResult
		open func endCursor(aliasSuffix: String? = nil) -> PageInfoQuery {
			addField(field: "endCursor", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func hasNextPage(aliasSuffix: String? = nil) -> PageInfoQuery {
			addField(field: "hasNextPage", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func hasPreviousPage(aliasSuffix: String? = nil) -> PageInfoQuery {
			addField(field: "hasPreviousPage", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func startCursor(aliasSuffix: String? = nil) -> PageInfoQuery {
			addField(field: "startCursor", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class PageInfo: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = PageInfoQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "endCursor":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PageInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "hasNextPage":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PageInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "hasPreviousPage":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PageInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "startCursor":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PageInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: PageInfo.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "PageInfo" }

		open var endCursor: String? {
			return internalGetEndCursor()
		}

		func internalGetEndCursor(aliasSuffix: String? = nil) -> String? {
			return field(field: "endCursor", aliasSuffix: aliasSuffix) as! String?
		}

		open var hasNextPage: Bool {
			return internalGetHasNextPage()
		}

		func internalGetHasNextPage(aliasSuffix: String? = nil) -> Bool {
			return field(field: "hasNextPage", aliasSuffix: aliasSuffix) as! Bool
		}

		open var hasPreviousPage: Bool {
			return internalGetHasPreviousPage()
		}

		func internalGetHasPreviousPage(aliasSuffix: String? = nil) -> Bool {
			return field(field: "hasPreviousPage", aliasSuffix: aliasSuffix) as! Bool
		}

		open var startCursor: String? {
			return internalGetStartCursor()
		}

		func internalGetStartCursor(aliasSuffix: String? = nil) -> String? {
			return field(field: "startCursor", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "endCursor":

				return .scalar

				case "hasNextPage":

				return .scalar

				case "hasPreviousPage":

				return .scalar

				case "startCursor":

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
