// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class TeamDiscussionQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = TeamDiscussion

		@discardableResult
		open func author(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> TeamDiscussionQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "author", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func authorAssociation(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "authorAssociation", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func body(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "body", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func bodyHtml(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "bodyHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func bodyText(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "bodyText", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func bodyVersion(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "bodyVersion", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func comments(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: TeamDiscussionCommentOrder? = nil, fromComment: Int32? = nil, _ subfields: (TeamDiscussionCommentConnectionQuery) -> Void) -> TeamDiscussionQuery {
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

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			if let fromComment = fromComment {
				args.append("fromComment:\(fromComment)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = TeamDiscussionCommentConnectionQuery()
			subfields(subquery)

			addField(field: "comments", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func commentsResourcePath(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "commentsResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func commentsUrl(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "commentsUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func createdViaEmail(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "createdViaEmail", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func editor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> TeamDiscussionQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "editor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func includesCreatedEdit(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "includesCreatedEdit", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isPinned(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "isPinned", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isPrivate(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "isPrivate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func lastEditedAt(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "lastEditedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func number(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "number", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func publishedAt(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "publishedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func reactionGroups(aliasSuffix: String? = nil, _ subfields: (ReactionGroupQuery) -> Void) -> TeamDiscussionQuery {
			let subquery = ReactionGroupQuery()
			subfields(subquery)

			addField(field: "reactionGroups", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func reactions(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, content: ReactionContent? = nil, orderBy: ReactionOrder? = nil, _ subfields: (ReactionConnectionQuery) -> Void) -> TeamDiscussionQuery {
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
		open func resourcePath(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func team(aliasSuffix: String? = nil, _ subfields: (TeamQuery) -> Void) -> TeamDiscussionQuery {
			let subquery = TeamQuery()
			subfields(subquery)

			addField(field: "team", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func title(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "title", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func userContentEdits(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (UserContentEditConnectionQuery) -> Void) -> TeamDiscussionQuery {
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
		open func viewerCanDelete(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "viewerCanDelete", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanPin(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "viewerCanPin", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanReact(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "viewerCanReact", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanSubscribe(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "viewerCanSubscribe", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanUpdate(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "viewerCanUpdate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCannotUpdateReasons(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "viewerCannotUpdateReasons", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerDidAuthor(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "viewerDidAuthor", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerSubscription(aliasSuffix: String? = nil) -> TeamDiscussionQuery {
			addField(field: "viewerSubscription", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class TeamDiscussion: GraphQL.AbstractResponse, GraphQLObject, Comment, Deletable, Node, Reactable, Subscribable, UniformResourceLocatable, Updatable, UpdatableComment {
		public typealias Query = TeamDiscussionQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "author":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "authorAssociation":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return CommentAuthorAssociation(rawValue: value) ?? .unknownValue

				case "body":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "bodyHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "bodyText":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "bodyVersion":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "comments":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return try TeamDiscussionCommentConnection(fields: value)

				case "commentsResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "commentsUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdViaEmail":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "editor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "includesCreatedEdit":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isPinned":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isPrivate":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "lastEditedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "number":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "publishedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "reactionGroups":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try ReactionGroup(fields: $0) }

				case "reactions":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return try ReactionConnection(fields: value)

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "team":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return try Team(fields: value)

				case "title":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "userContentEdits":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return try UserContentEditConnection(fields: value)

				case "viewerCanDelete":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanPin":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanReact":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanSubscribe":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanUpdate":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCannotUpdateReasons":
				guard let value = value as? [String] else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value.map { return CommentCannotUpdateReason(rawValue: $0) ?? .unknownValue }

				case "viewerDidAuthor":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerSubscription":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
				}
				return SubscriptionState(rawValue: value) ?? .unknownValue

				default:
				throw SchemaViolationError(type: TeamDiscussion.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "TeamDiscussion" }

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

		open var bodyVersion: String {
			return internalGetBodyVersion()
		}

		func internalGetBodyVersion(aliasSuffix: String? = nil) -> String {
			return field(field: "bodyVersion", aliasSuffix: aliasSuffix) as! String
		}

		open var comments: ExampleSchema.TeamDiscussionCommentConnection {
			return internalGetComments()
		}

		open func aliasedComments(aliasSuffix: String) -> ExampleSchema.TeamDiscussionCommentConnection {
			return internalGetComments(aliasSuffix: aliasSuffix)
		}

		func internalGetComments(aliasSuffix: String? = nil) -> ExampleSchema.TeamDiscussionCommentConnection {
			return field(field: "comments", aliasSuffix: aliasSuffix) as! ExampleSchema.TeamDiscussionCommentConnection
		}

		open var commentsResourcePath: String {
			return internalGetCommentsResourcePath()
		}

		func internalGetCommentsResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "commentsResourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var commentsUrl: String {
			return internalGetCommentsUrl()
		}

		func internalGetCommentsUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "commentsUrl", aliasSuffix: aliasSuffix) as! String
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

		open var isPinned: Bool {
			return internalGetIsPinned()
		}

		func internalGetIsPinned(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isPinned", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isPrivate: Bool {
			return internalGetIsPrivate()
		}

		func internalGetIsPrivate(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isPrivate", aliasSuffix: aliasSuffix) as! Bool
		}

		open var lastEditedAt: String? {
			return internalGetLastEditedAt()
		}

		func internalGetLastEditedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "lastEditedAt", aliasSuffix: aliasSuffix) as! String?
		}

		open var number: Int32 {
			return internalGetNumber()
		}

		func internalGetNumber(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "number", aliasSuffix: aliasSuffix) as! Int32
		}

		open var publishedAt: String? {
			return internalGetPublishedAt()
		}

		func internalGetPublishedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "publishedAt", aliasSuffix: aliasSuffix) as! String?
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

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var team: ExampleSchema.Team {
			return internalGetTeam()
		}

		func internalGetTeam(aliasSuffix: String? = nil) -> ExampleSchema.Team {
			return field(field: "team", aliasSuffix: aliasSuffix) as! ExampleSchema.Team
		}

		open var title: String {
			return internalGetTitle()
		}

		func internalGetTitle(aliasSuffix: String? = nil) -> String {
			return field(field: "title", aliasSuffix: aliasSuffix) as! String
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

		open var viewerCanPin: Bool {
			return internalGetViewerCanPin()
		}

		func internalGetViewerCanPin(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanPin", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCanReact: Bool {
			return internalGetViewerCanReact()
		}

		func internalGetViewerCanReact(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanReact", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCanSubscribe: Bool {
			return internalGetViewerCanSubscribe()
		}

		func internalGetViewerCanSubscribe(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanSubscribe", aliasSuffix: aliasSuffix) as! Bool
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

		open var viewerSubscription: ExampleSchema.SubscriptionState? {
			return internalGetViewerSubscription()
		}

		func internalGetViewerSubscription(aliasSuffix: String? = nil) -> ExampleSchema.SubscriptionState? {
			return field(field: "viewerSubscription", aliasSuffix: aliasSuffix) as! ExampleSchema.SubscriptionState?
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

				case "bodyVersion":

				return .scalar

				case "comments":

				return .object

				case "commentsResourcePath":

				return .scalar

				case "commentsUrl":

				return .scalar

				case "createdAt":

				return .scalar

				case "createdViaEmail":

				return .scalar

				case "databaseId":

				return .scalar

				case "editor":

				return .object

				case "id":

				return .scalar

				case "includesCreatedEdit":

				return .scalar

				case "isPinned":

				return .scalar

				case "isPrivate":

				return .scalar

				case "lastEditedAt":

				return .scalar

				case "number":

				return .scalar

				case "publishedAt":

				return .scalar

				case "reactionGroups":

				return .objectList

				case "reactions":

				return .object

				case "resourcePath":

				return .scalar

				case "team":

				return .object

				case "title":

				return .scalar

				case "updatedAt":

				return .scalar

				case "url":

				return .scalar

				case "userContentEdits":

				return .object

				case "viewerCanDelete":

				return .scalar

				case "viewerCanPin":

				return .scalar

				case "viewerCanReact":

				return .scalar

				case "viewerCanSubscribe":

				return .scalar

				case "viewerCanUpdate":

				return .scalar

				case "viewerCannotUpdateReasons":

				return .scalarList

				case "viewerDidAuthor":

				return .scalar

				case "viewerSubscription":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "author":
				return internalGetAuthor()?.responseObject()

				case "comments":
				return internalGetComments()

				case "editor":
				return internalGetEditor()?.responseObject()

				case "reactions":
				return internalGetReactions()

				case "team":
				return internalGetTeam()

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

					case "comments":
					response.append(internalGetComments())
					response.append(contentsOf: internalGetComments().childResponseObjectMap())

					case "editor":
					if let value = internalGetEditor() {
						response.append(value as! GraphQL.AbstractResponse)
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

					case "team":
					response.append(internalGetTeam())
					response.append(contentsOf: internalGetTeam().childResponseObjectMap())

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
