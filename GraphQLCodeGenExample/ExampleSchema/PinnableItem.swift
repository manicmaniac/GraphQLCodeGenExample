// Generated from graphql_swift_gen gem
import Foundation

public protocol PinnableItem {
	var typeName: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class PinnableItemQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = PinnableItem

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onGist(subfields: (GistQuery) -> Void) -> PinnableItemQuery {
			let subquery = GistQuery()
			subfields(subquery)
			addInlineFragment(on: "Gist", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepository(subfields: (RepositoryQuery) -> Void) -> PinnableItemQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)
			addInlineFragment(on: "Repository", subfields: subquery)
			return self
		}
	}

	open class UnknownPinnableItem: GraphQL.AbstractResponse, GraphQLObject, PinnableItem {
		public typealias Query = PinnableItemQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				default:
				throw SchemaViolationError(type: UnknownPinnableItem.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> PinnableItem {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownPinnableItem.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Gist":
				return try Gist.init(fields: fields)

				case "Repository":
				return try Repository.init(fields: fields)

				default:
				return try UnknownPinnableItem.init(fields: fields)
			}
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
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
