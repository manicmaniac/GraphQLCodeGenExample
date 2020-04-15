// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ReviewRequestQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ReviewRequest

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> ReviewRequestQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> ReviewRequestQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pullRequest(aliasSuffix: String? = nil, _ subfields: (PullRequestQuery) -> Void) -> ReviewRequestQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)

			addField(field: "pullRequest", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func requestedReviewer(aliasSuffix: String? = nil, _ subfields: (RequestedReviewerQuery) -> Void) -> ReviewRequestQuery {
			let subquery = RequestedReviewerQuery()
			subfields(subquery)

			addField(field: "requestedReviewer", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class ReviewRequest: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = ReviewRequestQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ReviewRequest.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReviewRequest.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "pullRequest":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ReviewRequest.self, field: fieldName, value: fieldValue)
				}
				return try PullRequest(fields: value)

				case "requestedReviewer":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ReviewRequest.self, field: fieldName, value: fieldValue)
				}
				return try UnknownRequestedReviewer.create(fields: value)

				default:
				throw SchemaViolationError(type: ReviewRequest.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ReviewRequest" }

		open var databaseId: Int32? {
			return internalGetDatabaseId()
		}

		func internalGetDatabaseId(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "databaseId", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var pullRequest: ExampleSchema.PullRequest {
			return internalGetPullRequest()
		}

		func internalGetPullRequest(aliasSuffix: String? = nil) -> ExampleSchema.PullRequest {
			return field(field: "pullRequest", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequest
		}

		open var requestedReviewer: RequestedReviewer? {
			return internalGetRequestedReviewer()
		}

		func internalGetRequestedReviewer(aliasSuffix: String? = nil) -> RequestedReviewer? {
			return field(field: "requestedReviewer", aliasSuffix: aliasSuffix) as! RequestedReviewer?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "databaseId":

				return .scalar

				case "id":

				return .scalar

				case "pullRequest":

				return .object

				case "requestedReviewer":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "pullRequest":
				return internalGetPullRequest()

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
					case "pullRequest":
					response.append(internalGetPullRequest())
					response.append(contentsOf: internalGetPullRequest().childResponseObjectMap())

					case "requestedReviewer":
					if let value = internalGetRequestedReviewer() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

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
