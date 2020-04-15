// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RepositoryQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Repository

		@discardableResult
		open func assignableUsers(aliasSuffix: String? = nil, query: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (UserConnectionQuery) -> Void) -> RepositoryQuery {
			var args: [String] = []

			if let query = query {
				args.append("query:\(GraphQL.quoteString(input: query))")
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

			let subquery = UserConnectionQuery()
			subfields(subquery)

			addField(field: "assignableUsers", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func branchProtectionRules(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (BranchProtectionRuleConnectionQuery) -> Void) -> RepositoryQuery {
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

			let subquery = BranchProtectionRuleConnectionQuery()
			subfields(subquery)

			addField(field: "branchProtectionRules", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func codeOfConduct(aliasSuffix: String? = nil, _ subfields: (CodeOfConductQuery) -> Void) -> RepositoryQuery {
			let subquery = CodeOfConductQuery()
			subfields(subquery)

			addField(field: "codeOfConduct", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func collaborators(aliasSuffix: String? = nil, affiliation: CollaboratorAffiliation? = nil, query: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (RepositoryCollaboratorConnectionQuery) -> Void) -> RepositoryQuery {
			var args: [String] = []

			if let affiliation = affiliation {
				args.append("affiliation:\(affiliation.rawValue)")
			}

			if let query = query {
				args.append("query:\(GraphQL.quoteString(input: query))")
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

			let subquery = RepositoryCollaboratorConnectionQuery()
			subfields(subquery)

			addField(field: "collaborators", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func commitComments(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (CommitCommentConnectionQuery) -> Void) -> RepositoryQuery {
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

			addField(field: "commitComments", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func defaultBranchRef(aliasSuffix: String? = nil, _ subfields: (RefQuery) -> Void) -> RepositoryQuery {
			let subquery = RefQuery()
			subfields(subquery)

			addField(field: "defaultBranchRef", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func deleteBranchOnMerge(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "deleteBranchOnMerge", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func deployKeys(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (DeployKeyConnectionQuery) -> Void) -> RepositoryQuery {
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

			let subquery = DeployKeyConnectionQuery()
			subfields(subquery)

			addField(field: "deployKeys", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func deployments(aliasSuffix: String? = nil, environments: [String]? = nil, orderBy: DeploymentOrder? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (DeploymentConnectionQuery) -> Void) -> RepositoryQuery {
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
		open func description(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "description", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func descriptionHtml(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "descriptionHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func diskUsage(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "diskUsage", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func forkCount(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "forkCount", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func forks(aliasSuffix: String? = nil, privacy: RepositoryPrivacy? = nil, orderBy: RepositoryOrder? = nil, affiliations: [RepositoryAffiliation]? = nil, ownerAffiliations: [RepositoryAffiliation]? = nil, isLocked: Bool? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (RepositoryConnectionQuery) -> Void) -> RepositoryQuery {
			var args: [String] = []

			if let privacy = privacy {
				args.append("privacy:\(privacy.rawValue)")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			if let affiliations = affiliations {
				args.append("affiliations:[\(affiliations.map{ "\($0.rawValue)" }.joined(separator: ","))]")
			}

			if let ownerAffiliations = ownerAffiliations {
				args.append("ownerAffiliations:[\(ownerAffiliations.map{ "\($0.rawValue)" }.joined(separator: ","))]")
			}

			if let isLocked = isLocked {
				args.append("isLocked:\(isLocked)")
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

			let subquery = RepositoryConnectionQuery()
			subfields(subquery)

			addField(field: "forks", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func fundingLinks(aliasSuffix: String? = nil, _ subfields: (FundingLinkQuery) -> Void) -> RepositoryQuery {
			let subquery = FundingLinkQuery()
			subfields(subquery)

			addField(field: "fundingLinks", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func hasIssuesEnabled(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "hasIssuesEnabled", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func hasProjectsEnabled(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "hasProjectsEnabled", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func hasWikiEnabled(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "hasWikiEnabled", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func homepageUrl(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "homepageUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isArchived(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "isArchived", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isDisabled(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "isDisabled", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isFork(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "isFork", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isLocked(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "isLocked", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isMirror(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "isMirror", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isPrivate(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "isPrivate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isTemplate(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "isTemplate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func issue(aliasSuffix: String? = nil, number: Int32, _ subfields: (IssueQuery) -> Void) -> RepositoryQuery {
			var args: [String] = []

			args.append("number:\(number)")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = IssueQuery()
			subfields(subquery)

			addField(field: "issue", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func issueOrPullRequest(aliasSuffix: String? = nil, number: Int32, _ subfields: (IssueOrPullRequestQuery) -> Void) -> RepositoryQuery {
			var args: [String] = []

			args.append("number:\(number)")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = IssueOrPullRequestQuery()
			subfields(subquery)

			addField(field: "issueOrPullRequest", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func issues(aliasSuffix: String? = nil, orderBy: IssueOrder? = nil, labels: [String]? = nil, states: [IssueState]? = nil, filterBy: IssueFilters? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (IssueConnectionQuery) -> Void) -> RepositoryQuery {
			var args: [String] = []

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			if let labels = labels {
				args.append("labels:[\(labels.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let states = states {
				args.append("states:[\(states.map{ "\($0.rawValue)" }.joined(separator: ","))]")
			}

			if let filterBy = filterBy {
				args.append("filterBy:\(filterBy.serialize())")
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

			let subquery = IssueConnectionQuery()
			subfields(subquery)

			addField(field: "issues", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func label(aliasSuffix: String? = nil, name: String, _ subfields: (LabelQuery) -> Void) -> RepositoryQuery {
			var args: [String] = []

			args.append("name:\(GraphQL.quoteString(input: name))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = LabelQuery()
			subfields(subquery)

			addField(field: "label", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func labels(aliasSuffix: String? = nil, orderBy: LabelOrder? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, query: String? = nil, _ subfields: (LabelConnectionQuery) -> Void) -> RepositoryQuery {
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

			if let query = query {
				args.append("query:\(GraphQL.quoteString(input: query))")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = LabelConnectionQuery()
			subfields(subquery)

			addField(field: "labels", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func languages(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: LanguageOrder? = nil, _ subfields: (LanguageConnectionQuery) -> Void) -> RepositoryQuery {
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

			let subquery = LanguageConnectionQuery()
			subfields(subquery)

			addField(field: "languages", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func licenseInfo(aliasSuffix: String? = nil, _ subfields: (LicenseQuery) -> Void) -> RepositoryQuery {
			let subquery = LicenseQuery()
			subfields(subquery)

			addField(field: "licenseInfo", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func lockReason(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "lockReason", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func mentionableUsers(aliasSuffix: String? = nil, query: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (UserConnectionQuery) -> Void) -> RepositoryQuery {
			var args: [String] = []

			if let query = query {
				args.append("query:\(GraphQL.quoteString(input: query))")
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

			let subquery = UserConnectionQuery()
			subfields(subquery)

			addField(field: "mentionableUsers", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func mergeCommitAllowed(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "mergeCommitAllowed", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func milestone(aliasSuffix: String? = nil, number: Int32, _ subfields: (MilestoneQuery) -> Void) -> RepositoryQuery {
			var args: [String] = []

			args.append("number:\(number)")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = MilestoneQuery()
			subfields(subquery)

			addField(field: "milestone", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func milestones(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, states: [MilestoneState]? = nil, orderBy: MilestoneOrder? = nil, _ subfields: (MilestoneConnectionQuery) -> Void) -> RepositoryQuery {
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

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = MilestoneConnectionQuery()
			subfields(subquery)

			addField(field: "milestones", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func mirrorUrl(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "mirrorUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func nameWithOwner(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "nameWithOwner", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func object(aliasSuffix: String? = nil, oid: String? = nil, expression: String? = nil, _ subfields: (GitObjectQuery) -> Void) -> RepositoryQuery {
			var args: [String] = []

			if let oid = oid {
				args.append("oid:\(GraphQL.quoteString(input: oid))")
			}

			if let expression = expression {
				args.append("expression:\(GraphQL.quoteString(input: expression))")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = GitObjectQuery()
			subfields(subquery)

			addField(field: "object", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func openGraphImageUrl(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "openGraphImageUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func owner(aliasSuffix: String? = nil, _ subfields: (RepositoryOwnerQuery) -> Void) -> RepositoryQuery {
			let subquery = RepositoryOwnerQuery()
			subfields(subquery)

			addField(field: "owner", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func parent(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> RepositoryQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "parent", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func primaryLanguage(aliasSuffix: String? = nil, _ subfields: (LanguageQuery) -> Void) -> RepositoryQuery {
			let subquery = LanguageQuery()
			subfields(subquery)

			addField(field: "primaryLanguage", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func project(aliasSuffix: String? = nil, number: Int32, _ subfields: (ProjectQuery) -> Void) -> RepositoryQuery {
			var args: [String] = []

			args.append("number:\(number)")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = ProjectQuery()
			subfields(subquery)

			addField(field: "project", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func projects(aliasSuffix: String? = nil, orderBy: ProjectOrder? = nil, search: String? = nil, states: [ProjectState]? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (ProjectConnectionQuery) -> Void) -> RepositoryQuery {
			var args: [String] = []

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			if let search = search {
				args.append("search:\(GraphQL.quoteString(input: search))")
			}

			if let states = states {
				args.append("states:[\(states.map{ "\($0.rawValue)" }.joined(separator: ","))]")
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

			let subquery = ProjectConnectionQuery()
			subfields(subquery)

			addField(field: "projects", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func projectsResourcePath(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "projectsResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func projectsUrl(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "projectsUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pullRequest(aliasSuffix: String? = nil, number: Int32, _ subfields: (PullRequestQuery) -> Void) -> RepositoryQuery {
			var args: [String] = []

			args.append("number:\(number)")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = PullRequestQuery()
			subfields(subquery)

			addField(field: "pullRequest", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func pullRequests(aliasSuffix: String? = nil, states: [PullRequestState]? = nil, labels: [String]? = nil, headRefName: String? = nil, baseRefName: String? = nil, orderBy: IssueOrder? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (PullRequestConnectionQuery) -> Void) -> RepositoryQuery {
			var args: [String] = []

			if let states = states {
				args.append("states:[\(states.map{ "\($0.rawValue)" }.joined(separator: ","))]")
			}

			if let labels = labels {
				args.append("labels:[\(labels.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let headRefName = headRefName {
				args.append("headRefName:\(GraphQL.quoteString(input: headRefName))")
			}

			if let baseRefName = baseRefName {
				args.append("baseRefName:\(GraphQL.quoteString(input: baseRefName))")
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

			let subquery = PullRequestConnectionQuery()
			subfields(subquery)

			addField(field: "pullRequests", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func pushedAt(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "pushedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func rebaseMergeAllowed(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "rebaseMergeAllowed", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func ref(aliasSuffix: String? = nil, qualifiedName: String, _ subfields: (RefQuery) -> Void) -> RepositoryQuery {
			var args: [String] = []

			args.append("qualifiedName:\(GraphQL.quoteString(input: qualifiedName))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RefQuery()
			subfields(subquery)

			addField(field: "ref", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func refs(aliasSuffix: String? = nil, query: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, refPrefix: String, direction: OrderDirection? = nil, orderBy: RefOrder? = nil, _ subfields: (RefConnectionQuery) -> Void) -> RepositoryQuery {
			var args: [String] = []

			args.append("refPrefix:\(GraphQL.quoteString(input: refPrefix))")

			if let query = query {
				args.append("query:\(GraphQL.quoteString(input: query))")
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

			if let direction = direction {
				args.append("direction:\(direction.rawValue)")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = RefConnectionQuery()
			subfields(subquery)

			addField(field: "refs", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageOwner` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func registryPackages(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, name: String? = nil, names: [String]? = nil, repositoryId: GraphQL.ID? = nil, packageType: RegistryPackageType? = nil, registryPackageType: String? = nil, publicOnly: Bool? = nil, _ subfields: (RegistryPackageConnectionQuery) -> Void) -> RepositoryQuery {
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

			if let name = name {
				args.append("name:\(GraphQL.quoteString(input: name))")
			}

			if let names = names {
				args.append("names:[\(names.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let repositoryId = repositoryId {
				args.append("repositoryId:\(GraphQL.quoteString(input: "\(repositoryId.rawValue)"))")
			}

			if let packageType = packageType {
				args.append("packageType:\(packageType.rawValue)")
			}

			if let registryPackageType = registryPackageType {
				args.append("registryPackageType:\(GraphQL.quoteString(input: registryPackageType))")
			}

			if let publicOnly = publicOnly {
				args.append("publicOnly:\(publicOnly)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = RegistryPackageConnectionQuery()
			subfields(subquery)

			addField(field: "registryPackages", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageSearch` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func registryPackagesForQuery(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, query: String? = nil, packageType: RegistryPackageType? = nil, _ subfields: (RegistryPackageConnectionQuery) -> Void) -> RepositoryQuery {
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

			if let query = query {
				args.append("query:\(GraphQL.quoteString(input: query))")
			}

			if let packageType = packageType {
				args.append("packageType:\(packageType.rawValue)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = RegistryPackageConnectionQuery()
			subfields(subquery)

			addField(field: "registryPackagesForQuery", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func release(aliasSuffix: String? = nil, tagName: String, _ subfields: (ReleaseQuery) -> Void) -> RepositoryQuery {
			var args: [String] = []

			args.append("tagName:\(GraphQL.quoteString(input: tagName))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = ReleaseQuery()
			subfields(subquery)

			addField(field: "release", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func releases(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: ReleaseOrder? = nil, _ subfields: (ReleaseConnectionQuery) -> Void) -> RepositoryQuery {
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

			let subquery = ReleaseConnectionQuery()
			subfields(subquery)

			addField(field: "releases", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func repositoryTopics(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (RepositoryTopicConnectionQuery) -> Void) -> RepositoryQuery {
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

			let subquery = RepositoryTopicConnectionQuery()
			subfields(subquery)

			addField(field: "repositoryTopics", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func shortDescriptionHtml(aliasSuffix: String? = nil, limit: Int32? = nil) -> RepositoryQuery {
			var args: [String] = []

			if let limit = limit {
				args.append("limit:\(limit)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "shortDescriptionHTML", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func squashMergeAllowed(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "squashMergeAllowed", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func sshUrl(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "sshUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func stargazers(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: StarOrder? = nil, _ subfields: (StargazerConnectionQuery) -> Void) -> RepositoryQuery {
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

			let subquery = StargazerConnectionQuery()
			subfields(subquery)

			addField(field: "stargazers", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func submodules(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (SubmoduleConnectionQuery) -> Void) -> RepositoryQuery {
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
		open func tempCloneToken(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "tempCloneToken", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func templateRepository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> RepositoryQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "templateRepository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func usesCustomOpenGraphImage(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "usesCustomOpenGraphImage", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanAdminister(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "viewerCanAdminister", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanCreateProjects(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "viewerCanCreateProjects", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanSubscribe(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "viewerCanSubscribe", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanUpdateTopics(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "viewerCanUpdateTopics", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerHasStarred(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "viewerHasStarred", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerPermission(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "viewerPermission", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerSubscription(aliasSuffix: String? = nil) -> RepositoryQuery {
			addField(field: "viewerSubscription", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func vulnerabilityAlerts(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (RepositoryVulnerabilityAlertConnectionQuery) -> Void) -> RepositoryQuery {
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

			let subquery = RepositoryVulnerabilityAlertConnectionQuery()
			subfields(subquery)

			addField(field: "vulnerabilityAlerts", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func watchers(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (UserConnectionQuery) -> Void) -> RepositoryQuery {
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

			addField(field: "watchers", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}
	}

	open class Repository: GraphQL.AbstractResponse, GraphQLObject, Node, PermissionGranter, PinnableItem, ProjectOwner, RegistryPackageOwner, RegistryPackageSearch, RepositoryInfo, SearchResultItem, Starrable, Subscribable, UniformResourceLocatable {
		public typealias Query = RepositoryQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "assignableUsers":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try UserConnection(fields: value)

				case "branchProtectionRules":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try BranchProtectionRuleConnection(fields: value)

				case "codeOfConduct":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try CodeOfConduct(fields: value)

				case "collaborators":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try RepositoryCollaboratorConnection(fields: value)

				case "commitComments":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try CommitCommentConnection(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "defaultBranchRef":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try Ref(fields: value)

				case "deleteBranchOnMerge":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "deployKeys":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try DeployKeyConnection(fields: value)

				case "deployments":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try DeploymentConnection(fields: value)

				case "description":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "descriptionHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "diskUsage":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "forkCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "forks":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try RepositoryConnection(fields: value)

				case "fundingLinks":
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try FundingLink(fields: $0) }

				case "hasIssuesEnabled":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "hasProjectsEnabled":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "hasWikiEnabled":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "homepageUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "isArchived":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isDisabled":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isFork":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isLocked":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isMirror":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isPrivate":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isTemplate":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "issue":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try Issue(fields: value)

				case "issueOrPullRequest":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try UnknownIssueOrPullRequest.create(fields: value)

				case "issues":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try IssueConnection(fields: value)

				case "label":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try Label(fields: value)

				case "labels":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try LabelConnection(fields: value)

				case "languages":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try LanguageConnection(fields: value)

				case "licenseInfo":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try License(fields: value)

				case "lockReason":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return RepositoryLockReason(rawValue: value) ?? .unknownValue

				case "mentionableUsers":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try UserConnection(fields: value)

				case "mergeCommitAllowed":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "milestone":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try Milestone(fields: value)

				case "milestones":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try MilestoneConnection(fields: value)

				case "mirrorUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "nameWithOwner":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "object":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try UnknownGitObject.create(fields: value)

				case "openGraphImageUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "owner":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try UnknownRepositoryOwner.create(fields: value)

				case "parent":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "primaryLanguage":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try Language(fields: value)

				case "project":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try Project(fields: value)

				case "projects":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try ProjectConnection(fields: value)

				case "projectsResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "projectsUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "pullRequest":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try PullRequest(fields: value)

				case "pullRequests":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestConnection(fields: value)

				case "pushedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "rebaseMergeAllowed":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "ref":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try Ref(fields: value)

				case "refs":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try RefConnection(fields: value)

				case "registryPackages":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageConnection(fields: value)

				case "registryPackagesForQuery":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageConnection(fields: value)

				case "release":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try Release(fields: value)

				case "releases":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try ReleaseConnection(fields: value)

				case "repositoryTopics":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try RepositoryTopicConnection(fields: value)

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "shortDescriptionHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "squashMergeAllowed":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "sshUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "stargazers":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try StargazerConnection(fields: value)

				case "submodules":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try SubmoduleConnection(fields: value)

				case "tempCloneToken":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "templateRepository":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "usesCustomOpenGraphImage":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanAdminister":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanCreateProjects":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanSubscribe":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanUpdateTopics":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerHasStarred":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerPermission":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return RepositoryPermission(rawValue: value) ?? .unknownValue

				case "viewerSubscription":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return SubscriptionState(rawValue: value) ?? .unknownValue

				case "vulnerabilityAlerts":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try RepositoryVulnerabilityAlertConnection(fields: value)

				case "watchers":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
				}
				return try UserConnection(fields: value)

				default:
				throw SchemaViolationError(type: Repository.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Repository" }

		open var assignableUsers: ExampleSchema.UserConnection {
			return internalGetAssignableUsers()
		}

		open func aliasedAssignableUsers(aliasSuffix: String) -> ExampleSchema.UserConnection {
			return internalGetAssignableUsers(aliasSuffix: aliasSuffix)
		}

		func internalGetAssignableUsers(aliasSuffix: String? = nil) -> ExampleSchema.UserConnection {
			return field(field: "assignableUsers", aliasSuffix: aliasSuffix) as! ExampleSchema.UserConnection
		}

		open var branchProtectionRules: ExampleSchema.BranchProtectionRuleConnection {
			return internalGetBranchProtectionRules()
		}

		open func aliasedBranchProtectionRules(aliasSuffix: String) -> ExampleSchema.BranchProtectionRuleConnection {
			return internalGetBranchProtectionRules(aliasSuffix: aliasSuffix)
		}

		func internalGetBranchProtectionRules(aliasSuffix: String? = nil) -> ExampleSchema.BranchProtectionRuleConnection {
			return field(field: "branchProtectionRules", aliasSuffix: aliasSuffix) as! ExampleSchema.BranchProtectionRuleConnection
		}

		open var codeOfConduct: ExampleSchema.CodeOfConduct? {
			return internalGetCodeOfConduct()
		}

		func internalGetCodeOfConduct(aliasSuffix: String? = nil) -> ExampleSchema.CodeOfConduct? {
			return field(field: "codeOfConduct", aliasSuffix: aliasSuffix) as! ExampleSchema.CodeOfConduct?
		}

		open var collaborators: ExampleSchema.RepositoryCollaboratorConnection? {
			return internalGetCollaborators()
		}

		open func aliasedCollaborators(aliasSuffix: String) -> ExampleSchema.RepositoryCollaboratorConnection? {
			return internalGetCollaborators(aliasSuffix: aliasSuffix)
		}

		func internalGetCollaborators(aliasSuffix: String? = nil) -> ExampleSchema.RepositoryCollaboratorConnection? {
			return field(field: "collaborators", aliasSuffix: aliasSuffix) as! ExampleSchema.RepositoryCollaboratorConnection?
		}

		open var commitComments: ExampleSchema.CommitCommentConnection {
			return internalGetCommitComments()
		}

		open func aliasedCommitComments(aliasSuffix: String) -> ExampleSchema.CommitCommentConnection {
			return internalGetCommitComments(aliasSuffix: aliasSuffix)
		}

		func internalGetCommitComments(aliasSuffix: String? = nil) -> ExampleSchema.CommitCommentConnection {
			return field(field: "commitComments", aliasSuffix: aliasSuffix) as! ExampleSchema.CommitCommentConnection
		}

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var databaseId: Int32? {
			return internalGetDatabaseId()
		}

		func internalGetDatabaseId(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "databaseId", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var defaultBranchRef: ExampleSchema.Ref? {
			return internalGetDefaultBranchRef()
		}

		func internalGetDefaultBranchRef(aliasSuffix: String? = nil) -> ExampleSchema.Ref? {
			return field(field: "defaultBranchRef", aliasSuffix: aliasSuffix) as! ExampleSchema.Ref?
		}

		open var deleteBranchOnMerge: Bool {
			return internalGetDeleteBranchOnMerge()
		}

		func internalGetDeleteBranchOnMerge(aliasSuffix: String? = nil) -> Bool {
			return field(field: "deleteBranchOnMerge", aliasSuffix: aliasSuffix) as! Bool
		}

		open var deployKeys: ExampleSchema.DeployKeyConnection {
			return internalGetDeployKeys()
		}

		open func aliasedDeployKeys(aliasSuffix: String) -> ExampleSchema.DeployKeyConnection {
			return internalGetDeployKeys(aliasSuffix: aliasSuffix)
		}

		func internalGetDeployKeys(aliasSuffix: String? = nil) -> ExampleSchema.DeployKeyConnection {
			return field(field: "deployKeys", aliasSuffix: aliasSuffix) as! ExampleSchema.DeployKeyConnection
		}

		open var deployments: ExampleSchema.DeploymentConnection {
			return internalGetDeployments()
		}

		open func aliasedDeployments(aliasSuffix: String) -> ExampleSchema.DeploymentConnection {
			return internalGetDeployments(aliasSuffix: aliasSuffix)
		}

		func internalGetDeployments(aliasSuffix: String? = nil) -> ExampleSchema.DeploymentConnection {
			return field(field: "deployments", aliasSuffix: aliasSuffix) as! ExampleSchema.DeploymentConnection
		}

		open var description: String? {
			return internalGetDescription()
		}

		func internalGetDescription(aliasSuffix: String? = nil) -> String? {
			return field(field: "description", aliasSuffix: aliasSuffix) as! String?
		}

		open var descriptionHtml: String {
			return internalGetDescriptionHtml()
		}

		func internalGetDescriptionHtml(aliasSuffix: String? = nil) -> String {
			return field(field: "descriptionHTML", aliasSuffix: aliasSuffix) as! String
		}

		open var diskUsage: Int32? {
			return internalGetDiskUsage()
		}

		func internalGetDiskUsage(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "diskUsage", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var forkCount: Int32 {
			return internalGetForkCount()
		}

		func internalGetForkCount(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "forkCount", aliasSuffix: aliasSuffix) as! Int32
		}

		open var forks: ExampleSchema.RepositoryConnection {
			return internalGetForks()
		}

		open func aliasedForks(aliasSuffix: String) -> ExampleSchema.RepositoryConnection {
			return internalGetForks(aliasSuffix: aliasSuffix)
		}

		func internalGetForks(aliasSuffix: String? = nil) -> ExampleSchema.RepositoryConnection {
			return field(field: "forks", aliasSuffix: aliasSuffix) as! ExampleSchema.RepositoryConnection
		}

		open var fundingLinks: [ExampleSchema.FundingLink] {
			return internalGetFundingLinks()
		}

		func internalGetFundingLinks(aliasSuffix: String? = nil) -> [ExampleSchema.FundingLink] {
			return field(field: "fundingLinks", aliasSuffix: aliasSuffix) as! [ExampleSchema.FundingLink]
		}

		open var hasIssuesEnabled: Bool {
			return internalGetHasIssuesEnabled()
		}

		func internalGetHasIssuesEnabled(aliasSuffix: String? = nil) -> Bool {
			return field(field: "hasIssuesEnabled", aliasSuffix: aliasSuffix) as! Bool
		}

		open var hasProjectsEnabled: Bool {
			return internalGetHasProjectsEnabled()
		}

		func internalGetHasProjectsEnabled(aliasSuffix: String? = nil) -> Bool {
			return field(field: "hasProjectsEnabled", aliasSuffix: aliasSuffix) as! Bool
		}

		open var hasWikiEnabled: Bool {
			return internalGetHasWikiEnabled()
		}

		func internalGetHasWikiEnabled(aliasSuffix: String? = nil) -> Bool {
			return field(field: "hasWikiEnabled", aliasSuffix: aliasSuffix) as! Bool
		}

		open var homepageUrl: String? {
			return internalGetHomepageUrl()
		}

		func internalGetHomepageUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "homepageUrl", aliasSuffix: aliasSuffix) as! String?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var isArchived: Bool {
			return internalGetIsArchived()
		}

		func internalGetIsArchived(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isArchived", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isDisabled: Bool {
			return internalGetIsDisabled()
		}

		func internalGetIsDisabled(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isDisabled", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isFork: Bool {
			return internalGetIsFork()
		}

		func internalGetIsFork(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isFork", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isLocked: Bool {
			return internalGetIsLocked()
		}

		func internalGetIsLocked(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isLocked", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isMirror: Bool {
			return internalGetIsMirror()
		}

		func internalGetIsMirror(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isMirror", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isPrivate: Bool {
			return internalGetIsPrivate()
		}

		func internalGetIsPrivate(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isPrivate", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isTemplate: Bool {
			return internalGetIsTemplate()
		}

		func internalGetIsTemplate(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isTemplate", aliasSuffix: aliasSuffix) as! Bool
		}

		open var issue: ExampleSchema.Issue? {
			return internalGetIssue()
		}

		open func aliasedIssue(aliasSuffix: String) -> ExampleSchema.Issue? {
			return internalGetIssue(aliasSuffix: aliasSuffix)
		}

		func internalGetIssue(aliasSuffix: String? = nil) -> ExampleSchema.Issue? {
			return field(field: "issue", aliasSuffix: aliasSuffix) as! ExampleSchema.Issue?
		}

		open var issueOrPullRequest: IssueOrPullRequest? {
			return internalGetIssueOrPullRequest()
		}

		open func aliasedIssueOrPullRequest(aliasSuffix: String) -> IssueOrPullRequest? {
			return internalGetIssueOrPullRequest(aliasSuffix: aliasSuffix)
		}

		func internalGetIssueOrPullRequest(aliasSuffix: String? = nil) -> IssueOrPullRequest? {
			return field(field: "issueOrPullRequest", aliasSuffix: aliasSuffix) as! IssueOrPullRequest?
		}

		open var issues: ExampleSchema.IssueConnection {
			return internalGetIssues()
		}

		open func aliasedIssues(aliasSuffix: String) -> ExampleSchema.IssueConnection {
			return internalGetIssues(aliasSuffix: aliasSuffix)
		}

		func internalGetIssues(aliasSuffix: String? = nil) -> ExampleSchema.IssueConnection {
			return field(field: "issues", aliasSuffix: aliasSuffix) as! ExampleSchema.IssueConnection
		}

		open var label: ExampleSchema.Label? {
			return internalGetLabel()
		}

		open func aliasedLabel(aliasSuffix: String) -> ExampleSchema.Label? {
			return internalGetLabel(aliasSuffix: aliasSuffix)
		}

		func internalGetLabel(aliasSuffix: String? = nil) -> ExampleSchema.Label? {
			return field(field: "label", aliasSuffix: aliasSuffix) as! ExampleSchema.Label?
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

		open var languages: ExampleSchema.LanguageConnection? {
			return internalGetLanguages()
		}

		open func aliasedLanguages(aliasSuffix: String) -> ExampleSchema.LanguageConnection? {
			return internalGetLanguages(aliasSuffix: aliasSuffix)
		}

		func internalGetLanguages(aliasSuffix: String? = nil) -> ExampleSchema.LanguageConnection? {
			return field(field: "languages", aliasSuffix: aliasSuffix) as! ExampleSchema.LanguageConnection?
		}

		open var licenseInfo: ExampleSchema.License? {
			return internalGetLicenseInfo()
		}

		func internalGetLicenseInfo(aliasSuffix: String? = nil) -> ExampleSchema.License? {
			return field(field: "licenseInfo", aliasSuffix: aliasSuffix) as! ExampleSchema.License?
		}

		open var lockReason: ExampleSchema.RepositoryLockReason? {
			return internalGetLockReason()
		}

		func internalGetLockReason(aliasSuffix: String? = nil) -> ExampleSchema.RepositoryLockReason? {
			return field(field: "lockReason", aliasSuffix: aliasSuffix) as! ExampleSchema.RepositoryLockReason?
		}

		open var mentionableUsers: ExampleSchema.UserConnection {
			return internalGetMentionableUsers()
		}

		open func aliasedMentionableUsers(aliasSuffix: String) -> ExampleSchema.UserConnection {
			return internalGetMentionableUsers(aliasSuffix: aliasSuffix)
		}

		func internalGetMentionableUsers(aliasSuffix: String? = nil) -> ExampleSchema.UserConnection {
			return field(field: "mentionableUsers", aliasSuffix: aliasSuffix) as! ExampleSchema.UserConnection
		}

		open var mergeCommitAllowed: Bool {
			return internalGetMergeCommitAllowed()
		}

		func internalGetMergeCommitAllowed(aliasSuffix: String? = nil) -> Bool {
			return field(field: "mergeCommitAllowed", aliasSuffix: aliasSuffix) as! Bool
		}

		open var milestone: ExampleSchema.Milestone? {
			return internalGetMilestone()
		}

		open func aliasedMilestone(aliasSuffix: String) -> ExampleSchema.Milestone? {
			return internalGetMilestone(aliasSuffix: aliasSuffix)
		}

		func internalGetMilestone(aliasSuffix: String? = nil) -> ExampleSchema.Milestone? {
			return field(field: "milestone", aliasSuffix: aliasSuffix) as! ExampleSchema.Milestone?
		}

		open var milestones: ExampleSchema.MilestoneConnection? {
			return internalGetMilestones()
		}

		open func aliasedMilestones(aliasSuffix: String) -> ExampleSchema.MilestoneConnection? {
			return internalGetMilestones(aliasSuffix: aliasSuffix)
		}

		func internalGetMilestones(aliasSuffix: String? = nil) -> ExampleSchema.MilestoneConnection? {
			return field(field: "milestones", aliasSuffix: aliasSuffix) as! ExampleSchema.MilestoneConnection?
		}

		open var mirrorUrl: String? {
			return internalGetMirrorUrl()
		}

		func internalGetMirrorUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "mirrorUrl", aliasSuffix: aliasSuffix) as! String?
		}

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		open var nameWithOwner: String {
			return internalGetNameWithOwner()
		}

		func internalGetNameWithOwner(aliasSuffix: String? = nil) -> String {
			return field(field: "nameWithOwner", aliasSuffix: aliasSuffix) as! String
		}

		open var object: GitObject? {
			return internalGetObject()
		}

		open func aliasedObject(aliasSuffix: String) -> GitObject? {
			return internalGetObject(aliasSuffix: aliasSuffix)
		}

		func internalGetObject(aliasSuffix: String? = nil) -> GitObject? {
			return field(field: "object", aliasSuffix: aliasSuffix) as! GitObject?
		}

		open var openGraphImageUrl: String {
			return internalGetOpenGraphImageUrl()
		}

		func internalGetOpenGraphImageUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "openGraphImageUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var owner: RepositoryOwner {
			return internalGetOwner()
		}

		func internalGetOwner(aliasSuffix: String? = nil) -> RepositoryOwner {
			return field(field: "owner", aliasSuffix: aliasSuffix) as! RepositoryOwner
		}

		open var parent: ExampleSchema.Repository? {
			return internalGetParent()
		}

		func internalGetParent(aliasSuffix: String? = nil) -> ExampleSchema.Repository? {
			return field(field: "parent", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository?
		}

		open var primaryLanguage: ExampleSchema.Language? {
			return internalGetPrimaryLanguage()
		}

		func internalGetPrimaryLanguage(aliasSuffix: String? = nil) -> ExampleSchema.Language? {
			return field(field: "primaryLanguage", aliasSuffix: aliasSuffix) as! ExampleSchema.Language?
		}

		open var project: ExampleSchema.Project? {
			return internalGetProject()
		}

		open func aliasedProject(aliasSuffix: String) -> ExampleSchema.Project? {
			return internalGetProject(aliasSuffix: aliasSuffix)
		}

		func internalGetProject(aliasSuffix: String? = nil) -> ExampleSchema.Project? {
			return field(field: "project", aliasSuffix: aliasSuffix) as! ExampleSchema.Project?
		}

		open var projects: ExampleSchema.ProjectConnection {
			return internalGetProjects()
		}

		open func aliasedProjects(aliasSuffix: String) -> ExampleSchema.ProjectConnection {
			return internalGetProjects(aliasSuffix: aliasSuffix)
		}

		func internalGetProjects(aliasSuffix: String? = nil) -> ExampleSchema.ProjectConnection {
			return field(field: "projects", aliasSuffix: aliasSuffix) as! ExampleSchema.ProjectConnection
		}

		open var projectsResourcePath: String {
			return internalGetProjectsResourcePath()
		}

		func internalGetProjectsResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "projectsResourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var projectsUrl: String {
			return internalGetProjectsUrl()
		}

		func internalGetProjectsUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "projectsUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var pullRequest: ExampleSchema.PullRequest? {
			return internalGetPullRequest()
		}

		open func aliasedPullRequest(aliasSuffix: String) -> ExampleSchema.PullRequest? {
			return internalGetPullRequest(aliasSuffix: aliasSuffix)
		}

		func internalGetPullRequest(aliasSuffix: String? = nil) -> ExampleSchema.PullRequest? {
			return field(field: "pullRequest", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequest?
		}

		open var pullRequests: ExampleSchema.PullRequestConnection {
			return internalGetPullRequests()
		}

		open func aliasedPullRequests(aliasSuffix: String) -> ExampleSchema.PullRequestConnection {
			return internalGetPullRequests(aliasSuffix: aliasSuffix)
		}

		func internalGetPullRequests(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestConnection {
			return field(field: "pullRequests", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestConnection
		}

		open var pushedAt: String? {
			return internalGetPushedAt()
		}

		func internalGetPushedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "pushedAt", aliasSuffix: aliasSuffix) as! String?
		}

		open var rebaseMergeAllowed: Bool {
			return internalGetRebaseMergeAllowed()
		}

		func internalGetRebaseMergeAllowed(aliasSuffix: String? = nil) -> Bool {
			return field(field: "rebaseMergeAllowed", aliasSuffix: aliasSuffix) as! Bool
		}

		open var ref: ExampleSchema.Ref? {
			return internalGetRef()
		}

		open func aliasedRef(aliasSuffix: String) -> ExampleSchema.Ref? {
			return internalGetRef(aliasSuffix: aliasSuffix)
		}

		func internalGetRef(aliasSuffix: String? = nil) -> ExampleSchema.Ref? {
			return field(field: "ref", aliasSuffix: aliasSuffix) as! ExampleSchema.Ref?
		}

		open var refs: ExampleSchema.RefConnection? {
			return internalGetRefs()
		}

		open func aliasedRefs(aliasSuffix: String) -> ExampleSchema.RefConnection? {
			return internalGetRefs(aliasSuffix: aliasSuffix)
		}

		func internalGetRefs(aliasSuffix: String? = nil) -> ExampleSchema.RefConnection? {
			return field(field: "refs", aliasSuffix: aliasSuffix) as! ExampleSchema.RefConnection?
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageOwner` object instead. Removal on 2020-04-01 UTC.")
		open var registryPackages: ExampleSchema.RegistryPackageConnection {
			return internalGetRegistryPackages()
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageOwner` object instead. Removal on 2020-04-01 UTC.")
		open func aliasedRegistryPackages(aliasSuffix: String) -> ExampleSchema.RegistryPackageConnection {
			return internalGetRegistryPackages(aliasSuffix: aliasSuffix)
		}

		func internalGetRegistryPackages(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageConnection {
			return field(field: "registryPackages", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageConnection
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageSearch` object instead. Removal on 2020-04-01 UTC.")
		open var registryPackagesForQuery: ExampleSchema.RegistryPackageConnection {
			return internalGetRegistryPackagesForQuery()
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageSearch` object instead. Removal on 2020-04-01 UTC.")
		open func aliasedRegistryPackagesForQuery(aliasSuffix: String) -> ExampleSchema.RegistryPackageConnection {
			return internalGetRegistryPackagesForQuery(aliasSuffix: aliasSuffix)
		}

		func internalGetRegistryPackagesForQuery(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageConnection {
			return field(field: "registryPackagesForQuery", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageConnection
		}

		open var release: ExampleSchema.Release? {
			return internalGetRelease()
		}

		open func aliasedRelease(aliasSuffix: String) -> ExampleSchema.Release? {
			return internalGetRelease(aliasSuffix: aliasSuffix)
		}

		func internalGetRelease(aliasSuffix: String? = nil) -> ExampleSchema.Release? {
			return field(field: "release", aliasSuffix: aliasSuffix) as! ExampleSchema.Release?
		}

		open var releases: ExampleSchema.ReleaseConnection {
			return internalGetReleases()
		}

		open func aliasedReleases(aliasSuffix: String) -> ExampleSchema.ReleaseConnection {
			return internalGetReleases(aliasSuffix: aliasSuffix)
		}

		func internalGetReleases(aliasSuffix: String? = nil) -> ExampleSchema.ReleaseConnection {
			return field(field: "releases", aliasSuffix: aliasSuffix) as! ExampleSchema.ReleaseConnection
		}

		open var repositoryTopics: ExampleSchema.RepositoryTopicConnection {
			return internalGetRepositoryTopics()
		}

		open func aliasedRepositoryTopics(aliasSuffix: String) -> ExampleSchema.RepositoryTopicConnection {
			return internalGetRepositoryTopics(aliasSuffix: aliasSuffix)
		}

		func internalGetRepositoryTopics(aliasSuffix: String? = nil) -> ExampleSchema.RepositoryTopicConnection {
			return field(field: "repositoryTopics", aliasSuffix: aliasSuffix) as! ExampleSchema.RepositoryTopicConnection
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var shortDescriptionHtml: String {
			return internalGetShortDescriptionHtml()
		}

		open func aliasedShortDescriptionHtml(aliasSuffix: String) -> String {
			return internalGetShortDescriptionHtml(aliasSuffix: aliasSuffix)
		}

		func internalGetShortDescriptionHtml(aliasSuffix: String? = nil) -> String {
			return field(field: "shortDescriptionHTML", aliasSuffix: aliasSuffix) as! String
		}

		open var squashMergeAllowed: Bool {
			return internalGetSquashMergeAllowed()
		}

		func internalGetSquashMergeAllowed(aliasSuffix: String? = nil) -> Bool {
			return field(field: "squashMergeAllowed", aliasSuffix: aliasSuffix) as! Bool
		}

		open var sshUrl: String {
			return internalGetSshUrl()
		}

		func internalGetSshUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "sshUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var stargazers: ExampleSchema.StargazerConnection {
			return internalGetStargazers()
		}

		open func aliasedStargazers(aliasSuffix: String) -> ExampleSchema.StargazerConnection {
			return internalGetStargazers(aliasSuffix: aliasSuffix)
		}

		func internalGetStargazers(aliasSuffix: String? = nil) -> ExampleSchema.StargazerConnection {
			return field(field: "stargazers", aliasSuffix: aliasSuffix) as! ExampleSchema.StargazerConnection
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

		open var tempCloneToken: String? {
			return internalGetTempCloneToken()
		}

		func internalGetTempCloneToken(aliasSuffix: String? = nil) -> String? {
			return field(field: "tempCloneToken", aliasSuffix: aliasSuffix) as! String?
		}

		open var templateRepository: ExampleSchema.Repository? {
			return internalGetTemplateRepository()
		}

		func internalGetTemplateRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository? {
			return field(field: "templateRepository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository?
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

		open var usesCustomOpenGraphImage: Bool {
			return internalGetUsesCustomOpenGraphImage()
		}

		func internalGetUsesCustomOpenGraphImage(aliasSuffix: String? = nil) -> Bool {
			return field(field: "usesCustomOpenGraphImage", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCanAdminister: Bool {
			return internalGetViewerCanAdminister()
		}

		func internalGetViewerCanAdminister(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanAdminister", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCanCreateProjects: Bool {
			return internalGetViewerCanCreateProjects()
		}

		func internalGetViewerCanCreateProjects(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanCreateProjects", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCanSubscribe: Bool {
			return internalGetViewerCanSubscribe()
		}

		func internalGetViewerCanSubscribe(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanSubscribe", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCanUpdateTopics: Bool {
			return internalGetViewerCanUpdateTopics()
		}

		func internalGetViewerCanUpdateTopics(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanUpdateTopics", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerHasStarred: Bool {
			return internalGetViewerHasStarred()
		}

		func internalGetViewerHasStarred(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerHasStarred", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerPermission: ExampleSchema.RepositoryPermission? {
			return internalGetViewerPermission()
		}

		func internalGetViewerPermission(aliasSuffix: String? = nil) -> ExampleSchema.RepositoryPermission? {
			return field(field: "viewerPermission", aliasSuffix: aliasSuffix) as! ExampleSchema.RepositoryPermission?
		}

		open var viewerSubscription: ExampleSchema.SubscriptionState? {
			return internalGetViewerSubscription()
		}

		func internalGetViewerSubscription(aliasSuffix: String? = nil) -> ExampleSchema.SubscriptionState? {
			return field(field: "viewerSubscription", aliasSuffix: aliasSuffix) as! ExampleSchema.SubscriptionState?
		}

		open var vulnerabilityAlerts: ExampleSchema.RepositoryVulnerabilityAlertConnection? {
			return internalGetVulnerabilityAlerts()
		}

		open func aliasedVulnerabilityAlerts(aliasSuffix: String) -> ExampleSchema.RepositoryVulnerabilityAlertConnection? {
			return internalGetVulnerabilityAlerts(aliasSuffix: aliasSuffix)
		}

		func internalGetVulnerabilityAlerts(aliasSuffix: String? = nil) -> ExampleSchema.RepositoryVulnerabilityAlertConnection? {
			return field(field: "vulnerabilityAlerts", aliasSuffix: aliasSuffix) as! ExampleSchema.RepositoryVulnerabilityAlertConnection?
		}

		open var watchers: ExampleSchema.UserConnection {
			return internalGetWatchers()
		}

		open func aliasedWatchers(aliasSuffix: String) -> ExampleSchema.UserConnection {
			return internalGetWatchers(aliasSuffix: aliasSuffix)
		}

		func internalGetWatchers(aliasSuffix: String? = nil) -> ExampleSchema.UserConnection {
			return field(field: "watchers", aliasSuffix: aliasSuffix) as! ExampleSchema.UserConnection
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "assignableUsers":

				return .object

				case "branchProtectionRules":

				return .object

				case "codeOfConduct":

				return .object

				case "collaborators":

				return .object

				case "commitComments":

				return .object

				case "createdAt":

				return .scalar

				case "databaseId":

				return .scalar

				case "defaultBranchRef":

				return .object

				case "deleteBranchOnMerge":

				return .scalar

				case "deployKeys":

				return .object

				case "deployments":

				return .object

				case "description":

				return .scalar

				case "descriptionHTML":

				return .scalar

				case "diskUsage":

				return .scalar

				case "forkCount":

				return .scalar

				case "forks":

				return .object

				case "fundingLinks":

				return .objectList

				case "hasIssuesEnabled":

				return .scalar

				case "hasProjectsEnabled":

				return .scalar

				case "hasWikiEnabled":

				return .scalar

				case "homepageUrl":

				return .scalar

				case "id":

				return .scalar

				case "isArchived":

				return .scalar

				case "isDisabled":

				return .scalar

				case "isFork":

				return .scalar

				case "isLocked":

				return .scalar

				case "isMirror":

				return .scalar

				case "isPrivate":

				return .scalar

				case "isTemplate":

				return .scalar

				case "issue":

				return .object

				case "issueOrPullRequest":

				return .scalar

				case "issues":

				return .object

				case "label":

				return .object

				case "labels":

				return .object

				case "languages":

				return .object

				case "licenseInfo":

				return .object

				case "lockReason":

				return .scalar

				case "mentionableUsers":

				return .object

				case "mergeCommitAllowed":

				return .scalar

				case "milestone":

				return .object

				case "milestones":

				return .object

				case "mirrorUrl":

				return .scalar

				case "name":

				return .scalar

				case "nameWithOwner":

				return .scalar

				case "object":

				return .object

				case "openGraphImageUrl":

				return .scalar

				case "owner":

				return .object

				case "parent":

				return .object

				case "primaryLanguage":

				return .object

				case "project":

				return .object

				case "projects":

				return .object

				case "projectsResourcePath":

				return .scalar

				case "projectsUrl":

				return .scalar

				case "pullRequest":

				return .object

				case "pullRequests":

				return .object

				case "pushedAt":

				return .scalar

				case "rebaseMergeAllowed":

				return .scalar

				case "ref":

				return .object

				case "refs":

				return .object

				case "registryPackages":

				return .object

				case "registryPackagesForQuery":

				return .object

				case "release":

				return .object

				case "releases":

				return .object

				case "repositoryTopics":

				return .object

				case "resourcePath":

				return .scalar

				case "shortDescriptionHTML":

				return .scalar

				case "squashMergeAllowed":

				return .scalar

				case "sshUrl":

				return .scalar

				case "stargazers":

				return .object

				case "submodules":

				return .object

				case "tempCloneToken":

				return .scalar

				case "templateRepository":

				return .object

				case "updatedAt":

				return .scalar

				case "url":

				return .scalar

				case "usesCustomOpenGraphImage":

				return .scalar

				case "viewerCanAdminister":

				return .scalar

				case "viewerCanCreateProjects":

				return .scalar

				case "viewerCanSubscribe":

				return .scalar

				case "viewerCanUpdateTopics":

				return .scalar

				case "viewerHasStarred":

				return .scalar

				case "viewerPermission":

				return .scalar

				case "viewerSubscription":

				return .scalar

				case "vulnerabilityAlerts":

				return .object

				case "watchers":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "assignableUsers":
				return internalGetAssignableUsers()

				case "branchProtectionRules":
				return internalGetBranchProtectionRules()

				case "codeOfConduct":
				return internalGetCodeOfConduct()

				case "collaborators":
				return internalGetCollaborators()

				case "commitComments":
				return internalGetCommitComments()

				case "defaultBranchRef":
				return internalGetDefaultBranchRef()

				case "deployKeys":
				return internalGetDeployKeys()

				case "deployments":
				return internalGetDeployments()

				case "forks":
				return internalGetForks()

				case "issue":
				return internalGetIssue()

				case "issues":
				return internalGetIssues()

				case "label":
				return internalGetLabel()

				case "labels":
				return internalGetLabels()

				case "languages":
				return internalGetLanguages()

				case "licenseInfo":
				return internalGetLicenseInfo()

				case "mentionableUsers":
				return internalGetMentionableUsers()

				case "milestone":
				return internalGetMilestone()

				case "milestones":
				return internalGetMilestones()

				case "object":
				return internalGetObject()?.responseObject()

				case "owner":
				return internalGetOwner().responseObject()

				case "parent":
				return internalGetParent()

				case "primaryLanguage":
				return internalGetPrimaryLanguage()

				case "project":
				return internalGetProject()

				case "projects":
				return internalGetProjects()

				case "pullRequest":
				return internalGetPullRequest()

				case "pullRequests":
				return internalGetPullRequests()

				case "ref":
				return internalGetRef()

				case "refs":
				return internalGetRefs()

				case "registryPackages":
				return internalGetRegistryPackages()

				case "registryPackagesForQuery":
				return internalGetRegistryPackagesForQuery()

				case "release":
				return internalGetRelease()

				case "releases":
				return internalGetReleases()

				case "repositoryTopics":
				return internalGetRepositoryTopics()

				case "stargazers":
				return internalGetStargazers()

				case "submodules":
				return internalGetSubmodules()

				case "templateRepository":
				return internalGetTemplateRepository()

				case "vulnerabilityAlerts":
				return internalGetVulnerabilityAlerts()

				case "watchers":
				return internalGetWatchers()

				default:
				break
			}
			return nil
		}

		override open func fetchChildObjectList(key: String) -> [GraphQL.AbstractResponse] {
			switch(key) {
				case "fundingLinks":
				return internalGetFundingLinks()

				default:
				return []
			}
		}

		open func childResponseObjectMap() -> [GraphQL.AbstractResponse]  {
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "assignableUsers":
					response.append(internalGetAssignableUsers())
					response.append(contentsOf: internalGetAssignableUsers().childResponseObjectMap())

					case "branchProtectionRules":
					response.append(internalGetBranchProtectionRules())
					response.append(contentsOf: internalGetBranchProtectionRules().childResponseObjectMap())

					case "codeOfConduct":
					if let value = internalGetCodeOfConduct() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "collaborators":
					if let value = internalGetCollaborators() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "commitComments":
					response.append(internalGetCommitComments())
					response.append(contentsOf: internalGetCommitComments().childResponseObjectMap())

					case "defaultBranchRef":
					if let value = internalGetDefaultBranchRef() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "deployKeys":
					response.append(internalGetDeployKeys())
					response.append(contentsOf: internalGetDeployKeys().childResponseObjectMap())

					case "deployments":
					response.append(internalGetDeployments())
					response.append(contentsOf: internalGetDeployments().childResponseObjectMap())

					case "forks":
					response.append(internalGetForks())
					response.append(contentsOf: internalGetForks().childResponseObjectMap())

					case "fundingLinks":
					internalGetFundingLinks().forEach {
						response.append($0)
						response.append(contentsOf: $0.childResponseObjectMap())
					}

					case "issue":
					if let value = internalGetIssue() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "issueOrPullRequest":
					if let value = internalGetIssueOrPullRequest() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "issues":
					response.append(internalGetIssues())
					response.append(contentsOf: internalGetIssues().childResponseObjectMap())

					case "label":
					if let value = internalGetLabel() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "labels":
					if let value = internalGetLabels() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "languages":
					if let value = internalGetLanguages() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "licenseInfo":
					if let value = internalGetLicenseInfo() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "mentionableUsers":
					response.append(internalGetMentionableUsers())
					response.append(contentsOf: internalGetMentionableUsers().childResponseObjectMap())

					case "milestone":
					if let value = internalGetMilestone() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "milestones":
					if let value = internalGetMilestones() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "object":
					if let value = internalGetObject() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "owner":
					response.append(internalGetOwner() as! GraphQL.AbstractResponse)
					response.append(contentsOf: internalGetOwner().childResponseObjectMap())

					case "parent":
					if let value = internalGetParent() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "primaryLanguage":
					if let value = internalGetPrimaryLanguage() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "project":
					if let value = internalGetProject() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "projects":
					response.append(internalGetProjects())
					response.append(contentsOf: internalGetProjects().childResponseObjectMap())

					case "pullRequest":
					if let value = internalGetPullRequest() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "pullRequests":
					response.append(internalGetPullRequests())
					response.append(contentsOf: internalGetPullRequests().childResponseObjectMap())

					case "ref":
					if let value = internalGetRef() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "refs":
					if let value = internalGetRefs() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "registryPackages":
					response.append(internalGetRegistryPackages())
					response.append(contentsOf: internalGetRegistryPackages().childResponseObjectMap())

					case "registryPackagesForQuery":
					response.append(internalGetRegistryPackagesForQuery())
					response.append(contentsOf: internalGetRegistryPackagesForQuery().childResponseObjectMap())

					case "release":
					if let value = internalGetRelease() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "releases":
					response.append(internalGetReleases())
					response.append(contentsOf: internalGetReleases().childResponseObjectMap())

					case "repositoryTopics":
					response.append(internalGetRepositoryTopics())
					response.append(contentsOf: internalGetRepositoryTopics().childResponseObjectMap())

					case "stargazers":
					response.append(internalGetStargazers())
					response.append(contentsOf: internalGetStargazers().childResponseObjectMap())

					case "submodules":
					response.append(internalGetSubmodules())
					response.append(contentsOf: internalGetSubmodules().childResponseObjectMap())

					case "templateRepository":
					if let value = internalGetTemplateRepository() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "vulnerabilityAlerts":
					if let value = internalGetVulnerabilityAlerts() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "watchers":
					response.append(internalGetWatchers())
					response.append(contentsOf: internalGetWatchers().childResponseObjectMap())

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
