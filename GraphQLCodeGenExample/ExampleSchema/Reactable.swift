// Generated from graphql_swift_gen gem
import Foundation

public protocol Reactable {
	var typeName: String { get }

	var databaseId: Int32? { get }

	var id: GraphQL.ID { get }

	var reactionGroups: [ExampleSchema.ReactionGroup]? { get }

	var reactions: ExampleSchema.ReactionConnection { get }

	var viewerCanReact: Bool { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class ReactableQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Reactable

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> ReactableQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> ReactableQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func reactionGroups(aliasSuffix: String? = nil, _ subfields: (ReactionGroupQuery) -> Void) -> ReactableQuery {
			let subquery = ReactionGroupQuery()
			subfields(subquery)

			addField(field: "reactionGroups", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func reactions(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, content: ReactionContent? = nil, orderBy: ReactionOrder? = nil, _ subfields: (ReactionConnectionQuery) -> Void) -> ReactableQuery {
			var args: [String] = []

			if let after = after {
				args.append("after:\(GraphQL.quoteString(input: after))")
			}

			if let before = before {
				args.append("before:\(GraphQL.quoteString(input: before))")
			}

			if let first = first {
				args.append("first:\(first)")
			}

			if let last = last {
				args.append("last:\(last)")
			}

			if let content = content {
				args.append("content:\(content.rawValue)")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = ReactionConnectionQuery()
			subfields(subquery)

			addField(field: "reactions", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func viewerCanReact(aliasSuffix: String? = nil) -> ReactableQuery {
			addField(field: "viewerCanReact", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onCommitComment(subfields: (CommitCommentQuery) -> Void) -> ReactableQuery {
			let subquery = CommitCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "CommitComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onIssue(subfields: (IssueQuery) -> Void) -> ReactableQuery {
			let subquery = IssueQuery()
			subfields(subquery)
			addInlineFragment(on: "Issue", subfields: subquery)
			return self
		}

		@discardableResult
		open func onIssueComment(subfields: (IssueCommentQuery) -> Void) -> ReactableQuery {
			let subquery = IssueCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "IssueComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequest(subfields: (PullRequestQuery) -> Void) -> ReactableQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequest", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestReview(subfields: (PullRequestReviewQuery) -> Void) -> ReactableQuery {
			let subquery = PullRequestReviewQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestReview", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestReviewComment(subfields: (PullRequestReviewCommentQuery) -> Void) -> ReactableQuery {
			let subquery = PullRequestReviewCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestReviewComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamDiscussion(subfields: (TeamDiscussionQuery) -> Void) -> ReactableQuery {
			let subquery = TeamDiscussionQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamDiscussion", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamDiscussionComment(subfields: (TeamDiscussionCommentQuery) -> Void) -> ReactableQuery {
			let subquery = TeamDiscussionCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamDiscussionComment", subfields: subquery)
			return self
		}
	}

	open class UnknownReactable: GraphQL.AbstractResponse, GraphQLObject, Reactable {
		public typealias Query = ReactableQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: UnknownReactable.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownReactable.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "reactionGroups":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: UnknownReactable.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try ReactionGroup(fields: $0) }

				case "reactions":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownReactable.self, field: fieldName, value: fieldValue)
				}
				return try ReactionConnection(fields: value)

				case "viewerCanReact":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownReactable.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownReactable.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> Reactable {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownReactable.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "CommitComment":
				return try CommitComment.init(fields: fields)

				case "Issue":
				return try Issue.init(fields: fields)

				case "IssueComment":
				return try IssueComment.init(fields: fields)

				case "PullRequest":
				return try PullRequest.init(fields: fields)

				case "PullRequestReview":
				return try PullRequestReview.init(fields: fields)

				case "PullRequestReviewComment":
				return try PullRequestReviewComment.init(fields: fields)

				case "TeamDiscussion":
				return try TeamDiscussion.init(fields: fields)

				case "TeamDiscussionComment":
				return try TeamDiscussionComment.init(fields: fields)

				default:
				return try UnknownReactable.init(fields: fields)
			}
		}

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

		open var reactionGroups: [ExampleSchema.ReactionGroup]? {
			return internalGetReactionGroups()
		}

		func internalGetReactionGroups(aliasSuffix: String? = nil) -> [ExampleSchema.ReactionGroup]? {
			return field(field: "reactionGroups", aliasSuffix: aliasSuffix) as! [ExampleSchema.ReactionGroup]?
		}

		open var reactions: ExampleSchema.ReactionConnection {
			return internalGetReactions()
		}

		open func aliasedReactions(aliasSuffix: String) -> ExampleSchema.ReactionConnection {
			return internalGetReactions(aliasSuffix: aliasSuffix)
		}

		func internalGetReactions(aliasSuffix: String? = nil) -> ExampleSchema.ReactionConnection {
			return field(field: "reactions", aliasSuffix: aliasSuffix) as! ExampleSchema.ReactionConnection
		}

		open var viewerCanReact: Bool {
			return internalGetViewerCanReact()
		}

		func internalGetViewerCanReact(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanReact", aliasSuffix: aliasSuffix) as! Bool
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "databaseId":

				return .scalar

				case "id":

				return .scalar

				case "reactionGroups":

				return .objectList

				case "reactions":

				return .object

				case "viewerCanReact":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "reactions":
				return internalGetReactions()

				default:
				break
			}
			return nil
		}

		override open func fetchChildObjectList(key: String) -> [GraphQL.AbstractResponse] {
			switch(key) {
				case "reactionGroups":
				return internalGetReactionGroups() ?? []

				default:
				return []
			}
		}

		open func childResponseObjectMap() -> [GraphQL.AbstractResponse]  {
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "reactionGroups":
					if let value = internalGetReactionGroups() {
						value.forEach {
							response.append($0)
							response.append(contentsOf: $0.childResponseObjectMap())
						}
					}

					case "reactions":
					response.append(internalGetReactions())
					response.append(contentsOf: internalGetReactions().childResponseObjectMap())

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
