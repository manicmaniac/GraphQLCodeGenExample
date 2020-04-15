// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class PullRequestQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = PullRequest

		@discardableResult
		open func activeLockReason(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "activeLockReason", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func additions(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "additions", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func assignees(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (UserConnectionQuery) -> Void) -> PullRequestQuery {
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
		open func author(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> PullRequestQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "author", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func authorAssociation(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "authorAssociation", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func baseRef(aliasSuffix: String? = nil, _ subfields: (RefQuery) -> Void) -> PullRequestQuery {
			let subquery = RefQuery()
			subfields(subquery)

			addField(field: "baseRef", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func baseRefName(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "baseRefName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func baseRefOid(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "baseRefOid", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func baseRepository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> PullRequestQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "baseRepository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func body(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "body", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func bodyHtml(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "bodyHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func bodyText(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "bodyText", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func changedFiles(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "changedFiles", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func checksResourcePath(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "checksResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func checksUrl(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "checksUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func closed(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "closed", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func closedAt(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "closedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func comments(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (IssueCommentConnectionQuery) -> Void) -> PullRequestQuery {
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
		open func commits(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (PullRequestCommitConnectionQuery) -> Void) -> PullRequestQuery {
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

			let subquery = PullRequestCommitConnectionQuery()
			subfields(subquery)

			addField(field: "commits", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func createdViaEmail(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "createdViaEmail", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func deletions(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "deletions", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func editor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> PullRequestQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "editor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func files(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (PullRequestChangedFileConnectionQuery) -> Void) -> PullRequestQuery {
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

			let subquery = PullRequestChangedFileConnectionQuery()
			subfields(subquery)

			addField(field: "files", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func headRef(aliasSuffix: String? = nil, _ subfields: (RefQuery) -> Void) -> PullRequestQuery {
			let subquery = RefQuery()
			subfields(subquery)

			addField(field: "headRef", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func headRefName(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "headRefName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func headRefOid(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "headRefOid", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func headRepository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> PullRequestQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "headRepository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func headRepositoryOwner(aliasSuffix: String? = nil, _ subfields: (RepositoryOwnerQuery) -> Void) -> PullRequestQuery {
			let subquery = RepositoryOwnerQuery()
			subfields(subquery)

			addField(field: "headRepositoryOwner", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func hovercard(aliasSuffix: String? = nil, includeNotificationContexts: Bool? = nil, _ subfields: (HovercardQuery) -> Void) -> PullRequestQuery {
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
		open func id(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func includesCreatedEdit(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "includesCreatedEdit", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isCrossRepository(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "isCrossRepository", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isDraft(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "isDraft", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func labels(aliasSuffix: String? = nil, orderBy: LabelOrder? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (LabelConnectionQuery) -> Void) -> PullRequestQuery {
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
		open func lastEditedAt(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "lastEditedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func locked(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "locked", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func maintainerCanModify(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "maintainerCanModify", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func mergeCommit(aliasSuffix: String? = nil, _ subfields: (CommitQuery) -> Void) -> PullRequestQuery {
			let subquery = CommitQuery()
			subfields(subquery)

			addField(field: "mergeCommit", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func mergeable(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "mergeable", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func merged(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "merged", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func mergedAt(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "mergedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func mergedBy(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> PullRequestQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "mergedBy", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func milestone(aliasSuffix: String? = nil, _ subfields: (MilestoneQuery) -> Void) -> PullRequestQuery {
			let subquery = MilestoneQuery()
			subfields(subquery)

			addField(field: "milestone", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func number(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "number", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func participants(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (UserConnectionQuery) -> Void) -> PullRequestQuery {
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
		open func permalink(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "permalink", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func potentialMergeCommit(aliasSuffix: String? = nil, _ subfields: (CommitQuery) -> Void) -> PullRequestQuery {
			let subquery = CommitQuery()
			subfields(subquery)

			addField(field: "potentialMergeCommit", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func projectCards(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, archivedStates: [ProjectCardArchivedState]? = nil, _ subfields: (ProjectCardConnectionQuery) -> Void) -> PullRequestQuery {
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
		open func publishedAt(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "publishedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func reactionGroups(aliasSuffix: String? = nil, _ subfields: (ReactionGroupQuery) -> Void) -> PullRequestQuery {
			let subquery = ReactionGroupQuery()
			subfields(subquery)

			addField(field: "reactionGroups", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func reactions(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, content: ReactionContent? = nil, orderBy: ReactionOrder? = nil, _ subfields: (ReactionConnectionQuery) -> Void) -> PullRequestQuery {
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
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> PullRequestQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func revertResourcePath(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "revertResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func revertUrl(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "revertUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func reviewDecision(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "reviewDecision", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func reviewRequests(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (ReviewRequestConnectionQuery) -> Void) -> PullRequestQuery {
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

			let subquery = ReviewRequestConnectionQuery()
			subfields(subquery)

			addField(field: "reviewRequests", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func reviewThreads(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (PullRequestReviewThreadConnectionQuery) -> Void) -> PullRequestQuery {
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

			let subquery = PullRequestReviewThreadConnectionQuery()
			subfields(subquery)

			addField(field: "reviewThreads", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func reviews(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, states: [PullRequestReviewState]? = nil, author: String? = nil, _ subfields: (PullRequestReviewConnectionQuery) -> Void) -> PullRequestQuery {
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

			if let states = states {
				args.append("states:[\(states.map{ "\($0.rawValue)" }.joined(separator: ","))]")
			}

			if let author = author {
				args.append("author:\(GraphQL.quoteString(input: author))")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = PullRequestReviewConnectionQuery()
			subfields(subquery)

			addField(field: "reviews", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func state(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "state", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func suggestedReviewers(aliasSuffix: String? = nil, _ subfields: (SuggestedReviewerQuery) -> Void) -> PullRequestQuery {
			let subquery = SuggestedReviewerQuery()
			subfields(subquery)

			addField(field: "suggestedReviewers", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"`timeline` will be removed Use PullRequest.timelineItems instead. Removal on 2019-10-01 UTC.")
		@discardableResult
		open func timeline(aliasSuffix: String? = nil, since: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (PullRequestTimelineConnectionQuery) -> Void) -> PullRequestQuery {
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

			let subquery = PullRequestTimelineConnectionQuery()
			subfields(subquery)

			addField(field: "timeline", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func timelineItems(aliasSuffix: String? = nil, since: String? = nil, skip: Int32? = nil, itemTypes: [PullRequestTimelineItemsItemType]? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (PullRequestTimelineItemsConnectionQuery) -> Void) -> PullRequestQuery {
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

			let subquery = PullRequestTimelineItemsConnectionQuery()
			subfields(subquery)

			addField(field: "timelineItems", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func title(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "title", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func userContentEdits(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (UserContentEditConnectionQuery) -> Void) -> PullRequestQuery {
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
		open func viewerCanApplySuggestion(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "viewerCanApplySuggestion", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanReact(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "viewerCanReact", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanSubscribe(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "viewerCanSubscribe", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanUpdate(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "viewerCanUpdate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCannotUpdateReasons(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "viewerCannotUpdateReasons", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerDidAuthor(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "viewerDidAuthor", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerSubscription(aliasSuffix: String? = nil) -> PullRequestQuery {
			addField(field: "viewerSubscription", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class PullRequest: GraphQL.AbstractResponse, GraphQLObject, Assignable, Closable, Closer, Comment, IssueOrPullRequest, Labelable, Lockable, MilestoneItem, Node, ProjectCardItem, Reactable, ReferencedSubject, RenamedTitleSubject, RepositoryNode, SearchResultItem, Subscribable, UniformResourceLocatable, Updatable, UpdatableComment {
		public typealias Query = PullRequestQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "activeLockReason":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return LockReason(rawValue: value) ?? .unknownValue

				case "additions":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "assignees":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try UserConnection(fields: value)

				case "author":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "authorAssociation":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return CommentAuthorAssociation(rawValue: value) ?? .unknownValue

				case "baseRef":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try Ref(fields: value)

				case "baseRefName":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "baseRefOid":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "baseRepository":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "body":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "bodyHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "bodyText":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "changedFiles":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "checksResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "checksUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "closed":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "closedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "comments":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try IssueCommentConnection(fields: value)

				case "commits":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestCommitConnection(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdViaEmail":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "deletions":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "editor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "files":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestChangedFileConnection(fields: value)

				case "headRef":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try Ref(fields: value)

				case "headRefName":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "headRefOid":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "headRepository":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "headRepositoryOwner":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try UnknownRepositoryOwner.create(fields: value)

				case "hovercard":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try Hovercard(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "includesCreatedEdit":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isCrossRepository":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isDraft":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "labels":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try LabelConnection(fields: value)

				case "lastEditedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "locked":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "maintainerCanModify":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "mergeCommit":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try Commit(fields: value)

				case "mergeable":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return MergeableState(rawValue: value) ?? .unknownValue

				case "merged":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "mergedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "mergedBy":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "milestone":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try Milestone(fields: value)

				case "number":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "participants":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try UserConnection(fields: value)

				case "permalink":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "potentialMergeCommit":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try Commit(fields: value)

				case "projectCards":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try ProjectCardConnection(fields: value)

				case "publishedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "reactionGroups":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try ReactionGroup(fields: $0) }

				case "reactions":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try ReactionConnection(fields: value)

				case "repository":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "revertResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "revertUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "reviewDecision":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return PullRequestReviewDecision(rawValue: value) ?? .unknownValue

				case "reviewRequests":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try ReviewRequestConnection(fields: value)

				case "reviewThreads":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestReviewThreadConnection(fields: value)

				case "reviews":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestReviewConnection(fields: value)

				case "state":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return PullRequestState(rawValue: value) ?? .unknownValue

				case "suggestedReviewers":
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try SuggestedReviewer(fields: value) } as [Any?]

				case "timeline":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestTimelineConnection(fields: value)

				case "timelineItems":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestTimelineItemsConnection(fields: value)

				case "title":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "userContentEdits":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return try UserContentEditConnection(fields: value)

				case "viewerCanApplySuggestion":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanReact":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanSubscribe":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanUpdate":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCannotUpdateReasons":
				guard let value = value as? [String] else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value.map { return CommentCannotUpdateReason(rawValue: $0) ?? .unknownValue }

				case "viewerDidAuthor":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerSubscription":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
				}
				return SubscriptionState(rawValue: value) ?? .unknownValue

				default:
				throw SchemaViolationError(type: PullRequest.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "PullRequest" }

		open var activeLockReason: ExampleSchema.LockReason? {
			return internalGetActiveLockReason()
		}

		func internalGetActiveLockReason(aliasSuffix: String? = nil) -> ExampleSchema.LockReason? {
			return field(field: "activeLockReason", aliasSuffix: aliasSuffix) as! ExampleSchema.LockReason?
		}

		open var additions: Int32 {
			return internalGetAdditions()
		}

		func internalGetAdditions(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "additions", aliasSuffix: aliasSuffix) as! Int32
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

		open var baseRef: ExampleSchema.Ref? {
			return internalGetBaseRef()
		}

		func internalGetBaseRef(aliasSuffix: String? = nil) -> ExampleSchema.Ref? {
			return field(field: "baseRef", aliasSuffix: aliasSuffix) as! ExampleSchema.Ref?
		}

		open var baseRefName: String {
			return internalGetBaseRefName()
		}

		func internalGetBaseRefName(aliasSuffix: String? = nil) -> String {
			return field(field: "baseRefName", aliasSuffix: aliasSuffix) as! String
		}

		open var baseRefOid: String {
			return internalGetBaseRefOid()
		}

		func internalGetBaseRefOid(aliasSuffix: String? = nil) -> String {
			return field(field: "baseRefOid", aliasSuffix: aliasSuffix) as! String
		}

		open var baseRepository: ExampleSchema.Repository? {
			return internalGetBaseRepository()
		}

		func internalGetBaseRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository? {
			return field(field: "baseRepository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository?
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

		open var changedFiles: Int32 {
			return internalGetChangedFiles()
		}

		func internalGetChangedFiles(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "changedFiles", aliasSuffix: aliasSuffix) as! Int32
		}

		open var checksResourcePath: String {
			return internalGetChecksResourcePath()
		}

		func internalGetChecksResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "checksResourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var checksUrl: String {
			return internalGetChecksUrl()
		}

		func internalGetChecksUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "checksUrl", aliasSuffix: aliasSuffix) as! String
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

		open var commits: ExampleSchema.PullRequestCommitConnection {
			return internalGetCommits()
		}

		open func aliasedCommits(aliasSuffix: String) -> ExampleSchema.PullRequestCommitConnection {
			return internalGetCommits(aliasSuffix: aliasSuffix)
		}

		func internalGetCommits(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestCommitConnection {
			return field(field: "commits", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestCommitConnection
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

		open var deletions: Int32 {
			return internalGetDeletions()
		}

		func internalGetDeletions(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "deletions", aliasSuffix: aliasSuffix) as! Int32
		}

		open var editor: Actor? {
			return internalGetEditor()
		}

		func internalGetEditor(aliasSuffix: String? = nil) -> Actor? {
			return field(field: "editor", aliasSuffix: aliasSuffix) as! Actor?
		}

		open var files: ExampleSchema.PullRequestChangedFileConnection? {
			return internalGetFiles()
		}

		open func aliasedFiles(aliasSuffix: String) -> ExampleSchema.PullRequestChangedFileConnection? {
			return internalGetFiles(aliasSuffix: aliasSuffix)
		}

		func internalGetFiles(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestChangedFileConnection? {
			return field(field: "files", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestChangedFileConnection?
		}

		open var headRef: ExampleSchema.Ref? {
			return internalGetHeadRef()
		}

		func internalGetHeadRef(aliasSuffix: String? = nil) -> ExampleSchema.Ref? {
			return field(field: "headRef", aliasSuffix: aliasSuffix) as! ExampleSchema.Ref?
		}

		open var headRefName: String {
			return internalGetHeadRefName()
		}

		func internalGetHeadRefName(aliasSuffix: String? = nil) -> String {
			return field(field: "headRefName", aliasSuffix: aliasSuffix) as! String
		}

		open var headRefOid: String {
			return internalGetHeadRefOid()
		}

		func internalGetHeadRefOid(aliasSuffix: String? = nil) -> String {
			return field(field: "headRefOid", aliasSuffix: aliasSuffix) as! String
		}

		open var headRepository: ExampleSchema.Repository? {
			return internalGetHeadRepository()
		}

		func internalGetHeadRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository? {
			return field(field: "headRepository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository?
		}

		open var headRepositoryOwner: RepositoryOwner? {
			return internalGetHeadRepositoryOwner()
		}

		func internalGetHeadRepositoryOwner(aliasSuffix: String? = nil) -> RepositoryOwner? {
			return field(field: "headRepositoryOwner", aliasSuffix: aliasSuffix) as! RepositoryOwner?
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

		open var isCrossRepository: Bool {
			return internalGetIsCrossRepository()
		}

		func internalGetIsCrossRepository(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isCrossRepository", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isDraft: Bool {
			return internalGetIsDraft()
		}

		func internalGetIsDraft(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isDraft", aliasSuffix: aliasSuffix) as! Bool
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

		open var maintainerCanModify: Bool {
			return internalGetMaintainerCanModify()
		}

		func internalGetMaintainerCanModify(aliasSuffix: String? = nil) -> Bool {
			return field(field: "maintainerCanModify", aliasSuffix: aliasSuffix) as! Bool
		}

		open var mergeCommit: ExampleSchema.Commit? {
			return internalGetMergeCommit()
		}

		func internalGetMergeCommit(aliasSuffix: String? = nil) -> ExampleSchema.Commit? {
			return field(field: "mergeCommit", aliasSuffix: aliasSuffix) as! ExampleSchema.Commit?
		}

		open var mergeable: ExampleSchema.MergeableState {
			return internalGetMergeable()
		}

		func internalGetMergeable(aliasSuffix: String? = nil) -> ExampleSchema.MergeableState {
			return field(field: "mergeable", aliasSuffix: aliasSuffix) as! ExampleSchema.MergeableState
		}

		open var merged: Bool {
			return internalGetMerged()
		}

		func internalGetMerged(aliasSuffix: String? = nil) -> Bool {
			return field(field: "merged", aliasSuffix: aliasSuffix) as! Bool
		}

		open var mergedAt: String? {
			return internalGetMergedAt()
		}

		func internalGetMergedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "mergedAt", aliasSuffix: aliasSuffix) as! String?
		}

		open var mergedBy: Actor? {
			return internalGetMergedBy()
		}

		func internalGetMergedBy(aliasSuffix: String? = nil) -> Actor? {
			return field(field: "mergedBy", aliasSuffix: aliasSuffix) as! Actor?
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

		open var permalink: String {
			return internalGetPermalink()
		}

		func internalGetPermalink(aliasSuffix: String? = nil) -> String {
			return field(field: "permalink", aliasSuffix: aliasSuffix) as! String
		}

		open var potentialMergeCommit: ExampleSchema.Commit? {
			return internalGetPotentialMergeCommit()
		}

		func internalGetPotentialMergeCommit(aliasSuffix: String? = nil) -> ExampleSchema.Commit? {
			return field(field: "potentialMergeCommit", aliasSuffix: aliasSuffix) as! ExampleSchema.Commit?
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

		open var revertResourcePath: String {
			return internalGetRevertResourcePath()
		}

		func internalGetRevertResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "revertResourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var revertUrl: String {
			return internalGetRevertUrl()
		}

		func internalGetRevertUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "revertUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var reviewDecision: ExampleSchema.PullRequestReviewDecision? {
			return internalGetReviewDecision()
		}

		func internalGetReviewDecision(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestReviewDecision? {
			return field(field: "reviewDecision", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestReviewDecision?
		}

		open var reviewRequests: ExampleSchema.ReviewRequestConnection? {
			return internalGetReviewRequests()
		}

		open func aliasedReviewRequests(aliasSuffix: String) -> ExampleSchema.ReviewRequestConnection? {
			return internalGetReviewRequests(aliasSuffix: aliasSuffix)
		}

		func internalGetReviewRequests(aliasSuffix: String? = nil) -> ExampleSchema.ReviewRequestConnection? {
			return field(field: "reviewRequests", aliasSuffix: aliasSuffix) as! ExampleSchema.ReviewRequestConnection?
		}

		open var reviewThreads: ExampleSchema.PullRequestReviewThreadConnection {
			return internalGetReviewThreads()
		}

		open func aliasedReviewThreads(aliasSuffix: String) -> ExampleSchema.PullRequestReviewThreadConnection {
			return internalGetReviewThreads(aliasSuffix: aliasSuffix)
		}

		func internalGetReviewThreads(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestReviewThreadConnection {
			return field(field: "reviewThreads", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestReviewThreadConnection
		}

		open var reviews: ExampleSchema.PullRequestReviewConnection? {
			return internalGetReviews()
		}

		open func aliasedReviews(aliasSuffix: String) -> ExampleSchema.PullRequestReviewConnection? {
			return internalGetReviews(aliasSuffix: aliasSuffix)
		}

		func internalGetReviews(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestReviewConnection? {
			return field(field: "reviews", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestReviewConnection?
		}

		open var state: ExampleSchema.PullRequestState {
			return internalGetState()
		}

		func internalGetState(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestState {
			return field(field: "state", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestState
		}

		open var suggestedReviewers: [ExampleSchema.SuggestedReviewer?] {
			return internalGetSuggestedReviewers()
		}

		func internalGetSuggestedReviewers(aliasSuffix: String? = nil) -> [ExampleSchema.SuggestedReviewer?] {
			return field(field: "suggestedReviewers", aliasSuffix: aliasSuffix) as! [ExampleSchema.SuggestedReviewer?]
		}

		@available(*, deprecated, message:"`timeline` will be removed Use PullRequest.timelineItems instead. Removal on 2019-10-01 UTC.")
		open var timeline: ExampleSchema.PullRequestTimelineConnection {
			return internalGetTimeline()
		}

		@available(*, deprecated, message:"`timeline` will be removed Use PullRequest.timelineItems instead. Removal on 2019-10-01 UTC.")
		open func aliasedTimeline(aliasSuffix: String) -> ExampleSchema.PullRequestTimelineConnection {
			return internalGetTimeline(aliasSuffix: aliasSuffix)
		}

		func internalGetTimeline(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestTimelineConnection {
			return field(field: "timeline", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestTimelineConnection
		}

		open var timelineItems: ExampleSchema.PullRequestTimelineItemsConnection {
			return internalGetTimelineItems()
		}

		open func aliasedTimelineItems(aliasSuffix: String) -> ExampleSchema.PullRequestTimelineItemsConnection {
			return internalGetTimelineItems(aliasSuffix: aliasSuffix)
		}

		func internalGetTimelineItems(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestTimelineItemsConnection {
			return field(field: "timelineItems", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestTimelineItemsConnection
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

		open var viewerCanApplySuggestion: Bool {
			return internalGetViewerCanApplySuggestion()
		}

		func internalGetViewerCanApplySuggestion(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanApplySuggestion", aliasSuffix: aliasSuffix) as! Bool
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

				case "additions":

				return .scalar

				case "assignees":

				return .object

				case "author":

				return .object

				case "authorAssociation":

				return .scalar

				case "baseRef":

				return .object

				case "baseRefName":

				return .scalar

				case "baseRefOid":

				return .scalar

				case "baseRepository":

				return .object

				case "body":

				return .scalar

				case "bodyHTML":

				return .scalar

				case "bodyText":

				return .scalar

				case "changedFiles":

				return .scalar

				case "checksResourcePath":

				return .scalar

				case "checksUrl":

				return .scalar

				case "closed":

				return .scalar

				case "closedAt":

				return .scalar

				case "comments":

				return .object

				case "commits":

				return .object

				case "createdAt":

				return .scalar

				case "createdViaEmail":

				return .scalar

				case "databaseId":

				return .scalar

				case "deletions":

				return .scalar

				case "editor":

				return .object

				case "files":

				return .object

				case "headRef":

				return .object

				case "headRefName":

				return .scalar

				case "headRefOid":

				return .scalar

				case "headRepository":

				return .object

				case "headRepositoryOwner":

				return .object

				case "hovercard":

				return .object

				case "id":

				return .scalar

				case "includesCreatedEdit":

				return .scalar

				case "isCrossRepository":

				return .scalar

				case "isDraft":

				return .scalar

				case "labels":

				return .object

				case "lastEditedAt":

				return .scalar

				case "locked":

				return .scalar

				case "maintainerCanModify":

				return .scalar

				case "mergeCommit":

				return .object

				case "mergeable":

				return .scalar

				case "merged":

				return .scalar

				case "mergedAt":

				return .scalar

				case "mergedBy":

				return .object

				case "milestone":

				return .object

				case "number":

				return .scalar

				case "participants":

				return .object

				case "permalink":

				return .scalar

				case "potentialMergeCommit":

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

				case "revertResourcePath":

				return .scalar

				case "revertUrl":

				return .scalar

				case "reviewDecision":

				return .scalar

				case "reviewRequests":

				return .object

				case "reviewThreads":

				return .object

				case "reviews":

				return .object

				case "state":

				return .scalar

				case "suggestedReviewers":

				return .objectList

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

				case "viewerCanApplySuggestion":

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
				case "assignees":
				return internalGetAssignees()

				case "author":
				return internalGetAuthor()?.responseObject()

				case "baseRef":
				return internalGetBaseRef()

				case "baseRepository":
				return internalGetBaseRepository()

				case "comments":
				return internalGetComments()

				case "commits":
				return internalGetCommits()

				case "editor":
				return internalGetEditor()?.responseObject()

				case "files":
				return internalGetFiles()

				case "headRef":
				return internalGetHeadRef()

				case "headRepository":
				return internalGetHeadRepository()

				case "headRepositoryOwner":
				return internalGetHeadRepositoryOwner()?.responseObject()

				case "hovercard":
				return internalGetHovercard()

				case "labels":
				return internalGetLabels()

				case "mergeCommit":
				return internalGetMergeCommit()

				case "mergedBy":
				return internalGetMergedBy()?.responseObject()

				case "milestone":
				return internalGetMilestone()

				case "participants":
				return internalGetParticipants()

				case "potentialMergeCommit":
				return internalGetPotentialMergeCommit()

				case "projectCards":
				return internalGetProjectCards()

				case "reactions":
				return internalGetReactions()

				case "repository":
				return internalGetRepository()

				case "reviewRequests":
				return internalGetReviewRequests()

				case "reviewThreads":
				return internalGetReviewThreads()

				case "reviews":
				return internalGetReviews()

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

				case "suggestedReviewers":
				return internalGetSuggestedReviewers()

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

					case "baseRef":
					if let value = internalGetBaseRef() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "baseRepository":
					if let value = internalGetBaseRepository() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "comments":
					response.append(internalGetComments())
					response.append(contentsOf: internalGetComments().childResponseObjectMap())

					case "commits":
					response.append(internalGetCommits())
					response.append(contentsOf: internalGetCommits().childResponseObjectMap())

					case "editor":
					if let value = internalGetEditor() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "files":
					if let value = internalGetFiles() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "headRef":
					if let value = internalGetHeadRef() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "headRepository":
					if let value = internalGetHeadRepository() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "headRepositoryOwner":
					if let value = internalGetHeadRepositoryOwner() {
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

					case "mergeCommit":
					if let value = internalGetMergeCommit() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "mergedBy":
					if let value = internalGetMergedBy() {
						response.append(value as! GraphQL.AbstractResponse)
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

					case "potentialMergeCommit":
					if let value = internalGetPotentialMergeCommit() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

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

					case "reviewRequests":
					if let value = internalGetReviewRequests() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "reviewThreads":
					response.append(internalGetReviewThreads())
					response.append(contentsOf: internalGetReviewThreads().childResponseObjectMap())

					case "reviews":
					if let value = internalGetReviews() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "suggestedReviewers":
					internalGetSuggestedReviewers().forEach {
						if let value = $0 {
							response.append(value)
							response.append(contentsOf: value.childResponseObjectMap())
						}
					}

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
