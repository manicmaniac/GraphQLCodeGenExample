// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class GistCommentQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = GistComment

		@discardableResult
		open func author(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> GistCommentQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "author", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func authorAssociation(aliasSuffix: String? = nil) -> GistCommentQuery {
			addField(field: "authorAssociation", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func body(aliasSuffix: String? = nil) -> GistCommentQuery {
			addField(field: "body", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func bodyHtml(aliasSuffix: String? = nil) -> GistCommentQuery {
			addField(field: "bodyHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func bodyText(aliasSuffix: String? = nil) -> GistCommentQuery {
			addField(field: "bodyText", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> GistCommentQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func createdViaEmail(aliasSuffix: String? = nil) -> GistCommentQuery {
			addField(field: "createdViaEmail", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> GistCommentQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func editor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> GistCommentQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "editor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func gist(aliasSuffix: String? = nil, _ subfields: (GistQuery) -> Void) -> GistCommentQuery {
			let subquery = GistQuery()
			subfields(subquery)

			addField(field: "gist", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> GistCommentQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func includesCreatedEdit(aliasSuffix: String? = nil) -> GistCommentQuery {
			addField(field: "includesCreatedEdit", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isMinimized(aliasSuffix: String? = nil) -> GistCommentQuery {
			addField(field: "isMinimized", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func lastEditedAt(aliasSuffix: String? = nil) -> GistCommentQuery {
			addField(field: "lastEditedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func minimizedReason(aliasSuffix: String? = nil) -> GistCommentQuery {
			addField(field: "minimizedReason", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func publishedAt(aliasSuffix: String? = nil) -> GistCommentQuery {
			addField(field: "publishedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> GistCommentQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func userContentEdits(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (UserContentEditConnectionQuery) -> Void) -> GistCommentQuery {
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
		open func viewerCanDelete(aliasSuffix: String? = nil) -> GistCommentQuery {
			addField(field: "viewerCanDelete", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanMinimize(aliasSuffix: String? = nil) -> GistCommentQuery {
			addField(field: "viewerCanMinimize", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanUpdate(aliasSuffix: String? = nil) -> GistCommentQuery {
			addField(field: "viewerCanUpdate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCannotUpdateReasons(aliasSuffix: String? = nil) -> GistCommentQuery {
			addField(field: "viewerCannotUpdateReasons", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerDidAuthor(aliasSuffix: String? = nil) -> GistCommentQuery {
			addField(field: "viewerDidAuthor", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class GistComment: GraphQL.AbstractResponse, GraphQLObject, Comment, Deletable, Minimizable, Node, Updatable, UpdatableComment {
		public typealias Query = GistCommentQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "author":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "authorAssociation":
				guard let value = value as? String else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return CommentAuthorAssociation(rawValue: value) ?? .unknownValue

				case "body":
				guard let value = value as? String else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "bodyHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "bodyText":
				guard let value = value as? String else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdViaEmail":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "editor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "gist":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return try Gist(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "includesCreatedEdit":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isMinimized":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "lastEditedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "minimizedReason":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "publishedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "userContentEdits":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return try UserContentEditConnection(fields: value)

				case "viewerCanDelete":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanMinimize":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanUpdate":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCannotUpdateReasons":
				guard let value = value as? [String] else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return value.map { return CommentCannotUpdateReason(rawValue: $0) ?? .unknownValue }

				case "viewerDidAuthor":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: GistComment.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "GistComment" }

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

		open var gist: ExampleSchema.Gist {
			return internalGetGist()
		}

		func internalGetGist(aliasSuffix: String? = nil) -> ExampleSchema.Gist {
			return field(field: "gist", aliasSuffix: aliasSuffix) as! ExampleSchema.Gist
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

				case "createdAt":

				return .scalar

				case "createdViaEmail":

				return .scalar

				case "databaseId":

				return .scalar

				case "editor":

				return .object

				case "gist":

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

				case "publishedAt":

				return .scalar

				case "updatedAt":

				return .scalar

				case "userContentEdits":

				return .object

				case "viewerCanDelete":

				return .scalar

				case "viewerCanMinimize":

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

				case "editor":
				return internalGetEditor()?.responseObject()

				case "gist":
				return internalGetGist()

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

					case "gist":
					response.append(internalGetGist())
					response.append(contentsOf: internalGetGist().childResponseObjectMap())

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
