// Generated from graphql_swift_gen gem
import Foundation

public protocol RepositoryNode {
	var typeName: String { get }

	var repository: ExampleSchema.Repository { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class RepositoryNodeQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RepositoryNode

		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> RepositoryNodeQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onCommitComment(subfields: (CommitCommentQuery) -> Void) -> RepositoryNodeQuery {
			let subquery = CommitCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "CommitComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCommitCommentThread(subfields: (CommitCommentThreadQuery) -> Void) -> RepositoryNodeQuery {
			let subquery = CommitCommentThreadQuery()
			subfields(subquery)
			addInlineFragment(on: "CommitCommentThread", subfields: subquery)
			return self
		}

		@discardableResult
		open func onIssue(subfields: (IssueQuery) -> Void) -> RepositoryNodeQuery {
			let subquery = IssueQuery()
			subfields(subquery)
			addInlineFragment(on: "Issue", subfields: subquery)
			return self
		}

		@discardableResult
		open func onIssueComment(subfields: (IssueCommentQuery) -> Void) -> RepositoryNodeQuery {
			let subquery = IssueCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "IssueComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequest(subfields: (PullRequestQuery) -> Void) -> RepositoryNodeQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequest", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestCommitCommentThread(subfields: (PullRequestCommitCommentThreadQuery) -> Void) -> RepositoryNodeQuery {
			let subquery = PullRequestCommitCommentThreadQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestCommitCommentThread", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestReview(subfields: (PullRequestReviewQuery) -> Void) -> RepositoryNodeQuery {
			let subquery = PullRequestReviewQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestReview", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestReviewComment(subfields: (PullRequestReviewCommentQuery) -> Void) -> RepositoryNodeQuery {
			let subquery = PullRequestReviewCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestReviewComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepositoryVulnerabilityAlert(subfields: (RepositoryVulnerabilityAlertQuery) -> Void) -> RepositoryNodeQuery {
			let subquery = RepositoryVulnerabilityAlertQuery()
			subfields(subquery)
			addInlineFragment(on: "RepositoryVulnerabilityAlert", subfields: subquery)
			return self
		}
	}

	open class UnknownRepositoryNode: GraphQL.AbstractResponse, GraphQLObject, RepositoryNode {
		public typealias Query = RepositoryNodeQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "repository":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownRepositoryNode.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				default:
				throw SchemaViolationError(type: UnknownRepositoryNode.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> RepositoryNode {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownRepositoryNode.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "CommitComment":
				return try CommitComment.init(fields: fields)

				case "CommitCommentThread":
				return try CommitCommentThread.init(fields: fields)

				case "Issue":
				return try Issue.init(fields: fields)

				case "IssueComment":
				return try IssueComment.init(fields: fields)

				case "PullRequest":
				return try PullRequest.init(fields: fields)

				case "PullRequestCommitCommentThread":
				return try PullRequestCommitCommentThread.init(fields: fields)

				case "PullRequestReview":
				return try PullRequestReview.init(fields: fields)

				case "PullRequestReviewComment":
				return try PullRequestReviewComment.init(fields: fields)

				case "RepositoryVulnerabilityAlert":
				return try RepositoryVulnerabilityAlert.init(fields: fields)

				default:
				return try UnknownRepositoryNode.init(fields: fields)
			}
		}

		open var repository: ExampleSchema.Repository {
			return internalGetRepository()
		}

		func internalGetRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository {
			return field(field: "repository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "repository":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "repository":
				return internalGetRepository()

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
					case "repository":
					response.append(internalGetRepository())
					response.append(contentsOf: internalGetRepository().childResponseObjectMap())

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
