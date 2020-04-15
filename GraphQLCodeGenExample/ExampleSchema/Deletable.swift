// Generated from graphql_swift_gen gem
import Foundation

public protocol Deletable {
	var typeName: String { get }

	var viewerCanDelete: Bool { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class DeletableQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Deletable

		@discardableResult
		open func viewerCanDelete(aliasSuffix: String? = nil) -> DeletableQuery {
			addField(field: "viewerCanDelete", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onCommitComment(subfields: (CommitCommentQuery) -> Void) -> DeletableQuery {
			let subquery = CommitCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "CommitComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onGistComment(subfields: (GistCommentQuery) -> Void) -> DeletableQuery {
			let subquery = GistCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "GistComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onIssueComment(subfields: (IssueCommentQuery) -> Void) -> DeletableQuery {
			let subquery = IssueCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "IssueComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestReview(subfields: (PullRequestReviewQuery) -> Void) -> DeletableQuery {
			let subquery = PullRequestReviewQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestReview", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestReviewComment(subfields: (PullRequestReviewCommentQuery) -> Void) -> DeletableQuery {
			let subquery = PullRequestReviewCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestReviewComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamDiscussion(subfields: (TeamDiscussionQuery) -> Void) -> DeletableQuery {
			let subquery = TeamDiscussionQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamDiscussion", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamDiscussionComment(subfields: (TeamDiscussionCommentQuery) -> Void) -> DeletableQuery {
			let subquery = TeamDiscussionCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamDiscussionComment", subfields: subquery)
			return self
		}
	}

	open class UnknownDeletable: GraphQL.AbstractResponse, GraphQLObject, Deletable {
		public typealias Query = DeletableQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "viewerCanDelete":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownDeletable.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownDeletable.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> Deletable {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownDeletable.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "CommitComment":
				return try CommitComment.init(fields: fields)

				case "GistComment":
				return try GistComment.init(fields: fields)

				case "IssueComment":
				return try IssueComment.init(fields: fields)

				case "PullRequestReview":
				return try PullRequestReview.init(fields: fields)

				case "PullRequestReviewComment":
				return try PullRequestReviewComment.init(fields: fields)

				case "TeamDiscussion":
				return try TeamDiscussion.init(fields: fields)

				case "TeamDiscussionComment":
				return try TeamDiscussionComment.init(fields: fields)

				default:
				return try UnknownDeletable.init(fields: fields)
			}
		}

		open var viewerCanDelete: Bool {
			return internalGetViewerCanDelete()
		}

		func internalGetViewerCanDelete(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanDelete", aliasSuffix: aliasSuffix) as! Bool
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "viewerCanDelete":

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
