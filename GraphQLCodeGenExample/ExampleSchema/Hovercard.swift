// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class HovercardQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Hovercard

		@discardableResult
		open func contexts(aliasSuffix: String? = nil, _ subfields: (HovercardContextQuery) -> Void) -> HovercardQuery {
			let subquery = HovercardContextQuery()
			subfields(subquery)

			addField(field: "contexts", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class Hovercard: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = HovercardQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contexts":
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: Hovercard.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try UnknownHovercardContext.create(fields: $0) }

				default:
				throw SchemaViolationError(type: Hovercard.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Hovercard" }

		open var contexts: [HovercardContext] {
			return internalGetContexts()
		}

		func internalGetContexts(aliasSuffix: String? = nil) -> [HovercardContext] {
			return field(field: "contexts", aliasSuffix: aliasSuffix) as! [HovercardContext]
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contexts":

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
