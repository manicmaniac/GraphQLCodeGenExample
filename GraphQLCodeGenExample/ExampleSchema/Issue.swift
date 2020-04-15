// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class IssueQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Issue

		@discardableResult
		open func activeLockReason(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "activeLockReason", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func assignees(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (UserConnectionQuery) -> Void) -> IssueQuery {
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

			let subquery = UserConnectionQuery()
			subfields(subquery)

			addField(field: "assignees", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func author(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> IssueQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "author", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func authorAssociation(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "authorAssociation", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func body(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "body", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func bodyHtml(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "bodyHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func bodyText(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "bodyText", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func closed(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "closed", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func closedAt(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "closedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func comments(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (IssueCommentConnectionQuery) -> Void) -> IssueQuery {
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

			let subquery = IssueCommentConnectionQuery()
			subfields(subquery)

			addField(field: "comments", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func createdViaEmail(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "createdViaEmail", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func editor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> IssueQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "editor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func hovercard(aliasSuffix: String? = nil, includeNotificationContexts: Bool? = nil, _ subfields: (HovercardQuery) -> Void) -> IssueQuery {
			var args: [String] = []

			if let includeNotificationContexts = includeNotificationContexts {
				args.append("includeNotificationContexts:\(includeNotificationContexts)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = HovercardQuery()
			subfields(subquery)

			addField(field: "hovercard", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func includesCreatedEdit(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "includesCreatedEdit", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func labels(aliasSuffix: String? = nil, orderBy: LabelOrder? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (LabelConnectionQuery) -> Void) -> IssueQuery {
			var args: [String] = []

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

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

			let subquery = LabelConnectionQuery()
			subfields(subquery)

			addField(field: "labels", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func lastEditedAt(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "lastEditedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func locked(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "locked", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func milestone(aliasSuffix: String? = nil, _ subfields: (MilestoneQuery) -> Void) -> IssueQuery {
			let subquery = MilestoneQuery()
			subfields(subquery)

			addField(field: "milestone", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func number(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "number", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func participants(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (UserConnectionQuery) -> Void) -> IssueQuery {
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

			let subquery = UserConnectionQuery()
			subfields(subquery)

			addField(field: "participants", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func projectCards(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, archivedStates: [ProjectCardArchivedState]? = nil, _ subfields: (ProjectCardConnectionQuery) -> Void) -> IssueQuery {
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

			if let archivedStates = archivedStates {
				args.append("archivedStates:[\(archivedStates.map{ "\($0.rawValue)" }.joined(separator: ","))]")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = ProjectCardConnectionQuery()
			subfields(subquery)

			addField(field: "projectCards", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func publishedAt(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "publishedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func reactionGroups(aliasSuffix: String? = nil, _ subfields: (ReactionGroupQuery) -> Void) -> IssueQuery {
			let subquery = ReactionGroupQuery()
			subfields(subquery)

			addField(field: "reactionGroups", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func reactions(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, content: ReactionContent? = nil, orderBy: ReactionOrder? = nil, _ subfields: (ReactionConnectionQuery) -> Void) -> IssueQuery {
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
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> IssueQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func state(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "state", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"`timeline` will be removed Use Issue.timelineItems instead. Removal on 2019-10-01 UTC.")
		@discardableResult
		open func timeline(aliasSuffix: String? = nil, since: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (IssueTimelineConnectionQuery) -> Void) -> IssueQuery {
			var args: [String] = []

			if let since = since {
				args.append("since:\(GraphQL.quoteString(input: since))")
			}

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

			let subquery = IssueTimelineConnectionQuery()
			subfields(subquery)

			addField(field: "timeline", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func timelineItems(aliasSuffix: String? = nil, since: String? = nil, skip: Int32? = nil, itemTypes: [IssueTimelineItemsItemType]? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (IssueTimelineItemsConnectionQuery) -> Void) -> IssueQuery {
			var args: [String] = []

			if let since = since {
				args.append("since:\(GraphQL.quoteString(input: since))")
			}

			if let skip = skip {
				args.append("skip:\(skip)")
			}

			if let itemTypes = itemTypes {
				args.append("itemTypes:[\(itemTypes.map{ "\($0.rawValue)" }.joined(separator: ","))]")
			}

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

			let subquery = IssueTimelineItemsConnectionQuery()
			subfields(subquery)

			addField(field: "timelineItems", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func title(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "title", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func userContentEdits(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (UserContentEditConnectionQuery) -> Void) -> IssueQuery {
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
		open func viewerCanReact(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "viewerCanReact", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanSubscribe(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "viewerCanSubscribe", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanUpdate(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "viewerCanUpdate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCannotUpdateReasons(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "viewerCannotUpdateReasons", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerDidAuthor(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "viewerDidAuthor", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerSubscription(aliasSuffix: String? = nil) -> IssueQuery {
			addField(field: "viewerSubscription", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Issue: GraphQL.AbstractResponse, GraphQLObject, Assignable, Closable, Comment, IssueOrPullRequest, Labelable, Lockable, MilestoneItem, Node, ProjectCardItem, Reactable, ReferencedSubject, RenamedTitleSubject, RepositoryNode, SearchResultItem, Subscribable, UniformResourceLocatable, Updatable, UpdatableComment {
		public typealias Query = IssueQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "activeLockReason":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return LockReason(rawValue: value) ?? .unknownValue

				case "assignees":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return try UserConnection(fields: value)

				case "author":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "authorAssociation":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return CommentAuthorAssociation(rawValue: value) ?? .unknownValue

				case "body":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return value

				case "bodyHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return value

				case "bodyText":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return value

				case "closed":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return value

				case "closedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return value

				case "comments":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return try IssueCommentConnection(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdViaEmail":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return value

				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "editor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "hovercard":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return try Hovercard(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "includesCreatedEdit":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return value

				case "labels":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return try LabelConnection(fields: value)

				case "lastEditedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return value

				case "locked":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return value

				case "milestone":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return try Milestone(fields: value)

				case "number":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "participants":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return try UserConnection(fields: value)

				case "projectCards":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return try ProjectCardConnection(fields: value)

				case "publishedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return value

				case "reactionGroups":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try ReactionGroup(fields: $0) }

				case "reactions":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return try ReactionConnection(fields: value)

				case "repository":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return value

				case "state":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return IssueState(rawValue: value) ?? .unknownValue

				case "timeline":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return try IssueTimelineConnection(fields: value)

				case "timelineItems":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return try IssueTimelineItemsConnection(fields: value)

				case "title":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return value

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return value

				case "userContentEdits":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return try UserContentEditConnection(fields: value)

				case "viewerCanReact":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanSubscribe":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanUpdate":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCannotUpdateReasons":
				guard let value = value as? [String] else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return value.map { return CommentCannotUpdateReason(rawValue: $0) ?? .unknownValue }

				case "viewerDidAuthor":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerSubscription":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
				}
				return SubscriptionState(rawValue: value) ?? .unknownValue

				default:
				throw SchemaViolationError(type: Issue.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Issue" }

		open var activeLockReason: ExampleSchema.LockReason? {
			return internalGetActiveLockReason()
		}

		func internalGetActiveLockReason(aliasSuffix: String? = nil) -> ExampleSchema.LockReason? {
			return field(field: "activeLockReason", aliasSuffix: aliasSuffix) as! ExampleSchema.LockReason?
		}

		open var assignees: ExampleSchema.UserConnection {
			return internalGetAssignees()
		}

		open func aliasedAssignees(aliasSuffix: String) -> ExampleSchema.UserConnection {
			return internalGetAssignees(aliasSuffix: aliasSuffix)
		}

		func internalGetAssignees(aliasSuffix: String? = nil) -> ExampleSchema.UserConnection {
			return field(field: "assignees", aliasSuffix: aliasSuffix) as! ExampleSchema.UserConnection
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

		open var closed: Bool {
			return internalGetClosed()
		}

		func internalGetClosed(aliasSuffix: String? = nil) -> Bool {
			return field(field: "closed", aliasSuffix: aliasSuffix) as! Bool
		}

		open var closedAt: String? {
			return internalGetClosedAt()
		}

		func internalGetClosedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "closedAt", aliasSuffix: aliasSuffix) as! String?
		}

		open var comments: ExampleSchema.IssueCommentConnection {
			return internalGetComments()
		}

		open func aliasedComments(aliasSuffix: String) -> ExampleSchema.IssueCommentConnection {
			return internalGetComments(aliasSuffix: aliasSuffix)
		}

		func internalGetComments(aliasSuffix: String? = nil) -> ExampleSchema.IssueCommentConnection {
			return field(field: "comments", aliasSuffix: aliasSuffix) as! ExampleSchema.IssueCommentConnection
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

		open var hovercard: ExampleSchema.Hovercard {
			return internalGetHovercard()
		}

		open func aliasedHovercard(aliasSuffix: String) -> ExampleSchema.Hovercard {
			return internalGetHovercard(aliasSuffix: aliasSuffix)
		}

		func internalGetHovercard(aliasSuffix: String? = nil) -> ExampleSchema.Hovercard {
			return field(field: "hovercard", aliasSuffix: aliasSuffix) as! ExampleSchema.Hovercard
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

		open var labels: ExampleSchema.LabelConnection? {
			return internalGetLabels()
		}

		open func aliasedLabels(aliasSuffix: String) -> ExampleSchema.LabelConnection? {
			return internalGetLabels(aliasSuffix: aliasSuffix)
		}

		func internalGetLabels(aliasSuffix: String? = nil) -> ExampleSchema.LabelConnection? {
			return field(field: "labels", aliasSuffix: aliasSuffix) as! ExampleSchema.LabelConnection?
		}

		open var lastEditedAt: String? {
			return internalGetLastEditedAt()
		}

		func internalGetLastEditedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "lastEditedAt", aliasSuffix: aliasSuffix) as! String?
		}

		open var locked: Bool {
			return internalGetLocked()
		}

		func internalGetLocked(aliasSuffix: String? = nil) -> Bool {
			return field(field: "locked", aliasSuffix: aliasSuffix) as! Bool
		}

		open var milestone: ExampleSchema.Milestone? {
			return internalGetMilestone()
		}

		func internalGetMilestone(aliasSuffix: String? = nil) -> ExampleSchema.Milestone? {
			return field(field: "milestone", aliasSuffix: aliasSuffix) as! ExampleSchema.Milestone?
		}

		open var number: Int32 {
			return internalGetNumber()
		}

		func internalGetNumber(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "number", aliasSuffix: aliasSuffix) as! Int32
		}

		open var participants: ExampleSchema.UserConnection {
			return internalGetParticipants()
		}

		open func aliasedParticipants(aliasSuffix: String) -> ExampleSchema.UserConnection {
			return internalGetParticipants(aliasSuffix: aliasSuffix)
		}

		func internalGetParticipants(aliasSuffix: String? = nil) -> ExampleSchema.UserConnection {
			return field(field: "participants", aliasSuffix: aliasSuffix) as! ExampleSchema.UserConnection
		}

		open var projectCards: ExampleSchema.ProjectCardConnection {
			return internalGetProjectCards()
		}

		open func aliasedProjectCards(aliasSuffix: String) -> ExampleSchema.ProjectCardConnection {
			return internalGetProjectCards(aliasSuffix: aliasSuffix)
		}

		func internalGetProjectCards(aliasSuffix: String? = nil) -> ExampleSchema.ProjectCardConnection {
			return field(field: "projectCards", aliasSuffix: aliasSuffix) as! ExampleSchema.ProjectCardConnection
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

		open var state: ExampleSchema.IssueState {
			return internalGetState()
		}

		func internalGetState(aliasSuffix: String? = nil) -> ExampleSchema.IssueState {
			return field(field: "state", aliasSuffix: aliasSuffix) as! ExampleSchema.IssueState
		}

		@available(*, deprecated, message:"`timeline` will be removed Use Issue.timelineItems instead. Removal on 2019-10-01 UTC.")
		open var timeline: ExampleSchema.IssueTimelineConnection {
			return internalGetTimeline()
		}

		@available(*, deprecated, message:"`timeline` will be removed Use Issue.timelineItems instead. Removal on 2019-10-01 UTC.")
		open func aliasedTimeline(aliasSuffix: String) -> ExampleSchema.IssueTimelineConnection {
			return internalGetTimeline(aliasSuffix: aliasSuffix)
		}

		func internalGetTimeline(aliasSuffix: String? = nil) -> ExampleSchema.IssueTimelineConnection {
			return field(field: "timeline", aliasSuffix: aliasSuffix) as! ExampleSchema.IssueTimelineConnection
		}

		open var timelineItems: ExampleSchema.IssueTimelineItemsConnection {
			return internalGetTimelineItems()
		}

		open func aliasedTimelineItems(aliasSuffix: String) -> ExampleSchema.IssueTimelineItemsConnection {
			return internalGetTimelineItems(aliasSuffix: aliasSuffix)
		}

		func internalGetTimelineItems(aliasSuffix: String? = nil) -> ExampleSchema.IssueTimelineItemsConnection {
			return field(field: "timelineItems", aliasSuffix: aliasSuffix) as! ExampleSchema.IssueTimelineItemsConnection
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
				case "activeLockReason":

				return .scalar

				case "assignees":

				return .object

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

				case "closed":

				return .scalar

				case "closedAt":

				return .scalar

				case "comments":

				return .object

				case "createdAt":

				return .scalar

				case "createdViaEmail":

				return .scalar

				case "databaseId":

				return .scalar

				case "editor":

				return .object

				case "hovercard":

				return .object

				case "id":

				return .scalar

				case "includesCreatedEdit":

				return .scalar

				case "labels":

				return .object

				case "lastEditedAt":

				return .scalar

				case "locked":

				return .scalar

				case "milestone":

				return .object

				case "number":

				return .scalar

				case "participants":

				return .object

				case "projectCards":

				return .object

				case "publishedAt":

				return .scalar

				case "reactionGroups":

				return .objectList

				case "reactions":

				return .object

				case "repository":

				return .object

				case "resourcePath":

				return .scalar

				case "state":

				return .scalar

				case "timeline":

				return .object

				case "timelineItems":

				return .object

				case "title":

				return .scalar

				case "updatedAt":

				return .scalar

				case "url":

				return .scalar

				case "userContentEdits":

				return .object

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
				case "assignees":
				return internalGetAssignees()

				case "author":
				return internalGetAuthor()?.responseObject()

				case "comments":
				return internalGetComments()

				case "editor":
				return internalGetEditor()?.responseObject()

				case "hovercard":
				return internalGetHovercard()

				case "labels":
				return internalGetLabels()

				case "milestone":
				return internalGetMilestone()

				case "participants":
				return internalGetParticipants()

				case "projectCards":
				return internalGetProjectCards()

				case "reactions":
				return internalGetReactions()

				case "repository":
				return internalGetRepository()

				case "timeline":
				return internalGetTimeline()

				case "timelineItems":
				return internalGetTimelineItems()

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
					case "assignees":
					response.append(internalGetAssignees())
					response.append(contentsOf: internalGetAssignees().childResponseObjectMap())

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

					case "hovercard":
					response.append(internalGetHovercard())
					response.append(contentsOf: internalGetHovercard().childResponseObjectMap())

					case "labels":
					if let value = internalGetLabels() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "milestone":
					if let value = internalGetMilestone() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "participants":
					response.append(internalGetParticipants())
					response.append(contentsOf: internalGetParticipants().childResponseObjectMap())

					case "projectCards":
					response.append(internalGetProjectCards())
					response.append(contentsOf: internalGetProjectCards().childResponseObjectMap())

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

					case "repository":
					response.append(internalGetRepository())
					response.append(contentsOf: internalGetRepository().childResponseObjectMap())

					case "timeline":
					response.append(internalGetTimeline())
					response.append(contentsOf: internalGetTimeline().childResponseObjectMap())

					case "timelineItems":
					response.append(internalGetTimelineItems())
					response.append(contentsOf: internalGetTimelineItems().childResponseObjectMap())

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
