// Generated from graphql_swift_gen gem
import Foundation

public protocol UniformResourceLocatable {
	var typeName: String { get }

	var resourcePath: String { get }

	var url: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class UniformResourceLocatableQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UniformResourceLocatable

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> UniformResourceLocatableQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> UniformResourceLocatableQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onBot(subfields: (BotQuery) -> Void) -> UniformResourceLocatableQuery {
			let subquery = BotQuery()
			subfields(subquery)
			addInlineFragment(on: "Bot", subfields: subquery)
			return self
		}

		@discardableResult
		open func onClosedEvent(subfields: (ClosedEventQuery) -> Void) -> UniformResourceLocatableQuery {
			let subquery = ClosedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ClosedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCommit(subfields: (CommitQuery) -> Void) -> UniformResourceLocatableQuery {
			let subquery = CommitQuery()
			subfields(subquery)
			addInlineFragment(on: "Commit", subfields: subquery)
			return self
		}

		@discardableResult
		open func onConvertToDraftEvent(subfields: (ConvertToDraftEventQuery) -> Void) -> UniformResourceLocatableQuery {
			let subquery = ConvertToDraftEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ConvertToDraftEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCrossReferencedEvent(subfields: (CrossReferencedEventQuery) -> Void) -> UniformResourceLocatableQuery {
			let subquery = CrossReferencedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "CrossReferencedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onGist(subfields: (GistQuery) -> Void) -> UniformResourceLocatableQuery {
			let subquery = GistQuery()
			subfields(subquery)
			addInlineFragment(on: "Gist", subfields: subquery)
			return self
		}

		@discardableResult
		open func onIssue(subfields: (IssueQuery) -> Void) -> UniformResourceLocatableQuery {
			let subquery = IssueQuery()
			subfields(subquery)
			addInlineFragment(on: "Issue", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMannequin(subfields: (MannequinQuery) -> Void) -> UniformResourceLocatableQuery {
			let subquery = MannequinQuery()
			subfields(subquery)
			addInlineFragment(on: "Mannequin", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMergedEvent(subfields: (MergedEventQuery) -> Void) -> UniformResourceLocatableQuery {
			let subquery = MergedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "MergedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMilestone(subfields: (MilestoneQuery) -> Void) -> UniformResourceLocatableQuery {
			let subquery = MilestoneQuery()
			subfields(subquery)
			addInlineFragment(on: "Milestone", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrganization(subfields: (OrganizationQuery) -> Void) -> UniformResourceLocatableQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)
			addInlineFragment(on: "Organization", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequest(subfields: (PullRequestQuery) -> Void) -> UniformResourceLocatableQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequest", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestCommit(subfields: (PullRequestCommitQuery) -> Void) -> UniformResourceLocatableQuery {
			let subquery = PullRequestCommitQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestCommit", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReadyForReviewEvent(subfields: (ReadyForReviewEventQuery) -> Void) -> UniformResourceLocatableQuery {
			let subquery = ReadyForReviewEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReadyForReviewEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRelease(subfields: (ReleaseQuery) -> Void) -> UniformResourceLocatableQuery {
			let subquery = ReleaseQuery()
			subfields(subquery)
			addInlineFragment(on: "Release", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepository(subfields: (RepositoryQuery) -> Void) -> UniformResourceLocatableQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)
			addInlineFragment(on: "Repository", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepositoryTopic(subfields: (RepositoryTopicQuery) -> Void) -> UniformResourceLocatableQuery {
			let subquery = RepositoryTopicQuery()
			subfields(subquery)
			addInlineFragment(on: "RepositoryTopic", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReviewDismissedEvent(subfields: (ReviewDismissedEventQuery) -> Void) -> UniformResourceLocatableQuery {
			let subquery = ReviewDismissedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReviewDismissedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamDiscussion(subfields: (TeamDiscussionQuery) -> Void) -> UniformResourceLocatableQuery {
			let subquery = TeamDiscussionQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamDiscussion", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamDiscussionComment(subfields: (TeamDiscussionCommentQuery) -> Void) -> UniformResourceLocatableQuery {
			let subquery = TeamDiscussionCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamDiscussionComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUser(subfields: (UserQuery) -> Void) -> UniformResourceLocatableQuery {
			let subquery = UserQuery()
			subfields(subquery)
			addInlineFragment(on: "User", subfields: subquery)
			return self
		}
	}

	open class UnknownUniformResourceLocatable: GraphQL.AbstractResponse, GraphQLObject, UniformResourceLocatable {
		public typealias Query = UniformResourceLocatableQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownUniformResourceLocatable.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownUniformResourceLocatable.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownUniformResourceLocatable.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> UniformResourceLocatable {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownUniformResourceLocatable.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Bot":
				return try Bot.init(fields: fields)

				case "ClosedEvent":
				return try ClosedEvent.init(fields: fields)

				case "Commit":
				return try Commit.init(fields: fields)

				case "ConvertToDraftEvent":
				return try ConvertToDraftEvent.init(fields: fields)

				case "CrossReferencedEvent":
				return try CrossReferencedEvent.init(fields: fields)

				case "Gist":
				return try Gist.init(fields: fields)

				case "Issue":
				return try Issue.init(fields: fields)

				case "Mannequin":
				return try Mannequin.init(fields: fields)

				case "MergedEvent":
				return try MergedEvent.init(fields: fields)

				case "Milestone":
				return try Milestone.init(fields: fields)

				case "Organization":
				return try Organization.init(fields: fields)

				case "PullRequest":
				return try PullRequest.init(fields: fields)

				case "PullRequestCommit":
				return try PullRequestCommit.init(fields: fields)

				case "ReadyForReviewEvent":
				return try ReadyForReviewEvent.init(fields: fields)

				case "Release":
				return try Release.init(fields: fields)

				case "Repository":
				return try Repository.init(fields: fields)

				case "RepositoryTopic":
				return try RepositoryTopic.init(fields: fields)

				case "ReviewDismissedEvent":
				return try ReviewDismissedEvent.init(fields: fields)

				case "TeamDiscussion":
				return try TeamDiscussion.init(fields: fields)

				case "TeamDiscussionComment":
				return try TeamDiscussionComment.init(fields: fields)

				case "User":
				return try User.init(fields: fields)

				default:
				return try UnknownUniformResourceLocatable.init(fields: fields)
			}
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

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "resourcePath":

				return .scalar

				case "url":

				return .scalar

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
