// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CreatedPullRequestReviewContributionQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = CreatedPullRequestReviewContribution

		@discardableResult
		open func isRestricted(aliasSuffix: String? = nil) -> CreatedPullRequestReviewContributionQuery {
			addField(field: "isRestricted", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func occurredAt(aliasSuffix: String? = nil) -> CreatedPullRequestReviewContributionQuery {
			addField(field: "occurredAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pullRequest(aliasSuffix: String? = nil, _ subfields: (PullRequestQuery) -> Void) -> CreatedPullRequestReviewContributionQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)

			addField(field: "pullRequest", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func pullRequestReview(aliasSuffix: String? = nil, _ subfields: (PullRequestReviewQuery) -> Void) -> CreatedPullRequestReviewContributionQuery {
			let subquery = PullRequestReviewQuery()
			subfields(subquery)

			addField(field: "pullRequestReview", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> CreatedPullRequestReviewContributionQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> CreatedPullRequestReviewContributionQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> CreatedPullRequestReviewContributionQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func user(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> CreatedPullRequestReviewContributionQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class CreatedPullRequestReviewContribution: GraphQL.AbstractResponse, GraphQLObject, Contribution {
		public typealias Query = CreatedPullRequestReviewContributionQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "isRestricted":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: CreatedPullRequestReviewContribution.self, field: fieldName, value: fieldValue)
				}
				return value

				case "occurredAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: CreatedPullRequestReviewContribution.self, field: fieldName, value: fieldValue)
				}
				return value

				case "pullRequest":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: CreatedPullRequestReviewContribution.self, field: fieldName, value: fieldValue)
				}
				return try PullRequest(fields: value)

				case "pullRequestReview":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: CreatedPullRequestReviewContribution.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestReview(fields: value)

				case "repository":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: CreatedPullRequestReviewContribution.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: CreatedPullRequestReviewContribution.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: CreatedPullRequestReviewContribution.self, field: fieldName, value: fieldValue)
				}
				return value

				case "user":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: CreatedPullRequestReviewContribution.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				default:
				throw SchemaViolationError(type: CreatedPullRequestReviewContribution.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "CreatedPullRequestReviewContribution" }

		open var isRestricted: Bool {
			return internalGetIsRestricted()
		}

		func internalGetIsRestricted(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isRestricted", aliasSuffix: aliasSuffix) as! Bool
		}

		open var occurredAt: String {
			return internalGetOccurredAt()
		}

		func internalGetOccurredAt(aliasSuffix: String? = nil) -> String {
			return field(field: "occurredAt", aliasSuffix: aliasSuffix) as! String
		}

		open var pullRequest: ExampleSchema.PullRequest {
			return internalGetPullRequest()
		}

		func internalGetPullRequest(aliasSuffix: String? = nil) -> ExampleSchema.PullRequest {
			return field(field: "pullRequest", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequest
		}

		open var pullRequestReview: ExampleSchema.PullRequestReview {
			return internalGetPullRequestReview()
		}

		func internalGetPullRequestReview(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestReview {
			return field(field: "pullRequestReview", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestReview
		}

		open var repository: ExampleSchema.Repository {
			return internalGetRepository()
		}

		func internalGetRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository {
			return field(field: "repository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		open var user: ExampleSchema.User {
			return internalGetUser()
		}

		func internalGetUser(aliasSuffix: String? = nil) -> ExampleSchema.User {
			return field(field: "user", aliasSuffix: aliasSuffix) as! ExampleSchema.User
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "isRestricted":

				return .scalar

				case "occurredAt":

				return .scalar

				case "pullRequest":

				return .object

				case "pullRequestReview":

				return .object

				case "repository":

				return .object

				case "resourcePath":

				return .scalar

				case "url":

				return .scalar

				case "user":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "pullRequest":
				return internalGetPullRequest()

				case "pullRequestReview":
				return internalGetPullRequestReview()

				case "repository":
				return internalGetRepository()

				case "user":
				return internalGetUser()

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

					case "pullRequestReview":
					response.append(internalGetPullRequestReview())
					response.append(contentsOf: internalGetPullRequestReview().childResponseObjectMap())

					case "repository":
					response.append(internalGetRepository())
					response.append(contentsOf: internalGetRepository().childResponseObjectMap())

					case "user":
					response.append(internalGetUser())
					response.append(contentsOf: internalGetUser().childResponseObjectMap())

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
