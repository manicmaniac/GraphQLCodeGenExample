// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class PullRequestReviewCommentQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = PullRequestReviewComment

		@discardableResult
		open func author(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> PullRequestReviewCommentQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "author", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func authorAssociation(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "authorAssociation", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func body(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "body", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func bodyHtml(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "bodyHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func bodyText(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "bodyText", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func commit(aliasSuffix: String? = nil, _ subfields: (CommitQuery) -> Void) -> PullRequestReviewCommentQuery {
			let subquery = CommitQuery()
			subfields(subquery)

			addField(field: "commit", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func createdViaEmail(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "createdViaEmail", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func diffHunk(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "diffHunk", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func draftedAt(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "draftedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func editor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> PullRequestReviewCommentQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "editor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func includesCreatedEdit(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "includesCreatedEdit", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isMinimized(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "isMinimized", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func lastEditedAt(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "lastEditedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func minimizedReason(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "minimizedReason", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func originalCommit(aliasSuffix: String? = nil, _ subfields: (CommitQuery) -> Void) -> PullRequestReviewCommentQuery {
			let subquery = CommitQuery()
			subfields(subquery)

			addField(field: "originalCommit", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func originalPosition(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "originalPosition", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func outdated(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "outdated", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func path(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "path", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func position(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "position", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func publishedAt(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "publishedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pullRequest(aliasSuffix: String? = nil, _ subfields: (PullRequestQuery) -> Void) -> PullRequestReviewCommentQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)

			addField(field: "pullRequest", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func pullRequestReview(aliasSuffix: String? = nil, _ subfields: (PullRequestReviewQuery) -> Void) -> PullRequestReviewCommentQuery {
			let subquery = PullRequestReviewQuery()
			subfields(subquery)

			addField(field: "pullRequestReview", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func reactionGroups(aliasSuffix: String? = nil, _ subfields: (ReactionGroupQuery) -> Void) -> PullRequestReviewCommentQuery {
			let subquery = ReactionGroupQuery()
			subfields(subquery)

			addField(field: "reactionGroups", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func reactions(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, content: ReactionContent? = nil, orderBy: ReactionOrder? = nil, _ subfields: (ReactionConnectionQuery) -> Void) -> PullRequestReviewCommentQuery {
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
		open func replyTo(aliasSuffix: String? = nil, _ subfields: (PullRequestReviewCommentQuery) -> Void) -> PullRequestReviewCommentQuery {
			let subquery = PullRequestReviewCommentQuery()
			subfields(subquery)

			addField(field: "replyTo", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> PullRequestReviewCommentQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func state(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "state", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func userContentEdits(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (UserContentEditConnectionQuery) -> Void) -> PullRequestReviewCommentQuery {
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

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = UserContentEditConnectionQuery()
			subfields(subquery)

			addField(field: "userContentEdits", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func viewerCanDelete(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "viewerCanDelete", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanMinimize(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "viewerCanMinimize", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanReact(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "viewerCanReact", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanUpdate(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "viewerCanUpdate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCannotUpdateReasons(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "viewerCannotUpdateReasons", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerDidAuthor(aliasSuffix: String? = nil) -> PullRequestReviewCommentQuery {
			addField(field: "viewerDidAuthor", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class PullRequestReviewComment: GraphQL.AbstractResponse, GraphQLObject, Comment, Deletable, Minimizable, Node, PullRequestTimelineItem, Reactable, RepositoryNode, Updatable, UpdatableComment {
		public typealias Query = PullRequestReviewCommentQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "author":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "authorAssociation":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return CommentAuthorAssociation(rawValue: value) ?? .unknownValue

				case "body":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "bodyHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "bodyText":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "commit":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return try Commit(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdViaEmail":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "diffHunk":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "draftedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "editor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "includesCreatedEdit":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isMinimized":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "lastEditedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "minimizedReason":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "originalCommit":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return try Commit(fields: value)

				case "originalPosition":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "outdated":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "path":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "position":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "publishedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "pullRequest":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return try PullRequest(fields: value)

				case "pullRequestReview":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestReview(fields: value)

				case "reactionGroups":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try ReactionGroup(fields: $0) }

				case "reactions":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return try ReactionConnection(fields: value)

				case "replyTo":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestReviewComment(fields: value)

				case "repository":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "state":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return PullRequestReviewCommentState(rawValue: value) ?? .unknownValue

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "userContentEdits":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return try UserContentEditConnection(fields: value)

				case "viewerCanDelete":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanMinimize":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanReact":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanUpdate":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCannotUpdateReasons":
				guard let value = value as? [String] else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value.map { return CommentCannotUpdateReason(rawValue: $0) ?? .unknownValue }

				case "viewerDidAuthor":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: PullRequestReviewComment.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "PullRequestReviewComment" }

		open var author: Actor? {
			return internalGetAuthor()
		}

		func internalGetAuthor(aliasSuffix: String? = nil) -> Actor? {
			return field(field: "author", aliasSuffix: aliasSuffix) as! Actor?
		}

		open var authorAssociation: ExampleSchema.CommentAuthorAssociation {
			return internalGetAuthorAssociation()
		}

		func internalGetAuthorAssociation(aliasSuffix: String? = nil) -> ExampleSchema.CommentAuthorAssociation {
			return field(field: "authorAssociation", aliasSuffix: aliasSuffix) as! ExampleSchema.CommentAuthorAssociation
		}

		open var body: String {
			return internalGetBody()
		}

		func internalGetBody(aliasSuffix: String? = nil) -> String {
			return field(field: "body", aliasSuffix: aliasSuffix) as! String
		}

		open var bodyHtml: String {
			return internalGetBodyHtml()
		}

		func internalGetBodyHtml(aliasSuffix: String? = nil) -> String {
			return field(field: "bodyHTML", aliasSuffix: aliasSuffix) as! String
		}

		open var bodyText: String {
			return internalGetBodyText()
		}

		func internalGetBodyText(aliasSuffix: String? = nil) -> String {
			return field(field: "bodyText", aliasSuffix: aliasSuffix) as! String
		}

		open var commit: ExampleSchema.Commit? {
			return internalGetCommit()
		}

		func internalGetCommit(aliasSuffix: String? = nil) -> ExampleSchema.Commit? {
			return field(field: "commit", aliasSuffix: aliasSuffix) as! ExampleSchema.Commit?
		}

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var createdViaEmail: Bool {
			return internalGetCreatedViaEmail()
		}

		func internalGetCreatedViaEmail(aliasSuffix: String? = nil) -> Bool {
			return field(field: "createdViaEmail", aliasSuffix: aliasSuffix) as! Bool
		}

		open var databaseId: Int32? {
			return internalGetDatabaseId()
		}

		func internalGetDatabaseId(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "databaseId", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var diffHunk: String {
			return internalGetDiffHunk()
		}

		func internalGetDiffHunk(aliasSuffix: String? = nil) -> String {
			return field(field: "diffHunk", aliasSuffix: aliasSuffix) as! String
		}

		open var draftedAt: String {
			return internalGetDraftedAt()
		}

		func internalGetDraftedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "draftedAt", aliasSuffix: aliasSuffix) as! String
		}

		open var editor: Actor? {
			return internalGetEditor()
		}

		func internalGetEditor(aliasSuffix: String? = nil) -> Actor? {
			return field(field: "editor", aliasSuffix: aliasSuffix) as! Actor?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var includesCreatedEdit: Bool {
			return internalGetIncludesCreatedEdit()
		}

		func internalGetIncludesCreatedEdit(aliasSuffix: String? = nil) -> Bool {
			return field(field: "includesCreatedEdit", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isMinimized: Bool {
			return internalGetIsMinimized()
		}

		func internalGetIsMinimized(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isMinimized", aliasSuffix: aliasSuffix) as! Bool
		}

		open var lastEditedAt: String? {
			return internalGetLastEditedAt()
		}

		func internalGetLastEditedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "lastEditedAt", aliasSuffix: aliasSuffix) as! String?
		}

		open var minimizedReason: String? {
			return internalGetMinimizedReason()
		}

		func internalGetMinimizedReason(aliasSuffix: String? = nil) -> String? {
			return field(field: "minimizedReason", aliasSuffix: aliasSuffix) as! String?
		}

		open var originalCommit: ExampleSchema.Commit? {
			return internalGetOriginalCommit()
		}

		func internalGetOriginalCommit(aliasSuffix: String? = nil) -> ExampleSchema.Commit? {
			return field(field: "originalCommit", aliasSuffix: aliasSuffix) as! ExampleSchema.Commit?
		}

		open var originalPosition: Int32 {
			return internalGetOriginalPosition()
		}

		func internalGetOriginalPosition(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "originalPosition", aliasSuffix: aliasSuffix) as! Int32
		}

		open var outdated: Bool {
			return internalGetOutdated()
		}

		func internalGetOutdated(aliasSuffix: String? = nil) -> Bool {
			return field(field: "outdated", aliasSuffix: aliasSuffix) as! Bool
		}

		open var path: String {
			return internalGetPath()
		}

		func internalGetPath(aliasSuffix: String? = nil) -> String {
			return field(field: "path", aliasSuffix: aliasSuffix) as! String
		}

		open var position: Int32? {
			return internalGetPosition()
		}

		func internalGetPosition(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "position", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var publishedAt: String? {
			return internalGetPublishedAt()
		}

		func internalGetPublishedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "publishedAt", aliasSuffix: aliasSuffix) as! String?
		}

		open var pullRequest: ExampleSchema.PullRequest {
			return internalGetPullRequest()
		}

		func internalGetPullRequest(aliasSuffix: String? = nil) -> ExampleSchema.PullRequest {
			return field(field: "pullRequest", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequest
		}

		open var pullRequestReview: ExampleSchema.PullRequestReview? {
			return internalGetPullRequestReview()
		}

		func internalGetPullRequestReview(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestReview? {
			return field(field: "pullRequestReview", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestReview?
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

		open var replyTo: ExampleSchema.PullRequestReviewComment? {
			return internalGetReplyTo()
		}

		func internalGetReplyTo(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestReviewComment? {
			return field(field: "replyTo", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestReviewComment?
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

		open var state: ExampleSchema.PullRequestReviewCommentState {
			return internalGetState()
		}

		func internalGetState(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestReviewCommentState {
			return field(field: "state", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestReviewCommentState
		}

		open var updatedAt: String {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String
		}

		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		open var userContentEdits: ExampleSchema.UserContentEditConnection? {
			return internalGetUserContentEdits()
		}

		open func aliasedUserContentEdits(aliasSuffix: String) -> ExampleSchema.UserContentEditConnection? {
			return internalGetUserContentEdits(aliasSuffix: aliasSuffix)
		}

		func internalGetUserContentEdits(aliasSuffix: String? = nil) -> ExampleSchema.UserContentEditConnection? {
			return field(field: "userContentEdits", aliasSuffix: aliasSuffix) as! ExampleSchema.UserContentEditConnection?
		}

		open var viewerCanDelete: Bool {
			return internalGetViewerCanDelete()
		}

		func internalGetViewerCanDelete(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanDelete", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCanMinimize: Bool {
			return internalGetViewerCanMinimize()
		}

		func internalGetViewerCanMinimize(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanMinimize", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCanReact: Bool {
			return internalGetViewerCanReact()
		}

		func internalGetViewerCanReact(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanReact", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCanUpdate: Bool {
			return internalGetViewerCanUpdate()
		}

		func internalGetViewerCanUpdate(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanUpdate", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCannotUpdateReasons: [ExampleSchema.CommentCannotUpdateReason] {
			return internalGetViewerCannotUpdateReasons()
		}

		func internalGetViewerCannotUpdateReasons(aliasSuffix: String? = nil) -> [ExampleSchema.CommentCannotUpdateReason] {
			return field(field: "viewerCannotUpdateReasons", aliasSuffix: aliasSuffix) as! [ExampleSchema.CommentCannotUpdateReason]
		}

		open var viewerDidAuthor: Bool {
			return internalGetViewerDidAuthor()
		}

		func internalGetViewerDidAuthor(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerDidAuthor", aliasSuffix: aliasSuffix) as! Bool
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "author":

				return .object

				case "authorAssociation":

				return .scalar

				case "body":

				return .scalar

				case "bodyHTML":

				return .scalar

				case "bodyText":

				return .scalar

				case "commit":

				return .object

				case "createdAt":

				return .scalar

				case "createdViaEmail":

				return .scalar

				case "databaseId":

				return .scalar

				case "diffHunk":

				return .scalar

				case "draftedAt":

				return .scalar

				case "editor":

				return .object

				case "id":

				return .scalar

				case "includesCreatedEdit":

				return .scalar

				case "isMinimized":

				return .scalar

				case "lastEditedAt":

				return .scalar

				case "minimizedReason":

				return .scalar

				case "originalCommit":

				return .object

				case "originalPosition":

				return .scalar

				case "outdated":

				return .scalar

				case "path":

				return .scalar

				case "position":

				return .scalar

				case "publishedAt":

				return .scalar

				case "pullRequest":

				return .object

				case "pullRequestReview":

				return .object

				case "reactionGroups":

				return .objectList

				case "reactions":

				return .object

				case "replyTo":

				return .object

				case "repository":

				return .object

				case "resourcePath":

				return .scalar

				case "state":

				return .scalar

				case "updatedAt":

				return .scalar

				case "url":

				return .scalar

				case "userContentEdits":

				return .object

				case "viewerCanDelete":

				return .scalar

				case "viewerCanMinimize":

				return .scalar

				case "viewerCanReact":

				return .scalar

				case "viewerCanUpdate":

				return .scalar

				case "viewerCannotUpdateReasons":

				return .scalarList

				case "viewerDidAuthor":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "author":
				return internalGetAuthor()?.responseObject()

				case "commit":
				return internalGetCommit()

				case "editor":
				return internalGetEditor()?.responseObject()

				case "originalCommit":
				return internalGetOriginalCommit()

				case "pullRequest":
				return internalGetPullRequest()

				case "pullRequestReview":
				return internalGetPullRequestReview()

				case "reactions":
				return internalGetReactions()

				case "replyTo":
				return internalGetReplyTo()

				case "repository":
				return internalGetRepository()

				case "userContentEdits":
				return internalGetUserContentEdits()

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
					case "author":
					if let value = internalGetAuthor() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "commit":
					if let value = internalGetCommit() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "editor":
					if let value = internalGetEditor() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "originalCommit":
					if let value = internalGetOriginalCommit() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "pullRequest":
					response.append(internalGetPullRequest())
					response.append(contentsOf: internalGetPullRequest().childResponseObjectMap())

					case "pullRequestReview":
					if let value = internalGetPullRequestReview() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

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

					case "replyTo":
					if let value = internalGetReplyTo() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "repository":
					response.append(internalGetRepository())
					response.append(contentsOf: internalGetRepository().childResponseObjectMap())

					case "userContentEdits":
					if let value = internalGetUserContentEdits() {
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
