// Generated from graphql_swift_gen gem
import Foundation

public protocol Comment {
	var typeName: String { get }

	var author: Actor? { get }

	var authorAssociation: ExampleSchema.CommentAuthorAssociation { get }

	var body: String { get }

	var bodyHtml: String { get }

	var bodyText: String { get }

	var createdAt: String { get }

	var createdViaEmail: Bool { get }

	var editor: Actor? { get }

	var id: GraphQL.ID { get }

	var includesCreatedEdit: Bool { get }

	var lastEditedAt: String? { get }

	var publishedAt: String? { get }

	var updatedAt: String { get }

	var userContentEdits: ExampleSchema.UserContentEditConnection? { get }

	var viewerDidAuthor: Bool { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class CommentQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Comment

		@discardableResult
		open func author(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> CommentQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "author", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func authorAssociation(aliasSuffix: String? = nil) -> CommentQuery {
			addField(field: "authorAssociation", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func body(aliasSuffix: String? = nil) -> CommentQuery {
			addField(field: "body", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func bodyHtml(aliasSuffix: String? = nil) -> CommentQuery {
			addField(field: "bodyHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func bodyText(aliasSuffix: String? = nil) -> CommentQuery {
			addField(field: "bodyText", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> CommentQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func createdViaEmail(aliasSuffix: String? = nil) -> CommentQuery {
			addField(field: "createdViaEmail", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func editor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> CommentQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "editor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> CommentQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func includesCreatedEdit(aliasSuffix: String? = nil) -> CommentQuery {
			addField(field: "includesCreatedEdit", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func lastEditedAt(aliasSuffix: String? = nil) -> CommentQuery {
			addField(field: "lastEditedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func publishedAt(aliasSuffix: String? = nil) -> CommentQuery {
			addField(field: "publishedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> CommentQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func userContentEdits(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (UserContentEditConnectionQuery) -> Void) -> CommentQuery {
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
		open func viewerDidAuthor(aliasSuffix: String? = nil) -> CommentQuery {
			addField(field: "viewerDidAuthor", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onCommitComment(subfields: (CommitCommentQuery) -> Void) -> CommentQuery {
			let subquery = CommitCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "CommitComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onGistComment(subfields: (GistCommentQuery) -> Void) -> CommentQuery {
			let subquery = GistCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "GistComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onIssue(subfields: (IssueQuery) -> Void) -> CommentQuery {
			let subquery = IssueQuery()
			subfields(subquery)
			addInlineFragment(on: "Issue", subfields: subquery)
			return self
		}

		@discardableResult
		open func onIssueComment(subfields: (IssueCommentQuery) -> Void) -> CommentQuery {
			let subquery = IssueCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "IssueComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequest(subfields: (PullRequestQuery) -> Void) -> CommentQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequest", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestReview(subfields: (PullRequestReviewQuery) -> Void) -> CommentQuery {
			let subquery = PullRequestReviewQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestReview", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestReviewComment(subfields: (PullRequestReviewCommentQuery) -> Void) -> CommentQuery {
			let subquery = PullRequestReviewCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestReviewComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamDiscussion(subfields: (TeamDiscussionQuery) -> Void) -> CommentQuery {
			let subquery = TeamDiscussionQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamDiscussion", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamDiscussionComment(subfields: (TeamDiscussionCommentQuery) -> Void) -> CommentQuery {
			let subquery = TeamDiscussionCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamDiscussionComment", subfields: subquery)
			return self
		}
	}

	open class UnknownComment: GraphQL.AbstractResponse, GraphQLObject, Comment {
		public typealias Query = CommentQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "author":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownComment.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "authorAssociation":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownComment.self, field: fieldName, value: fieldValue)
				}
				return CommentAuthorAssociation(rawValue: value) ?? .unknownValue

				case "body":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "bodyHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "bodyText":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdViaEmail":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "editor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownComment.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownComment.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "includesCreatedEdit":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "lastEditedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "publishedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "userContentEdits":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownComment.self, field: fieldName, value: fieldValue)
				}
				return try UserContentEditConnection(fields: value)

				case "viewerDidAuthor":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownComment.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownComment.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> Comment {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownComment.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "CommitComment":
				return try CommitComment.init(fields: fields)

				case "GistComment":
				return try GistComment.init(fields: fields)

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
				return try UnknownComment.init(fields: fields)
			}
		}

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

		open var lastEditedAt: String? {
			return internalGetLastEditedAt()
		}

		func internalGetLastEditedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "lastEditedAt", aliasSuffix: aliasSuffix) as! String?
		}

		open var publishedAt: String? {
			return internalGetPublishedAt()
		}

		func internalGetPublishedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "publishedAt", aliasSuffix: aliasSuffix) as! String?
		}

		open var updatedAt: String {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String
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

				case "createdAt":

				return .scalar

				case "createdViaEmail":

				return .scalar

				case "editor":

				return .object

				case "id":

				return .scalar

				case "includesCreatedEdit":

				return .scalar

				case "lastEditedAt":

				return .scalar

				case "publishedAt":

				return .scalar

				case "updatedAt":

				return .scalar

				case "userContentEdits":

				return .object

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

				case "editor":
				return internalGetEditor()?.responseObject()

				case "userContentEdits":
				return internalGetUserContentEdits()

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
					case "author":
					if let value = internalGetAuthor() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "editor":
					if let value = internalGetEditor() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

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
