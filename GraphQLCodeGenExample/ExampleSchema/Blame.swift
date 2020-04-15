// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class BlameQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Blame

		@discardableResult
		open func ranges(aliasSuffix: String? = nil, _ subfields: (BlameRangeQuery) -> Void) -> BlameQuery {
			let subquery = BlameRangeQuery()
			subfields(subquery)

			addField(field: "ranges", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class Blame: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = BlameQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "ranges":
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: Blame.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try BlameRange(fields: $0) }

				default:
				throw SchemaViolationError(type: Blame.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Blame" }

		open var ranges: [ExampleSchema.BlameRange] {
			return internalGetRanges()
		}

		func internalGetRanges(aliasSuffix: String? = nil) -> [ExampleSchema.BlameRange] {
			return field(field: "ranges", aliasSuffix: aliasSuffix) as! [ExampleSchema.BlameRange]
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "ranges":

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
				case "ranges":
				return internalGetRanges()

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
