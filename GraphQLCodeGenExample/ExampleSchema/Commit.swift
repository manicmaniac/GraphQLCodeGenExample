// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CommitQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Commit

		@discardableResult
		open func abbreviatedOid(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "abbreviatedOid", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func additions(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "additions", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func associatedPullRequests(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: PullRequestOrder? = nil, _ subfields: (PullRequestConnectionQuery) -> Void) -> CommitQuery {
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

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = PullRequestConnectionQuery()
			subfields(subquery)

			addField(field: "associatedPullRequests", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func author(aliasSuffix: String? = nil, _ subfields: (GitActorQuery) -> Void) -> CommitQuery {
			let subquery = GitActorQuery()
			subfields(subquery)

			addField(field: "author", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func authoredByCommitter(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "authoredByCommitter", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func authoredDate(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "authoredDate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func blame(aliasSuffix: String? = nil, path: String, _ subfields: (BlameQuery) -> Void) -> CommitQuery {
			var args: [String] = []

			args.append("path:\(GraphQL.quoteString(input: path))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = BlameQuery()
			subfields(subquery)

			addField(field: "blame", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func changedFiles(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "changedFiles", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func comments(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (CommitCommentConnectionQuery) -> Void) -> CommitQuery {
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

			let subquery = CommitCommentConnectionQuery()
			subfields(subquery)

			addField(field: "comments", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func commitResourcePath(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "commitResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func commitUrl(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "commitUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func committedDate(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "committedDate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func committedViaWeb(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "committedViaWeb", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func committer(aliasSuffix: String? = nil, _ subfields: (GitActorQuery) -> Void) -> CommitQuery {
			let subquery = GitActorQuery()
			subfields(subquery)

			addField(field: "committer", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func deletions(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "deletions", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func deployments(aliasSuffix: String? = nil, environments: [String]? = nil, orderBy: DeploymentOrder? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (DeploymentConnectionQuery) -> Void) -> CommitQuery {
			var args: [String] = []

			if let environments = environments {
				args.append("environments:[\(environments.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

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

			let subquery = DeploymentConnectionQuery()
			subfields(subquery)

			addField(field: "deployments", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func history(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, path: String? = nil, author: CommitAuthor? = nil, since: String? = nil, until: String? = nil, _ subfields: (CommitHistoryConnectionQuery) -> Void) -> CommitQuery {
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

			if let path = path {
				args.append("path:\(GraphQL.quoteString(input: path))")
			}

			if let author = author {
				args.append("author:\(author.serialize())")
			}

			if let since = since {
				args.append("since:\(GraphQL.quoteString(input: since))")
			}

			if let until = until {
				args.append("until:\(GraphQL.quoteString(input: until))")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = CommitHistoryConnectionQuery()
			subfields(subquery)

			addField(field: "history", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func message(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "message", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func messageBody(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "messageBody", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func messageBodyHtml(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "messageBodyHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func messageHeadline(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "messageHeadline", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func messageHeadlineHtml(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "messageHeadlineHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func oid(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "oid", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func onBehalfOf(aliasSuffix: String? = nil, _ subfields: (OrganizationQuery) -> Void) -> CommitQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)

			addField(field: "onBehalfOf", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func parents(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (CommitConnectionQuery) -> Void) -> CommitQuery {
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

			let subquery = CommitConnectionQuery()
			subfields(subquery)

			addField(field: "parents", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func pushedDate(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "pushedDate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> CommitQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func signature(aliasSuffix: String? = nil, _ subfields: (GitSignatureQuery) -> Void) -> CommitQuery {
			let subquery = GitSignatureQuery()
			subfields(subquery)

			addField(field: "signature", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func status(aliasSuffix: String? = nil, _ subfields: (StatusQuery) -> Void) -> CommitQuery {
			let subquery = StatusQuery()
			subfields(subquery)

			addField(field: "status", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func statusCheckRollup(aliasSuffix: String? = nil, _ subfields: (StatusCheckRollupQuery) -> Void) -> CommitQuery {
			let subquery = StatusCheckRollupQuery()
			subfields(subquery)

			addField(field: "statusCheckRollup", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func submodules(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (SubmoduleConnectionQuery) -> Void) -> CommitQuery {
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

			let subquery = SubmoduleConnectionQuery()
			subfields(subquery)

			addField(field: "submodules", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func tarballUrl(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "tarballUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tree(aliasSuffix: String? = nil, _ subfields: (TreeQuery) -> Void) -> CommitQuery {
			let subquery = TreeQuery()
			subfields(subquery)

			addField(field: "tree", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func treeResourcePath(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "treeResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func treeUrl(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "treeUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanSubscribe(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "viewerCanSubscribe", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerSubscription(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "viewerSubscription", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func zipballUrl(aliasSuffix: String? = nil) -> CommitQuery {
			addField(field: "zipballUrl", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Commit: GraphQL.AbstractResponse, GraphQLObject, Closer, GitObject, IssueTimelineItem, Node, PullRequestTimelineItem, Subscribable, UniformResourceLocatable {
		public typealias Query = CommitQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "abbreviatedOid":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "additions":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "associatedPullRequests":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestConnection(fields: value)

				case "author":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return try GitActor(fields: value)

				case "authoredByCommitter":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "authoredDate":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "blame":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return try Blame(fields: value)

				case "changedFiles":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "comments":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return try CommitCommentConnection(fields: value)

				case "commitResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "commitUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "committedDate":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "committedViaWeb":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "committer":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return try GitActor(fields: value)

				case "deletions":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "deployments":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return try DeploymentConnection(fields: value)

				case "history":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return try CommitHistoryConnection(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "message":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "messageBody":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "messageBodyHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "messageHeadline":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "messageHeadlineHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "oid":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "onBehalfOf":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return try Organization(fields: value)

				case "parents":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return try CommitConnection(fields: value)

				case "pushedDate":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "repository":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "signature":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return try UnknownGitSignature.create(fields: value)

				case "status":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return try Status(fields: value)

				case "statusCheckRollup":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return try StatusCheckRollup(fields: value)

				case "submodules":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return try SubmoduleConnection(fields: value)

				case "tarballUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tree":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return try Tree(fields: value)

				case "treeResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "treeUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanSubscribe":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerSubscription":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return SubscriptionState(rawValue: value) ?? .unknownValue

				case "zipballUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Commit.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Commit" }

		open var abbreviatedOid: String {
			return internalGetAbbreviatedOid()
		}

		func internalGetAbbreviatedOid(aliasSuffix: String? = nil) -> String {
			return field(field: "abbreviatedOid", aliasSuffix: aliasSuffix) as! String
		}

		open var additions: Int32 {
			return internalGetAdditions()
		}

		func internalGetAdditions(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "additions", aliasSuffix: aliasSuffix) as! Int32
		}

		open var associatedPullRequests: ExampleSchema.PullRequestConnection? {
			return internalGetAssociatedPullRequests()
		}

		open func aliasedAssociatedPullRequests(aliasSuffix: String) -> ExampleSchema.PullRequestConnection? {
			return internalGetAssociatedPullRequests(aliasSuffix: aliasSuffix)
		}

		func internalGetAssociatedPullRequests(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestConnection? {
			return field(field: "associatedPullRequests", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestConnection?
		}

		open var author: ExampleSchema.GitActor? {
			return internalGetAuthor()
		}

		func internalGetAuthor(aliasSuffix: String? = nil) -> ExampleSchema.GitActor? {
			return field(field: "author", aliasSuffix: aliasSuffix) as! ExampleSchema.GitActor?
		}

		open var authoredByCommitter: Bool {
			return internalGetAuthoredByCommitter()
		}

		func internalGetAuthoredByCommitter(aliasSuffix: String? = nil) -> Bool {
			return field(field: "authoredByCommitter", aliasSuffix: aliasSuffix) as! Bool
		}

		open var authoredDate: String {
			return internalGetAuthoredDate()
		}

		func internalGetAuthoredDate(aliasSuffix: String? = nil) -> String {
			return field(field: "authoredDate", aliasSuffix: aliasSuffix) as! String
		}

		open var blame: ExampleSchema.Blame {
			return internalGetBlame()
		}

		open func aliasedBlame(aliasSuffix: String) -> ExampleSchema.Blame {
			return internalGetBlame(aliasSuffix: aliasSuffix)
		}

		func internalGetBlame(aliasSuffix: String? = nil) -> ExampleSchema.Blame {
			return field(field: "blame", aliasSuffix: aliasSuffix) as! ExampleSchema.Blame
		}

		open var changedFiles: Int32 {
			return internalGetChangedFiles()
		}

		func internalGetChangedFiles(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "changedFiles", aliasSuffix: aliasSuffix) as! Int32
		}

		open var comments: ExampleSchema.CommitCommentConnection {
			return internalGetComments()
		}

		open func aliasedComments(aliasSuffix: String) -> ExampleSchema.CommitCommentConnection {
			return internalGetComments(aliasSuffix: aliasSuffix)
		}

		func internalGetComments(aliasSuffix: String? = nil) -> ExampleSchema.CommitCommentConnection {
			return field(field: "comments", aliasSuffix: aliasSuffix) as! ExampleSchema.CommitCommentConnection
		}

		open var commitResourcePath: String {
			return internalGetCommitResourcePath()
		}

		func internalGetCommitResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "commitResourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var commitUrl: String {
			return internalGetCommitUrl()
		}

		func internalGetCommitUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "commitUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var committedDate: String {
			return internalGetCommittedDate()
		}

		func internalGetCommittedDate(aliasSuffix: String? = nil) -> String {
			return field(field: "committedDate", aliasSuffix: aliasSuffix) as! String
		}

		open var committedViaWeb: Bool {
			return internalGetCommittedViaWeb()
		}

		func internalGetCommittedViaWeb(aliasSuffix: String? = nil) -> Bool {
			return field(field: "committedViaWeb", aliasSuffix: aliasSuffix) as! Bool
		}

		open var committer: ExampleSchema.GitActor? {
			return internalGetCommitter()
		}

		func internalGetCommitter(aliasSuffix: String? = nil) -> ExampleSchema.GitActor? {
			return field(field: "committer", aliasSuffix: aliasSuffix) as! ExampleSchema.GitActor?
		}

		open var deletions: Int32 {
			return internalGetDeletions()
		}

		func internalGetDeletions(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "deletions", aliasSuffix: aliasSuffix) as! Int32
		}

		open var deployments: ExampleSchema.DeploymentConnection? {
			return internalGetDeployments()
		}

		open func aliasedDeployments(aliasSuffix: String) -> ExampleSchema.DeploymentConnection? {
			return internalGetDeployments(aliasSuffix: aliasSuffix)
		}

		func internalGetDeployments(aliasSuffix: String? = nil) -> ExampleSchema.DeploymentConnection? {
			return field(field: "deployments", aliasSuffix: aliasSuffix) as! ExampleSchema.DeploymentConnection?
		}

		open var history: ExampleSchema.CommitHistoryConnection {
			return internalGetHistory()
		}

		open func aliasedHistory(aliasSuffix: String) -> ExampleSchema.CommitHistoryConnection {
			return internalGetHistory(aliasSuffix: aliasSuffix)
		}

		func internalGetHistory(aliasSuffix: String? = nil) -> ExampleSchema.CommitHistoryConnection {
			return field(field: "history", aliasSuffix: aliasSuffix) as! ExampleSchema.CommitHistoryConnection
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var message: String {
			return internalGetMessage()
		}

		func internalGetMessage(aliasSuffix: String? = nil) -> String {
			return field(field: "message", aliasSuffix: aliasSuffix) as! String
		}

		open var messageBody: String {
			return internalGetMessageBody()
		}

		func internalGetMessageBody(aliasSuffix: String? = nil) -> String {
			return field(field: "messageBody", aliasSuffix: aliasSuffix) as! String
		}

		open var messageBodyHtml: String {
			return internalGetMessageBodyHtml()
		}

		func internalGetMessageBodyHtml(aliasSuffix: String? = nil) -> String {
			return field(field: "messageBodyHTML", aliasSuffix: aliasSuffix) as! String
		}

		open var messageHeadline: String {
			return internalGetMessageHeadline()
		}

		func internalGetMessageHeadline(aliasSuffix: String? = nil) -> String {
			return field(field: "messageHeadline", aliasSuffix: aliasSuffix) as! String
		}

		open var messageHeadlineHtml: String {
			return internalGetMessageHeadlineHtml()
		}

		func internalGetMessageHeadlineHtml(aliasSuffix: String? = nil) -> String {
			return field(field: "messageHeadlineHTML", aliasSuffix: aliasSuffix) as! String
		}

		open var oid: String {
			return internalGetOid()
		}

		func internalGetOid(aliasSuffix: String? = nil) -> String {
			return field(field: "oid", aliasSuffix: aliasSuffix) as! String
		}

		open var onBehalfOf: ExampleSchema.Organization? {
			return internalGetOnBehalfOf()
		}

		func internalGetOnBehalfOf(aliasSuffix: String? = nil) -> ExampleSchema.Organization? {
			return field(field: "onBehalfOf", aliasSuffix: aliasSuffix) as! ExampleSchema.Organization?
		}

		open var parents: ExampleSchema.CommitConnection {
			return internalGetParents()
		}

		open func aliasedParents(aliasSuffix: String) -> ExampleSchema.CommitConnection {
			return internalGetParents(aliasSuffix: aliasSuffix)
		}

		func internalGetParents(aliasSuffix: String? = nil) -> ExampleSchema.CommitConnection {
			return field(field: "parents", aliasSuffix: aliasSuffix) as! ExampleSchema.CommitConnection
		}

		open var pushedDate: String? {
			return internalGetPushedDate()
		}

		func internalGetPushedDate(aliasSuffix: String? = nil) -> String? {
			return field(field: "pushedDate", aliasSuffix: aliasSuffix) as! String?
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

		open var signature: GitSignature? {
			return internalGetSignature()
		}

		func internalGetSignature(aliasSuffix: String? = nil) -> GitSignature? {
			return field(field: "signature", aliasSuffix: aliasSuffix) as! GitSignature?
		}

		open var status: ExampleSchema.Status? {
			return internalGetStatus()
		}

		func internalGetStatus(aliasSuffix: String? = nil) -> ExampleSchema.Status? {
			return field(field: "status", aliasSuffix: aliasSuffix) as! ExampleSchema.Status?
		}

		open var statusCheckRollup: ExampleSchema.StatusCheckRollup? {
			return internalGetStatusCheckRollup()
		}

		func internalGetStatusCheckRollup(aliasSuffix: String? = nil) -> ExampleSchema.StatusCheckRollup? {
			return field(field: "statusCheckRollup", aliasSuffix: aliasSuffix) as! ExampleSchema.StatusCheckRollup?
		}

		open var submodules: ExampleSchema.SubmoduleConnection {
			return internalGetSubmodules()
		}

		open func aliasedSubmodules(aliasSuffix: String) -> ExampleSchema.SubmoduleConnection {
			return internalGetSubmodules(aliasSuffix: aliasSuffix)
		}

		func internalGetSubmodules(aliasSuffix: String? = nil) -> ExampleSchema.SubmoduleConnection {
			return field(field: "submodules", aliasSuffix: aliasSuffix) as! ExampleSchema.SubmoduleConnection
		}

		open var tarballUrl: String {
			return internalGetTarballUrl()
		}

		func internalGetTarballUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "tarballUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var tree: ExampleSchema.Tree {
			return internalGetTree()
		}

		func internalGetTree(aliasSuffix: String? = nil) -> ExampleSchema.Tree {
			return field(field: "tree", aliasSuffix: aliasSuffix) as! ExampleSchema.Tree
		}

		open var treeResourcePath: String {
			return internalGetTreeResourcePath()
		}

		func internalGetTreeResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "treeResourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var treeUrl: String {
			return internalGetTreeUrl()
		}

		func internalGetTreeUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "treeUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		open var viewerCanSubscribe: Bool {
			return internalGetViewerCanSubscribe()
		}

		func internalGetViewerCanSubscribe(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanSubscribe", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerSubscription: ExampleSchema.SubscriptionState? {
			return internalGetViewerSubscription()
		}

		func internalGetViewerSubscription(aliasSuffix: String? = nil) -> ExampleSchema.SubscriptionState? {
			return field(field: "viewerSubscription", aliasSuffix: aliasSuffix) as! ExampleSchema.SubscriptionState?
		}

		open var zipballUrl: String {
			return internalGetZipballUrl()
		}

		func internalGetZipballUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "zipballUrl", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "abbreviatedOid":

				return .scalar

				case "additions":

				return .scalar

				case "associatedPullRequests":

				return .object

				case "author":

				return .object

				case "authoredByCommitter":

				return .scalar

				case "authoredDate":

				return .scalar

				case "blame":

				return .object

				case "changedFiles":

				return .scalar

				case "comments":

				return .object

				case "commitResourcePath":

				return .scalar

				case "commitUrl":

				return .scalar

				case "committedDate":

				return .scalar

				case "committedViaWeb":

				return .scalar

				case "committer":

				return .object

				case "deletions":

				return .scalar

				case "deployments":

				return .object

				case "history":

				return .object

				case "id":

				return .scalar

				case "message":

				return .scalar

				case "messageBody":

				return .scalar

				case "messageBodyHTML":

				return .scalar

				case "messageHeadline":

				return .scalar

				case "messageHeadlineHTML":

				return .scalar

				case "oid":

				return .scalar

				case "onBehalfOf":

				return .object

				case "parents":

				return .object

				case "pushedDate":

				return .scalar

				case "repository":

				return .object

				case "resourcePath":

				return .scalar

				case "signature":

				return .object

				case "status":

				return .object

				case "statusCheckRollup":

				return .object

				case "submodules":

				return .object

				case "tarballUrl":

				return .scalar

				case "tree":

				return .object

				case "treeResourcePath":

				return .scalar

				case "treeUrl":

				return .scalar

				case "url":

				return .scalar

				case "viewerCanSubscribe":

				return .scalar

				case "viewerSubscription":

				return .scalar

				case "zipballUrl":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "associatedPullRequests":
				return internalGetAssociatedPullRequests()

				case "author":
				return internalGetAuthor()

				case "blame":
				return internalGetBlame()

				case "comments":
				return internalGetComments()

				case "committer":
				return internalGetCommitter()

				case "deployments":
				return internalGetDeployments()

				case "history":
				return internalGetHistory()

				case "onBehalfOf":
				return internalGetOnBehalfOf()

				case "parents":
				return internalGetParents()

				case "repository":
				return internalGetRepository()

				case "signature":
				return internalGetSignature()?.responseObject()

				case "status":
				return internalGetStatus()

				case "statusCheckRollup":
				return internalGetStatusCheckRollup()

				case "submodules":
				return internalGetSubmodules()

				case "tree":
				return internalGetTree()

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
					case "associatedPullRequests":
					if let value = internalGetAssociatedPullRequests() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "author":
					if let value = internalGetAuthor() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "blame":
					response.append(internalGetBlame())
					response.append(contentsOf: internalGetBlame().childResponseObjectMap())

					case "comments":
					response.append(internalGetComments())
					response.append(contentsOf: internalGetComments().childResponseObjectMap())

					case "committer":
					if let value = internalGetCommitter() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "deployments":
					if let value = internalGetDeployments() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "history":
					response.append(internalGetHistory())
					response.append(contentsOf: internalGetHistory().childResponseObjectMap())

					case "onBehalfOf":
					if let value = internalGetOnBehalfOf() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "parents":
					response.append(internalGetParents())
					response.append(contentsOf: internalGetParents().childResponseObjectMap())

					case "repository":
					response.append(internalGetRepository())
					response.append(contentsOf: internalGetRepository().childResponseObjectMap())

					case "signature":
					if let value = internalGetSignature() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "status":
					if let value = internalGetStatus() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "statusCheckRollup":
					if let value = internalGetStatusCheckRollup() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "submodules":
					response.append(internalGetSubmodules())
					response.append(contentsOf: internalGetSubmodules().childResponseObjectMap())

					case "tree":
					response.append(internalGetTree())
					response.append(contentsOf: internalGetTree().childResponseObjectMap())

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
