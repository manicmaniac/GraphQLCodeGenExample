// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ReviewDismissedEventQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ReviewDismissedEvent

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> ReviewDismissedEventQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> ReviewDismissedEventQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> ReviewDismissedEventQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func dismissalMessage(aliasSuffix: String? = nil) -> ReviewDismissedEventQuery {
			addField(field: "dismissalMessage", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func dismissalMessageHtml(aliasSuffix: String? = nil) -> ReviewDismissedEventQuery {
			addField(field: "dismissalMessageHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> ReviewDismissedEventQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func previousReviewState(aliasSuffix: String? = nil) -> ReviewDismissedEventQuery {
			addField(field: "previousReviewState", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pullRequest(aliasSuffix: String? = nil, _ subfields: (PullRequestQuery) -> Void) -> ReviewDismissedEventQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)

			addField(field: "pullRequest", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func pullRequestCommit(aliasSuffix: String? = nil, _ subfields: (PullRequestCommitQuery) -> Void) -> ReviewDismissedEventQuery {
			let subquery = PullRequestCommitQuery()
			subfields(subquery)

			addField(field: "pullRequestCommit", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> ReviewDismissedEventQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func review(aliasSuffix: String? = nil, _ subfields: (PullRequestReviewQuery) -> Void) -> ReviewDismissedEventQuery {
			let subquery = PullRequestReviewQuery()
			subfields(subquery)

			addField(field: "review", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> ReviewDismissedEventQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class ReviewDismissedEvent: GraphQL.AbstractResponse, GraphQLObject, Node, PullRequestTimelineItem, PullRequestTimelineItems, UniformResourceLocatable {
		public typealias Query = ReviewDismissedEventQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ReviewDismissedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReviewDismissedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ReviewDismissedEvent.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "dismissalMessage":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReviewDismissedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "dismissalMessageHTML":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReviewDismissedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReviewDismissedEvent.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "previousReviewState":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReviewDismissedEvent.self, field: fieldName, value: fieldValue)
				}
				return PullRequestReviewState(rawValue: value) ?? .unknownValue

				case "pullRequest":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ReviewDismissedEvent.self, field: fieldName, value: fieldValue)
				}
				return try PullRequest(fields: value)

				case "pullRequestCommit":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ReviewDismissedEvent.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestCommit(fields: value)

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReviewDismissedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "review":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ReviewDismissedEvent.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestReview(fields: value)

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReviewDismissedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: ReviewDismissedEvent.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ReviewDismissedEvent" }

		open var actor: Actor? {
			return internalGetActor()
		}

		func internalGetActor(aliasSuffix: String? = nil) -> Actor? {
			return field(field: "actor", aliasSuffix: aliasSuffix) as! Actor?
		}

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var databaseId: Int32? {
			return internalGetDatabaseId()
		}

		func internalGetDatabaseId(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "databaseId", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var dismissalMessage: String? {
			return internalGetDismissalMessage()
		}

		func internalGetDismissalMessage(aliasSuffix: String? = nil) -> String? {
			return field(field: "dismissalMessage", aliasSuffix: aliasSuffix) as! String?
		}

		open var dismissalMessageHtml: String? {
			return internalGetDismissalMessageHtml()
		}

		func internalGetDismissalMessageHtml(aliasSuffix: String? = nil) -> String? {
			return field(field: "dismissalMessageHTML", aliasSuffix: aliasSuffix) as! String?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var previousReviewState: ExampleSchema.PullRequestReviewState {
			return internalGetPreviousReviewState()
		}

		func internalGetPreviousReviewState(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestReviewState {
			return field(field: "previousReviewState", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestReviewState
		}

		open var pullRequest: ExampleSchema.PullRequest {
			return internalGetPullRequest()
		}

		func internalGetPullRequest(aliasSuffix: String? = nil) -> ExampleSchema.PullRequest {
			return field(field: "pullRequest", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequest
		}

		open var pullRequestCommit: ExampleSchema.PullRequestCommit? {
			return internalGetPullRequestCommit()
		}

		func internalGetPullRequestCommit(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestCommit? {
			return field(field: "pullRequestCommit", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestCommit?
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var review: ExampleSchema.PullRequestReview? {
			return internalGetReview()
		}

		func internalGetReview(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestReview? {
			return field(field: "review", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestReview?
		}

		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "actor":

				return .object

				case "createdAt":

				return .scalar

				case "databaseId":

				return .scalar

				case "dismissalMessage":

				return .scalar

				case "dismissalMessageHTML":

				return .scalar

				case "id":

				return .scalar

				case "previousReviewState":

				return .scalar

				case "pullRequest":

				return .object

				case "pullRequestCommit":

				return .object

				case "resourcePath":

				return .scalar

				case "review":

				return .object

				case "url":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "actor":
				return internalGetActor()?.responseObject()

				case "pullRequest":
				return internalGetPullRequest()

				case "pullRequestCommit":
				return internalGetPullRequestCommit()

				case "review":
				return internalGetReview()

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
					case "actor":
					if let value = internalGetActor() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "pullRequest":
					response.append(internalGetPullRequest())
					response.append(contentsOf: internalGetPullRequest().childResponseObjectMap())

					case "pullRequestCommit":
					if let value = internalGetPullRequestCommit() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "review":
					if let value = internalGetReview() {
						response.append(value)
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
