// Generated from graphql_swift_gen gem
import Foundation

public protocol Contribution {
	var typeName: String { get }

	var isRestricted: Bool { get }

	var occurredAt: String { get }

	var resourcePath: String { get }

	var url: String { get }

	var user: ExampleSchema.User { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class ContributionQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Contribution

		@discardableResult
		open func isRestricted(aliasSuffix: String? = nil) -> ContributionQuery {
			addField(field: "isRestricted", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func occurredAt(aliasSuffix: String? = nil) -> ContributionQuery {
			addField(field: "occurredAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> ContributionQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> ContributionQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func user(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> ContributionQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onCreatedCommitContribution(subfields: (CreatedCommitContributionQuery) -> Void) -> ContributionQuery {
			let subquery = CreatedCommitContributionQuery()
			subfields(subquery)
			addInlineFragment(on: "CreatedCommitContribution", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCreatedIssueContribution(subfields: (CreatedIssueContributionQuery) -> Void) -> ContributionQuery {
			let subquery = CreatedIssueContributionQuery()
			subfields(subquery)
			addInlineFragment(on: "CreatedIssueContribution", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCreatedPullRequestContribution(subfields: (CreatedPullRequestContributionQuery) -> Void) -> ContributionQuery {
			let subquery = CreatedPullRequestContributionQuery()
			subfields(subquery)
			addInlineFragment(on: "CreatedPullRequestContribution", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCreatedPullRequestReviewContribution(subfields: (CreatedPullRequestReviewContributionQuery) -> Void) -> ContributionQuery {
			let subquery = CreatedPullRequestReviewContributionQuery()
			subfields(subquery)
			addInlineFragment(on: "CreatedPullRequestReviewContribution", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCreatedRepositoryContribution(subfields: (CreatedRepositoryContributionQuery) -> Void) -> ContributionQuery {
			let subquery = CreatedRepositoryContributionQuery()
			subfields(subquery)
			addInlineFragment(on: "CreatedRepositoryContribution", subfields: subquery)
			return self
		}

		@discardableResult
		open func onJoinedGitHubContribution(subfields: (JoinedGitHubContributionQuery) -> Void) -> ContributionQuery {
			let subquery = JoinedGitHubContributionQuery()
			subfields(subquery)
			addInlineFragment(on: "JoinedGitHubContribution", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRestrictedContribution(subfields: (RestrictedContributionQuery) -> Void) -> ContributionQuery {
			let subquery = RestrictedContributionQuery()
			subfields(subquery)
			addInlineFragment(on: "RestrictedContribution", subfields: subquery)
			return self
		}
	}

	open class UnknownContribution: GraphQL.AbstractResponse, GraphQLObject, Contribution {
		public typealias Query = ContributionQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "isRestricted":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownContribution.self, field: fieldName, value: fieldValue)
				}
				return value

				case "occurredAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownContribution.self, field: fieldName, value: fieldValue)
				}
				return value

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownContribution.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownContribution.self, field: fieldName, value: fieldValue)
				}
				return value

				case "user":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownContribution.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				default:
				throw SchemaViolationError(type: UnknownContribution.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> Contribution {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownContribution.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "CreatedCommitContribution":
				return try CreatedCommitContribution.init(fields: fields)

				case "CreatedIssueContribution":
				return try CreatedIssueContribution.init(fields: fields)

				case "CreatedPullRequestContribution":
				return try CreatedPullRequestContribution.init(fields: fields)

				case "CreatedPullRequestReviewContribution":
				return try CreatedPullRequestReviewContribution.init(fields: fields)

				case "CreatedRepositoryContribution":
				return try CreatedRepositoryContribution.init(fields: fields)

				case "JoinedGitHubContribution":
				return try JoinedGitHubContribution.init(fields: fields)

				case "RestrictedContribution":
				return try RestrictedContribution.init(fields: fields)

				default:
				return try UnknownContribution.init(fields: fields)
			}
		}

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
