// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ProfileItemShowcaseQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ProfileItemShowcase

		@discardableResult
		open func hasPinnedItems(aliasSuffix: String? = nil) -> ProfileItemShowcaseQuery {
			addField(field: "hasPinnedItems", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func items(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (PinnableItemConnectionQuery) -> Void) -> ProfileItemShowcaseQuery {
			var args: [String] = []

			if let after = after {
				args.append("after:\(GraphQL.quoteString(input: after))")
			}

			if let before = before {
				args.append("before:\(GraphQL.quoteString(input: before))")
			}

			if let first = first {
				args.append("first:\(first)")
			}

			if let last = last {
				args.append("last:\(last)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = PinnableItemConnectionQuery()
			subfields(subquery)

			addField(field: "items", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}
	}

	open class ProfileItemShowcase: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = ProfileItemShowcaseQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "hasPinnedItems":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: ProfileItemShowcase.self, field: fieldName, value: fieldValue)
				}
				return value

				case "items":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ProfileItemShowcase.self, field: fieldName, value: fieldValue)
				}
				return try PinnableItemConnection(fields: value)

				default:
				throw SchemaViolationError(type: ProfileItemShowcase.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ProfileItemShowcase" }

		open var hasPinnedItems: Bool {
			return internalGetHasPinnedItems()
		}

		func internalGetHasPinnedItems(aliasSuffix: String? = nil) -> Bool {
			return field(field: "hasPinnedItems", aliasSuffix: aliasSuffix) as! Bool
		}

		open var items: ExampleSchema.PinnableItemConnection {
			return internalGetItems()
		}

		open func aliasedItems(aliasSuffix: String) -> ExampleSchema.PinnableItemConnection {
			return internalGetItems(aliasSuffix: aliasSuffix)
		}

		func internalGetItems(aliasSuffix: String? = nil) -> ExampleSchema.PinnableItemConnection {
			return field(field: "items", aliasSuffix: aliasSuffix) as! ExampleSchema.PinnableItemConnection
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "hasPinnedItems":

				return .scalar

				case "items":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "items":
				return internalGetItems()

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
					case "items":
					response.append(internalGetItems())
					response.append(contentsOf: internalGetItems().childResponseObjectMap())

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
