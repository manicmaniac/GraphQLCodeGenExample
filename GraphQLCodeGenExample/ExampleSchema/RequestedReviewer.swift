// Generated from graphql_swift_gen gem
import Foundation

public protocol RequestedReviewer {
	var typeName: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class RequestedReviewerQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RequestedReviewer

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onMannequin(subfields: (MannequinQuery) -> Void) -> RequestedReviewerQuery {
			let subquery = MannequinQuery()
			subfields(subquery)
			addInlineFragment(on: "Mannequin", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeam(subfields: (TeamQuery) -> Void) -> RequestedReviewerQuery {
			let subquery = TeamQuery()
			subfields(subquery)
			addInlineFragment(on: "Team", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUser(subfields: (UserQuery) -> Void) -> RequestedReviewerQuery {
			let subquery = UserQuery()
			subfields(subquery)
			addInlineFragment(on: "User", subfields: subquery)
			return self
		}
	}

	open class UnknownRequestedReviewer: GraphQL.AbstractResponse, GraphQLObject, RequestedReviewer {
		public typealias Query = RequestedReviewerQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				default:
				throw SchemaViolationError(type: UnknownRequestedReviewer.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> RequestedReviewer {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownRequestedReviewer.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Mannequin":
				return try Mannequin.init(fields: fields)

				case "Team":
				return try Team.init(fields: fields)

				case "User":
				return try User.init(fields: fields)

				default:
				return try UnknownRequestedReviewer.init(fields: fields)
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
