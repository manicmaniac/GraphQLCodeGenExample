// Generated from graphql_swift_gen gem
import Foundation

public protocol Closer {
	var typeName: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class CloserQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Closer

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onCommit(subfields: (CommitQuery) -> Void) -> CloserQuery {
			let subquery = CommitQuery()
			subfields(subquery)
			addInlineFragment(on: "Commit", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequest(subfields: (PullRequestQuery) -> Void) -> CloserQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequest", subfields: subquery)
			return self
		}
	}

	open class UnknownCloser: GraphQL.AbstractResponse, GraphQLObject, Closer {
		public typealias Query = CloserQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				default:
				throw SchemaViolationError(type: UnknownCloser.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> Closer {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownCloser.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Commit":
				return try Commit.init(fields: fields)

				case "PullRequest":
				return try PullRequest.init(fields: fields)

				default:
				return try UnknownCloser.init(fields: fields)
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
