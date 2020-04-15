// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class SuggestedReviewerQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SuggestedReviewer

		@discardableResult
		open func isAuthor(aliasSuffix: String? = nil) -> SuggestedReviewerQuery {
			addField(field: "isAuthor", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isCommenter(aliasSuffix: String? = nil) -> SuggestedReviewerQuery {
			addField(field: "isCommenter", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func reviewer(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> SuggestedReviewerQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "reviewer", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class SuggestedReviewer: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = SuggestedReviewerQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "isAuthor":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: SuggestedReviewer.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isCommenter":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: SuggestedReviewer.self, field: fieldName, value: fieldValue)
				}
				return value

				case "reviewer":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SuggestedReviewer.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				default:
				throw SchemaViolationError(type: SuggestedReviewer.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "SuggestedReviewer" }

		open var isAuthor: Bool {
			return internalGetIsAuthor()
		}

		func internalGetIsAuthor(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isAuthor", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isCommenter: Bool {
			return internalGetIsCommenter()
		}

		func internalGetIsCommenter(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isCommenter", aliasSuffix: aliasSuffix) as! Bool
		}

		open var reviewer: ExampleSchema.User {
			return internalGetReviewer()
		}

		func internalGetReviewer(aliasSuffix: String? = nil) -> ExampleSchema.User {
			return field(field: "reviewer", aliasSuffix: aliasSuffix) as! ExampleSchema.User
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "isAuthor":

				return .scalar

				case "isCommenter":

				return .scalar

				case "reviewer":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "reviewer":
				return internalGetReviewer()

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
					case "reviewer":
					response.append(internalGetReviewer())
					response.append(contentsOf: internalGetReviewer().childResponseObjectMap())

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
