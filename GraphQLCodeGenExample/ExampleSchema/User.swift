// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UserQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = User

		@discardableResult
		open func anyPinnableItems(aliasSuffix: String? = nil, type: PinnableItemType? = nil) -> UserQuery {
			var args: [String] = []

			if let type = type {
				args.append("type:\(type.rawValue)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "anyPinnableItems", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func avatarUrl(aliasSuffix: String? = nil, size: Int32? = nil) -> UserQuery {
			var args: [String] = []

			if let size = size {
				args.append("size:\(size)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "avatarUrl", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func bio(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "bio", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func bioHtml(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "bioHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func commitComments(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (CommitCommentConnectionQuery) -> Void) -> UserQuery {
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
		open func company(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "company", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func companyHtml(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "companyHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func contributionsCollection(aliasSuffix: String? = nil, organizationID: GraphQL.ID? = nil, from: String? = nil, to: String? = nil, _ subfields: (ContributionsCollectionQuery) -> Void) -> UserQuery {
			var args: [String] = []

			if let organizationID = organizationID {
				args.append("organizationID:\(GraphQL.quoteString(input: "\(organizationID.rawValue)"))")
			}

			if let from = from {
				args.append("from:\(GraphQL.quoteString(input: from))")
			}

			if let to = to {
				args.append("to:\(GraphQL.quoteString(input: to))")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = ContributionsCollectionQuery()
			subfields(subquery)

			addField(field: "contributionsCollection", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func email(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "email", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func followers(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (FollowerConnectionQuery) -> Void) -> UserQuery {
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

			let subquery = FollowerConnectionQuery()
			subfields(subquery)

			addField(field: "followers", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func following(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (FollowingConnectionQuery) -> Void) -> UserQuery {
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

			let subquery = FollowingConnectionQuery()
			subfields(subquery)

			addField(field: "following", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func gist(aliasSuffix: String? = nil, name: String, _ subfields: (GistQuery) -> Void) -> UserQuery {
			var args: [String] = []

			args.append("name:\(GraphQL.quoteString(input: name))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = GistQuery()
			subfields(subquery)

			addField(field: "gist", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func gistComments(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (GistCommentConnectionQuery) -> Void) -> UserQuery {
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

			let subquery = GistCommentConnectionQuery()
			subfields(subquery)

			addField(field: "gistComments", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func gists(aliasSuffix: String? = nil, privacy: GistPrivacy? = nil, orderBy: GistOrder? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (GistConnectionQuery) -> Void) -> UserQuery {
			var args: [String] = []

			if let privacy = privacy {
				args.append("privacy:\(privacy.rawValue)")
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

			let subquery = GistConnectionQuery()
			subfields(subquery)

			addField(field: "gists", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func hovercard(aliasSuffix: String? = nil, primarySubjectId: GraphQL.ID? = nil, _ subfields: (HovercardQuery) -> Void) -> UserQuery {
			var args: [String] = []

			if let primarySubjectId = primarySubjectId {
				args.append("primarySubjectId:\(GraphQL.quoteString(input: "\(primarySubjectId.rawValue)"))")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = HovercardQuery()
			subfields(subquery)

			addField(field: "hovercard", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isBountyHunter(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "isBountyHunter", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isCampusExpert(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "isCampusExpert", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isDeveloperProgramMember(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "isDeveloperProgramMember", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isEmployee(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "isEmployee", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isHireable(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "isHireable", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isSiteAdmin(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "isSiteAdmin", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isViewer(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "isViewer", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func issueComments(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (IssueCommentConnectionQuery) -> Void) -> UserQuery {
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

			addField(field: "issueComments", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func issues(aliasSuffix: String? = nil, orderBy: IssueOrder? = nil, labels: [String]? = nil, states: [IssueState]? = nil, filterBy: IssueFilters? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (IssueConnectionQuery) -> Void) -> UserQuery {
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
		open func itemShowcase(aliasSuffix: String? = nil, _ subfields: (ProfileItemShowcaseQuery) -> Void) -> UserQuery {
			let subquery = ProfileItemShowcaseQuery()
			subfields(subquery)

			addField(field: "itemShowcase", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func location(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "location", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func login(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "login", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func organization(aliasSuffix: String? = nil, login: String, _ subfields: (OrganizationQuery) -> Void) -> UserQuery {
			var args: [String] = []

			args.append("login:\(GraphQL.quoteString(input: login))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = OrganizationQuery()
			subfields(subquery)

			addField(field: "organization", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func organizations(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (OrganizationConnectionQuery) -> Void) -> UserQuery {
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

			let subquery = OrganizationConnectionQuery()
			subfields(subquery)

			addField(field: "organizations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func pinnableItems(aliasSuffix: String? = nil, types: [PinnableItemType]? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (PinnableItemConnectionQuery) -> Void) -> UserQuery {
			var args: [String] = []

			if let types = types {
				args.append("types:[\(types.map{ "\($0.rawValue)" }.joined(separator: ","))]")
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

			let subquery = PinnableItemConnectionQuery()
			subfields(subquery)

			addField(field: "pinnableItems", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func pinnedItems(aliasSuffix: String? = nil, types: [PinnableItemType]? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (PinnableItemConnectionQuery) -> Void) -> UserQuery {
			var args: [String] = []

			if let types = types {
				args.append("types:[\(types.map{ "\($0.rawValue)" }.joined(separator: ","))]")
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

			let subquery = PinnableItemConnectionQuery()
			subfields(subquery)

			addField(field: "pinnedItems", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func pinnedItemsRemaining(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "pinnedItemsRemaining", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"pinnedRepositories will be removed Use ProfileOwner.pinnedItems instead. Removal on 2019-10-01 UTC.")
		@discardableResult
		open func pinnedRepositories(aliasSuffix: String? = nil, privacy: RepositoryPrivacy? = nil, orderBy: RepositoryOrder? = nil, affiliations: [RepositoryAffiliation]? = nil, ownerAffiliations: [RepositoryAffiliation]? = nil, isLocked: Bool? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (RepositoryConnectionQuery) -> Void) -> UserQuery {
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

			addField(field: "pinnedRepositories", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func project(aliasSuffix: String? = nil, number: Int32, _ subfields: (ProjectQuery) -> Void) -> UserQuery {
			var args: [String] = []

			args.append("number:\(number)")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = ProjectQuery()
			subfields(subquery)

			addField(field: "project", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func projects(aliasSuffix: String? = nil, orderBy: ProjectOrder? = nil, search: String? = nil, states: [ProjectState]? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (ProjectConnectionQuery) -> Void) -> UserQuery {
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
		open func projectsResourcePath(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "projectsResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func projectsUrl(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "projectsUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func publicKeys(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (PublicKeyConnectionQuery) -> Void) -> UserQuery {
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

			let subquery = PublicKeyConnectionQuery()
			subfields(subquery)

			addField(field: "publicKeys", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func pullRequests(aliasSuffix: String? = nil, states: [PullRequestState]? = nil, labels: [String]? = nil, headRefName: String? = nil, baseRefName: String? = nil, orderBy: IssueOrder? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (PullRequestConnectionQuery) -> Void) -> UserQuery {
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

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageOwner` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func registryPackages(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, name: String? = nil, names: [String]? = nil, repositoryId: GraphQL.ID? = nil, packageType: RegistryPackageType? = nil, registryPackageType: String? = nil, publicOnly: Bool? = nil, _ subfields: (RegistryPackageConnectionQuery) -> Void) -> UserQuery {
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
		open func registryPackagesForQuery(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, query: String? = nil, packageType: RegistryPackageType? = nil, _ subfields: (RegistryPackageConnectionQuery) -> Void) -> UserQuery {
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
		open func repositories(aliasSuffix: String? = nil, privacy: RepositoryPrivacy? = nil, orderBy: RepositoryOrder? = nil, affiliations: [RepositoryAffiliation]? = nil, ownerAffiliations: [RepositoryAffiliation]? = nil, isLocked: Bool? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, isFork: Bool? = nil, _ subfields: (RepositoryConnectionQuery) -> Void) -> UserQuery {
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

			if let isFork = isFork {
				args.append("isFork:\(isFork)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = RepositoryConnectionQuery()
			subfields(subquery)

			addField(field: "repositories", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func repositoriesContributedTo(aliasSuffix: String? = nil, privacy: RepositoryPrivacy? = nil, orderBy: RepositoryOrder? = nil, isLocked: Bool? = nil, includeUserRepositories: Bool? = nil, contributionTypes: [RepositoryContributionType]? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (RepositoryConnectionQuery) -> Void) -> UserQuery {
			var args: [String] = []

			if let privacy = privacy {
				args.append("privacy:\(privacy.rawValue)")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			if let isLocked = isLocked {
				args.append("isLocked:\(isLocked)")
			}

			if let includeUserRepositories = includeUserRepositories {
				args.append("includeUserRepositories:\(includeUserRepositories)")
			}

			if let contributionTypes = contributionTypes {
				args.append("contributionTypes:[\(contributionTypes.map{ "\($0.rawValue)" }.joined(separator: ","))]")
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

			addField(field: "repositoriesContributedTo", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func repository(aliasSuffix: String? = nil, name: String, _ subfields: (RepositoryQuery) -> Void) -> UserQuery {
			var args: [String] = []

			args.append("name:\(GraphQL.quoteString(input: name))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func savedReplies(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: SavedReplyOrder? = nil, _ subfields: (SavedReplyConnectionQuery) -> Void) -> UserQuery {
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

			let subquery = SavedReplyConnectionQuery()
			subfields(subquery)

			addField(field: "savedReplies", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func sponsorsListing(aliasSuffix: String? = nil, _ subfields: (SponsorsListingQuery) -> Void) -> UserQuery {
			let subquery = SponsorsListingQuery()
			subfields(subquery)

			addField(field: "sponsorsListing", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func sponsorshipsAsMaintainer(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, includePrivate: Bool? = nil, orderBy: SponsorshipOrder? = nil, _ subfields: (SponsorshipConnectionQuery) -> Void) -> UserQuery {
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

			if let includePrivate = includePrivate {
				args.append("includePrivate:\(includePrivate)")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = SponsorshipConnectionQuery()
			subfields(subquery)

			addField(field: "sponsorshipsAsMaintainer", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func sponsorshipsAsSponsor(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: SponsorshipOrder? = nil, _ subfields: (SponsorshipConnectionQuery) -> Void) -> UserQuery {
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

			let subquery = SponsorshipConnectionQuery()
			subfields(subquery)

			addField(field: "sponsorshipsAsSponsor", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func starredRepositories(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, ownedByViewer: Bool? = nil, orderBy: StarOrder? = nil, _ subfields: (StarredRepositoryConnectionQuery) -> Void) -> UserQuery {
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

			if let ownedByViewer = ownedByViewer {
				args.append("ownedByViewer:\(ownedByViewer)")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = StarredRepositoryConnectionQuery()
			subfields(subquery)

			addField(field: "starredRepositories", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func status(aliasSuffix: String? = nil, _ subfields: (UserStatusQuery) -> Void) -> UserQuery {
			let subquery = UserStatusQuery()
			subfields(subquery)

			addField(field: "status", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func topRepositories(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: RepositoryOrder, since: String? = nil, _ subfields: (RepositoryConnectionQuery) -> Void) -> UserQuery {
			var args: [String] = []

			args.append("orderBy:\(orderBy.serialize())")

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

			if let since = since {
				args.append("since:\(GraphQL.quoteString(input: since))")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = RepositoryConnectionQuery()
			subfields(subquery)

			addField(field: "topRepositories", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanChangePinnedItems(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "viewerCanChangePinnedItems", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanCreateProjects(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "viewerCanCreateProjects", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanFollow(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "viewerCanFollow", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerIsFollowing(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "viewerIsFollowing", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func watching(aliasSuffix: String? = nil, privacy: RepositoryPrivacy? = nil, orderBy: RepositoryOrder? = nil, affiliations: [RepositoryAffiliation]? = nil, ownerAffiliations: [RepositoryAffiliation]? = nil, isLocked: Bool? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (RepositoryConnectionQuery) -> Void) -> UserQuery {
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

			addField(field: "watching", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func websiteUrl(aliasSuffix: String? = nil) -> UserQuery {
			addField(field: "websiteUrl", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class User: GraphQL.AbstractResponse, GraphQLObject, Actor, Assignee, AuditEntryActor, EnterpriseMember, Node, ProfileOwner, ProjectOwner, PushAllowanceActor, RegistryPackageOwner, RegistryPackageSearch, RepositoryOwner, RequestedReviewer, ReviewDismissalAllowanceActor, SearchResultItem, Sponsorable, UniformResourceLocatable {
		public typealias Query = UserQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "anyPinnableItems":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "avatarUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "bio":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "bioHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "commitComments":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try CommitCommentConnection(fields: value)

				case "company":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "companyHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "contributionsCollection":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try ContributionsCollection(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "email":
				guard let value = value as? String else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "followers":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try FollowerConnection(fields: value)

				case "following":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try FollowingConnection(fields: value)

				case "gist":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try Gist(fields: value)

				case "gistComments":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try GistCommentConnection(fields: value)

				case "gists":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try GistConnection(fields: value)

				case "hovercard":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try Hovercard(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "isBountyHunter":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isCampusExpert":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isDeveloperProgramMember":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isEmployee":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isHireable":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isSiteAdmin":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isViewer":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "issueComments":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try IssueCommentConnection(fields: value)

				case "issues":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try IssueConnection(fields: value)

				case "itemShowcase":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try ProfileItemShowcase(fields: value)

				case "location":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "login":
				guard let value = value as? String else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "name":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "organization":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try Organization(fields: value)

				case "organizations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationConnection(fields: value)

				case "pinnableItems":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try PinnableItemConnection(fields: value)

				case "pinnedItems":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try PinnableItemConnection(fields: value)

				case "pinnedItemsRemaining":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "pinnedRepositories":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try RepositoryConnection(fields: value)

				case "project":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try Project(fields: value)

				case "projects":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try ProjectConnection(fields: value)

				case "projectsResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "projectsUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "publicKeys":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try PublicKeyConnection(fields: value)

				case "pullRequests":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestConnection(fields: value)

				case "registryPackages":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageConnection(fields: value)

				case "registryPackagesForQuery":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageConnection(fields: value)

				case "repositories":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try RepositoryConnection(fields: value)

				case "repositoriesContributedTo":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try RepositoryConnection(fields: value)

				case "repository":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "savedReplies":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try SavedReplyConnection(fields: value)

				case "sponsorsListing":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try SponsorsListing(fields: value)

				case "sponsorshipsAsMaintainer":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try SponsorshipConnection(fields: value)

				case "sponsorshipsAsSponsor":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try SponsorshipConnection(fields: value)

				case "starredRepositories":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try StarredRepositoryConnection(fields: value)

				case "status":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try UserStatus(fields: value)

				case "topRepositories":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try RepositoryConnection(fields: value)

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanChangePinnedItems":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanCreateProjects":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanFollow":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerIsFollowing":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				case "watching":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return try RepositoryConnection(fields: value)

				case "websiteUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: User.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "User" }

		open var anyPinnableItems: Bool {
			return internalGetAnyPinnableItems()
		}

		open func aliasedAnyPinnableItems(aliasSuffix: String) -> Bool {
			return internalGetAnyPinnableItems(aliasSuffix: aliasSuffix)
		}

		func internalGetAnyPinnableItems(aliasSuffix: String? = nil) -> Bool {
			return field(field: "anyPinnableItems", aliasSuffix: aliasSuffix) as! Bool
		}

		open var avatarUrl: String {
			return internalGetAvatarUrl()
		}

		open func aliasedAvatarUrl(aliasSuffix: String) -> String {
			return internalGetAvatarUrl(aliasSuffix: aliasSuffix)
		}

		func internalGetAvatarUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "avatarUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var bio: String? {
			return internalGetBio()
		}

		func internalGetBio(aliasSuffix: String? = nil) -> String? {
			return field(field: "bio", aliasSuffix: aliasSuffix) as! String?
		}

		open var bioHtml: String {
			return internalGetBioHtml()
		}

		func internalGetBioHtml(aliasSuffix: String? = nil) -> String {
			return field(field: "bioHTML", aliasSuffix: aliasSuffix) as! String
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

		open var company: String? {
			return internalGetCompany()
		}

		func internalGetCompany(aliasSuffix: String? = nil) -> String? {
			return field(field: "company", aliasSuffix: aliasSuffix) as! String?
		}

		open var companyHtml: String {
			return internalGetCompanyHtml()
		}

		func internalGetCompanyHtml(aliasSuffix: String? = nil) -> String {
			return field(field: "companyHTML", aliasSuffix: aliasSuffix) as! String
		}

		open var contributionsCollection: ExampleSchema.ContributionsCollection {
			return internalGetContributionsCollection()
		}

		open func aliasedContributionsCollection(aliasSuffix: String) -> ExampleSchema.ContributionsCollection {
			return internalGetContributionsCollection(aliasSuffix: aliasSuffix)
		}

		func internalGetContributionsCollection(aliasSuffix: String? = nil) -> ExampleSchema.ContributionsCollection {
			return field(field: "contributionsCollection", aliasSuffix: aliasSuffix) as! ExampleSchema.ContributionsCollection
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

		open var email: String {
			return internalGetEmail()
		}

		func internalGetEmail(aliasSuffix: String? = nil) -> String {
			return field(field: "email", aliasSuffix: aliasSuffix) as! String
		}

		open var followers: ExampleSchema.FollowerConnection {
			return internalGetFollowers()
		}

		open func aliasedFollowers(aliasSuffix: String) -> ExampleSchema.FollowerConnection {
			return internalGetFollowers(aliasSuffix: aliasSuffix)
		}

		func internalGetFollowers(aliasSuffix: String? = nil) -> ExampleSchema.FollowerConnection {
			return field(field: "followers", aliasSuffix: aliasSuffix) as! ExampleSchema.FollowerConnection
		}

		open var following: ExampleSchema.FollowingConnection {
			return internalGetFollowing()
		}

		open func aliasedFollowing(aliasSuffix: String) -> ExampleSchema.FollowingConnection {
			return internalGetFollowing(aliasSuffix: aliasSuffix)
		}

		func internalGetFollowing(aliasSuffix: String? = nil) -> ExampleSchema.FollowingConnection {
			return field(field: "following", aliasSuffix: aliasSuffix) as! ExampleSchema.FollowingConnection
		}

		open var gist: ExampleSchema.Gist? {
			return internalGetGist()
		}

		open func aliasedGist(aliasSuffix: String) -> ExampleSchema.Gist? {
			return internalGetGist(aliasSuffix: aliasSuffix)
		}

		func internalGetGist(aliasSuffix: String? = nil) -> ExampleSchema.Gist? {
			return field(field: "gist", aliasSuffix: aliasSuffix) as! ExampleSchema.Gist?
		}

		open var gistComments: ExampleSchema.GistCommentConnection {
			return internalGetGistComments()
		}

		open func aliasedGistComments(aliasSuffix: String) -> ExampleSchema.GistCommentConnection {
			return internalGetGistComments(aliasSuffix: aliasSuffix)
		}

		func internalGetGistComments(aliasSuffix: String? = nil) -> ExampleSchema.GistCommentConnection {
			return field(field: "gistComments", aliasSuffix: aliasSuffix) as! ExampleSchema.GistCommentConnection
		}

		open var gists: ExampleSchema.GistConnection {
			return internalGetGists()
		}

		open func aliasedGists(aliasSuffix: String) -> ExampleSchema.GistConnection {
			return internalGetGists(aliasSuffix: aliasSuffix)
		}

		func internalGetGists(aliasSuffix: String? = nil) -> ExampleSchema.GistConnection {
			return field(field: "gists", aliasSuffix: aliasSuffix) as! ExampleSchema.GistConnection
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

		open var isBountyHunter: Bool {
			return internalGetIsBountyHunter()
		}

		func internalGetIsBountyHunter(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isBountyHunter", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isCampusExpert: Bool {
			return internalGetIsCampusExpert()
		}

		func internalGetIsCampusExpert(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isCampusExpert", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isDeveloperProgramMember: Bool {
			return internalGetIsDeveloperProgramMember()
		}

		func internalGetIsDeveloperProgramMember(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isDeveloperProgramMember", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isEmployee: Bool {
			return internalGetIsEmployee()
		}

		func internalGetIsEmployee(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isEmployee", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isHireable: Bool {
			return internalGetIsHireable()
		}

		func internalGetIsHireable(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isHireable", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isSiteAdmin: Bool {
			return internalGetIsSiteAdmin()
		}

		func internalGetIsSiteAdmin(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isSiteAdmin", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isViewer: Bool {
			return internalGetIsViewer()
		}

		func internalGetIsViewer(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isViewer", aliasSuffix: aliasSuffix) as! Bool
		}

		open var issueComments: ExampleSchema.IssueCommentConnection {
			return internalGetIssueComments()
		}

		open func aliasedIssueComments(aliasSuffix: String) -> ExampleSchema.IssueCommentConnection {
			return internalGetIssueComments(aliasSuffix: aliasSuffix)
		}

		func internalGetIssueComments(aliasSuffix: String? = nil) -> ExampleSchema.IssueCommentConnection {
			return field(field: "issueComments", aliasSuffix: aliasSuffix) as! ExampleSchema.IssueCommentConnection
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

		open var itemShowcase: ExampleSchema.ProfileItemShowcase {
			return internalGetItemShowcase()
		}

		func internalGetItemShowcase(aliasSuffix: String? = nil) -> ExampleSchema.ProfileItemShowcase {
			return field(field: "itemShowcase", aliasSuffix: aliasSuffix) as! ExampleSchema.ProfileItemShowcase
		}

		open var location: String? {
			return internalGetLocation()
		}

		func internalGetLocation(aliasSuffix: String? = nil) -> String? {
			return field(field: "location", aliasSuffix: aliasSuffix) as! String?
		}

		open var login: String {
			return internalGetLogin()
		}

		func internalGetLogin(aliasSuffix: String? = nil) -> String {
			return field(field: "login", aliasSuffix: aliasSuffix) as! String
		}

		open var name: String? {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String? {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String?
		}

		open var organization: ExampleSchema.Organization? {
			return internalGetOrganization()
		}

		open func aliasedOrganization(aliasSuffix: String) -> ExampleSchema.Organization? {
			return internalGetOrganization(aliasSuffix: aliasSuffix)
		}

		func internalGetOrganization(aliasSuffix: String? = nil) -> ExampleSchema.Organization? {
			return field(field: "organization", aliasSuffix: aliasSuffix) as! ExampleSchema.Organization?
		}

		open var organizations: ExampleSchema.OrganizationConnection {
			return internalGetOrganizations()
		}

		open func aliasedOrganizations(aliasSuffix: String) -> ExampleSchema.OrganizationConnection {
			return internalGetOrganizations(aliasSuffix: aliasSuffix)
		}

		func internalGetOrganizations(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationConnection {
			return field(field: "organizations", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationConnection
		}

		open var pinnableItems: ExampleSchema.PinnableItemConnection {
			return internalGetPinnableItems()
		}

		open func aliasedPinnableItems(aliasSuffix: String) -> ExampleSchema.PinnableItemConnection {
			return internalGetPinnableItems(aliasSuffix: aliasSuffix)
		}

		func internalGetPinnableItems(aliasSuffix: String? = nil) -> ExampleSchema.PinnableItemConnection {
			return field(field: "pinnableItems", aliasSuffix: aliasSuffix) as! ExampleSchema.PinnableItemConnection
		}

		open var pinnedItems: ExampleSchema.PinnableItemConnection {
			return internalGetPinnedItems()
		}

		open func aliasedPinnedItems(aliasSuffix: String) -> ExampleSchema.PinnableItemConnection {
			return internalGetPinnedItems(aliasSuffix: aliasSuffix)
		}

		func internalGetPinnedItems(aliasSuffix: String? = nil) -> ExampleSchema.PinnableItemConnection {
			return field(field: "pinnedItems", aliasSuffix: aliasSuffix) as! ExampleSchema.PinnableItemConnection
		}

		open var pinnedItemsRemaining: Int32 {
			return internalGetPinnedItemsRemaining()
		}

		func internalGetPinnedItemsRemaining(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "pinnedItemsRemaining", aliasSuffix: aliasSuffix) as! Int32
		}

		@available(*, deprecated, message:"pinnedRepositories will be removed Use ProfileOwner.pinnedItems instead. Removal on 2019-10-01 UTC.")
		open var pinnedRepositories: ExampleSchema.RepositoryConnection {
			return internalGetPinnedRepositories()
		}

		@available(*, deprecated, message:"pinnedRepositories will be removed Use ProfileOwner.pinnedItems instead. Removal on 2019-10-01 UTC.")
		open func aliasedPinnedRepositories(aliasSuffix: String) -> ExampleSchema.RepositoryConnection {
			return internalGetPinnedRepositories(aliasSuffix: aliasSuffix)
		}

		func internalGetPinnedRepositories(aliasSuffix: String? = nil) -> ExampleSchema.RepositoryConnection {
			return field(field: "pinnedRepositories", aliasSuffix: aliasSuffix) as! ExampleSchema.RepositoryConnection
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

		open var publicKeys: ExampleSchema.PublicKeyConnection {
			return internalGetPublicKeys()
		}

		open func aliasedPublicKeys(aliasSuffix: String) -> ExampleSchema.PublicKeyConnection {
			return internalGetPublicKeys(aliasSuffix: aliasSuffix)
		}

		func internalGetPublicKeys(aliasSuffix: String? = nil) -> ExampleSchema.PublicKeyConnection {
			return field(field: "publicKeys", aliasSuffix: aliasSuffix) as! ExampleSchema.PublicKeyConnection
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

		open var repositories: ExampleSchema.RepositoryConnection {
			return internalGetRepositories()
		}

		open func aliasedRepositories(aliasSuffix: String) -> ExampleSchema.RepositoryConnection {
			return internalGetRepositories(aliasSuffix: aliasSuffix)
		}

		func internalGetRepositories(aliasSuffix: String? = nil) -> ExampleSchema.RepositoryConnection {
			return field(field: "repositories", aliasSuffix: aliasSuffix) as! ExampleSchema.RepositoryConnection
		}

		open var repositoriesContributedTo: ExampleSchema.RepositoryConnection {
			return internalGetRepositoriesContributedTo()
		}

		open func aliasedRepositoriesContributedTo(aliasSuffix: String) -> ExampleSchema.RepositoryConnection {
			return internalGetRepositoriesContributedTo(aliasSuffix: aliasSuffix)
		}

		func internalGetRepositoriesContributedTo(aliasSuffix: String? = nil) -> ExampleSchema.RepositoryConnection {
			return field(field: "repositoriesContributedTo", aliasSuffix: aliasSuffix) as! ExampleSchema.RepositoryConnection
		}

		open var repository: ExampleSchema.Repository? {
			return internalGetRepository()
		}

		open func aliasedRepository(aliasSuffix: String) -> ExampleSchema.Repository? {
			return internalGetRepository(aliasSuffix: aliasSuffix)
		}

		func internalGetRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository? {
			return field(field: "repository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository?
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var savedReplies: ExampleSchema.SavedReplyConnection? {
			return internalGetSavedReplies()
		}

		open func aliasedSavedReplies(aliasSuffix: String) -> ExampleSchema.SavedReplyConnection? {
			return internalGetSavedReplies(aliasSuffix: aliasSuffix)
		}

		func internalGetSavedReplies(aliasSuffix: String? = nil) -> ExampleSchema.SavedReplyConnection? {
			return field(field: "savedReplies", aliasSuffix: aliasSuffix) as! ExampleSchema.SavedReplyConnection?
		}

		open var sponsorsListing: ExampleSchema.SponsorsListing? {
			return internalGetSponsorsListing()
		}

		func internalGetSponsorsListing(aliasSuffix: String? = nil) -> ExampleSchema.SponsorsListing? {
			return field(field: "sponsorsListing", aliasSuffix: aliasSuffix) as! ExampleSchema.SponsorsListing?
		}

		open var sponsorshipsAsMaintainer: ExampleSchema.SponsorshipConnection {
			return internalGetSponsorshipsAsMaintainer()
		}

		open func aliasedSponsorshipsAsMaintainer(aliasSuffix: String) -> ExampleSchema.SponsorshipConnection {
			return internalGetSponsorshipsAsMaintainer(aliasSuffix: aliasSuffix)
		}

		func internalGetSponsorshipsAsMaintainer(aliasSuffix: String? = nil) -> ExampleSchema.SponsorshipConnection {
			return field(field: "sponsorshipsAsMaintainer", aliasSuffix: aliasSuffix) as! ExampleSchema.SponsorshipConnection
		}

		open var sponsorshipsAsSponsor: ExampleSchema.SponsorshipConnection {
			return internalGetSponsorshipsAsSponsor()
		}

		open func aliasedSponsorshipsAsSponsor(aliasSuffix: String) -> ExampleSchema.SponsorshipConnection {
			return internalGetSponsorshipsAsSponsor(aliasSuffix: aliasSuffix)
		}

		func internalGetSponsorshipsAsSponsor(aliasSuffix: String? = nil) -> ExampleSchema.SponsorshipConnection {
			return field(field: "sponsorshipsAsSponsor", aliasSuffix: aliasSuffix) as! ExampleSchema.SponsorshipConnection
		}

		open var starredRepositories: ExampleSchema.StarredRepositoryConnection {
			return internalGetStarredRepositories()
		}

		open func aliasedStarredRepositories(aliasSuffix: String) -> ExampleSchema.StarredRepositoryConnection {
			return internalGetStarredRepositories(aliasSuffix: aliasSuffix)
		}

		func internalGetStarredRepositories(aliasSuffix: String? = nil) -> ExampleSchema.StarredRepositoryConnection {
			return field(field: "starredRepositories", aliasSuffix: aliasSuffix) as! ExampleSchema.StarredRepositoryConnection
		}

		open var status: ExampleSchema.UserStatus? {
			return internalGetStatus()
		}

		func internalGetStatus(aliasSuffix: String? = nil) -> ExampleSchema.UserStatus? {
			return field(field: "status", aliasSuffix: aliasSuffix) as! ExampleSchema.UserStatus?
		}

		open var topRepositories: ExampleSchema.RepositoryConnection {
			return internalGetTopRepositories()
		}

		open func aliasedTopRepositories(aliasSuffix: String) -> ExampleSchema.RepositoryConnection {
			return internalGetTopRepositories(aliasSuffix: aliasSuffix)
		}

		func internalGetTopRepositories(aliasSuffix: String? = nil) -> ExampleSchema.RepositoryConnection {
			return field(field: "topRepositories", aliasSuffix: aliasSuffix) as! ExampleSchema.RepositoryConnection
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

		open var viewerCanChangePinnedItems: Bool {
			return internalGetViewerCanChangePinnedItems()
		}

		func internalGetViewerCanChangePinnedItems(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanChangePinnedItems", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCanCreateProjects: Bool {
			return internalGetViewerCanCreateProjects()
		}

		func internalGetViewerCanCreateProjects(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanCreateProjects", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCanFollow: Bool {
			return internalGetViewerCanFollow()
		}

		func internalGetViewerCanFollow(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanFollow", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerIsFollowing: Bool {
			return internalGetViewerIsFollowing()
		}

		func internalGetViewerIsFollowing(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerIsFollowing", aliasSuffix: aliasSuffix) as! Bool
		}

		open var watching: ExampleSchema.RepositoryConnection {
			return internalGetWatching()
		}

		open func aliasedWatching(aliasSuffix: String) -> ExampleSchema.RepositoryConnection {
			return internalGetWatching(aliasSuffix: aliasSuffix)
		}

		func internalGetWatching(aliasSuffix: String? = nil) -> ExampleSchema.RepositoryConnection {
			return field(field: "watching", aliasSuffix: aliasSuffix) as! ExampleSchema.RepositoryConnection
		}

		open var websiteUrl: String? {
			return internalGetWebsiteUrl()
		}

		func internalGetWebsiteUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "websiteUrl", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "anyPinnableItems":

				return .scalar

				case "avatarUrl":

				return .scalar

				case "bio":

				return .scalar

				case "bioHTML":

				return .scalar

				case "commitComments":

				return .object

				case "company":

				return .scalar

				case "companyHTML":

				return .scalar

				case "contributionsCollection":

				return .object

				case "createdAt":

				return .scalar

				case "databaseId":

				return .scalar

				case "email":

				return .scalar

				case "followers":

				return .object

				case "following":

				return .object

				case "gist":

				return .object

				case "gistComments":

				return .object

				case "gists":

				return .object

				case "hovercard":

				return .object

				case "id":

				return .scalar

				case "isBountyHunter":

				return .scalar

				case "isCampusExpert":

				return .scalar

				case "isDeveloperProgramMember":

				return .scalar

				case "isEmployee":

				return .scalar

				case "isHireable":

				return .scalar

				case "isSiteAdmin":

				return .scalar

				case "isViewer":

				return .scalar

				case "issueComments":

				return .object

				case "issues":

				return .object

				case "itemShowcase":

				return .object

				case "location":

				return .scalar

				case "login":

				return .scalar

				case "name":

				return .scalar

				case "organization":

				return .object

				case "organizations":

				return .object

				case "pinnableItems":

				return .object

				case "pinnedItems":

				return .object

				case "pinnedItemsRemaining":

				return .scalar

				case "pinnedRepositories":

				return .object

				case "project":

				return .object

				case "projects":

				return .object

				case "projectsResourcePath":

				return .scalar

				case "projectsUrl":

				return .scalar

				case "publicKeys":

				return .object

				case "pullRequests":

				return .object

				case "registryPackages":

				return .object

				case "registryPackagesForQuery":

				return .object

				case "repositories":

				return .object

				case "repositoriesContributedTo":

				return .object

				case "repository":

				return .object

				case "resourcePath":

				return .scalar

				case "savedReplies":

				return .object

				case "sponsorsListing":

				return .object

				case "sponsorshipsAsMaintainer":

				return .object

				case "sponsorshipsAsSponsor":

				return .object

				case "starredRepositories":

				return .object

				case "status":

				return .object

				case "topRepositories":

				return .object

				case "updatedAt":

				return .scalar

				case "url":

				return .scalar

				case "viewerCanChangePinnedItems":

				return .scalar

				case "viewerCanCreateProjects":

				return .scalar

				case "viewerCanFollow":

				return .scalar

				case "viewerIsFollowing":

				return .scalar

				case "watching":

				return .object

				case "websiteUrl":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "commitComments":
				return internalGetCommitComments()

				case "contributionsCollection":
				return internalGetContributionsCollection()

				case "followers":
				return internalGetFollowers()

				case "following":
				return internalGetFollowing()

				case "gist":
				return internalGetGist()

				case "gistComments":
				return internalGetGistComments()

				case "gists":
				return internalGetGists()

				case "hovercard":
				return internalGetHovercard()

				case "issueComments":
				return internalGetIssueComments()

				case "issues":
				return internalGetIssues()

				case "itemShowcase":
				return internalGetItemShowcase()

				case "organization":
				return internalGetOrganization()

				case "organizations":
				return internalGetOrganizations()

				case "pinnableItems":
				return internalGetPinnableItems()

				case "pinnedItems":
				return internalGetPinnedItems()

				case "pinnedRepositories":
				return internalGetPinnedRepositories()

				case "project":
				return internalGetProject()

				case "projects":
				return internalGetProjects()

				case "publicKeys":
				return internalGetPublicKeys()

				case "pullRequests":
				return internalGetPullRequests()

				case "registryPackages":
				return internalGetRegistryPackages()

				case "registryPackagesForQuery":
				return internalGetRegistryPackagesForQuery()

				case "repositories":
				return internalGetRepositories()

				case "repositoriesContributedTo":
				return internalGetRepositoriesContributedTo()

				case "repository":
				return internalGetRepository()

				case "savedReplies":
				return internalGetSavedReplies()

				case "sponsorsListing":
				return internalGetSponsorsListing()

				case "sponsorshipsAsMaintainer":
				return internalGetSponsorshipsAsMaintainer()

				case "sponsorshipsAsSponsor":
				return internalGetSponsorshipsAsSponsor()

				case "starredRepositories":
				return internalGetStarredRepositories()

				case "status":
				return internalGetStatus()

				case "topRepositories":
				return internalGetTopRepositories()

				case "watching":
				return internalGetWatching()

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
					case "commitComments":
					response.append(internalGetCommitComments())
					response.append(contentsOf: internalGetCommitComments().childResponseObjectMap())

					case "contributionsCollection":
					response.append(internalGetContributionsCollection())
					response.append(contentsOf: internalGetContributionsCollection().childResponseObjectMap())

					case "followers":
					response.append(internalGetFollowers())
					response.append(contentsOf: internalGetFollowers().childResponseObjectMap())

					case "following":
					response.append(internalGetFollowing())
					response.append(contentsOf: internalGetFollowing().childResponseObjectMap())

					case "gist":
					if let value = internalGetGist() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "gistComments":
					response.append(internalGetGistComments())
					response.append(contentsOf: internalGetGistComments().childResponseObjectMap())

					case "gists":
					response.append(internalGetGists())
					response.append(contentsOf: internalGetGists().childResponseObjectMap())

					case "hovercard":
					response.append(internalGetHovercard())
					response.append(contentsOf: internalGetHovercard().childResponseObjectMap())

					case "issueComments":
					response.append(internalGetIssueComments())
					response.append(contentsOf: internalGetIssueComments().childResponseObjectMap())

					case "issues":
					response.append(internalGetIssues())
					response.append(contentsOf: internalGetIssues().childResponseObjectMap())

					case "itemShowcase":
					response.append(internalGetItemShowcase())
					response.append(contentsOf: internalGetItemShowcase().childResponseObjectMap())

					case "organization":
					if let value = internalGetOrganization() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "organizations":
					response.append(internalGetOrganizations())
					response.append(contentsOf: internalGetOrganizations().childResponseObjectMap())

					case "pinnableItems":
					response.append(internalGetPinnableItems())
					response.append(contentsOf: internalGetPinnableItems().childResponseObjectMap())

					case "pinnedItems":
					response.append(internalGetPinnedItems())
					response.append(contentsOf: internalGetPinnedItems().childResponseObjectMap())

					case "pinnedRepositories":
					response.append(internalGetPinnedRepositories())
					response.append(contentsOf: internalGetPinnedRepositories().childResponseObjectMap())

					case "project":
					if let value = internalGetProject() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "projects":
					response.append(internalGetProjects())
					response.append(contentsOf: internalGetProjects().childResponseObjectMap())

					case "publicKeys":
					response.append(internalGetPublicKeys())
					response.append(contentsOf: internalGetPublicKeys().childResponseObjectMap())

					case "pullRequests":
					response.append(internalGetPullRequests())
					response.append(contentsOf: internalGetPullRequests().childResponseObjectMap())

					case "registryPackages":
					response.append(internalGetRegistryPackages())
					response.append(contentsOf: internalGetRegistryPackages().childResponseObjectMap())

					case "registryPackagesForQuery":
					response.append(internalGetRegistryPackagesForQuery())
					response.append(contentsOf: internalGetRegistryPackagesForQuery().childResponseObjectMap())

					case "repositories":
					response.append(internalGetRepositories())
					response.append(contentsOf: internalGetRepositories().childResponseObjectMap())

					case "repositoriesContributedTo":
					response.append(internalGetRepositoriesContributedTo())
					response.append(contentsOf: internalGetRepositoriesContributedTo().childResponseObjectMap())

					case "repository":
					if let value = internalGetRepository() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "savedReplies":
					if let value = internalGetSavedReplies() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "sponsorsListing":
					if let value = internalGetSponsorsListing() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "sponsorshipsAsMaintainer":
					response.append(internalGetSponsorshipsAsMaintainer())
					response.append(contentsOf: internalGetSponsorshipsAsMaintainer().childResponseObjectMap())

					case "sponsorshipsAsSponsor":
					response.append(internalGetSponsorshipsAsSponsor())
					response.append(contentsOf: internalGetSponsorshipsAsSponsor().childResponseObjectMap())

					case "starredRepositories":
					response.append(internalGetStarredRepositories())
					response.append(contentsOf: internalGetStarredRepositories().childResponseObjectMap())

					case "status":
					if let value = internalGetStatus() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "topRepositories":
					response.append(internalGetTopRepositories())
					response.append(contentsOf: internalGetTopRepositories().childResponseObjectMap())

					case "watching":
					response.append(internalGetWatching())
					response.append(contentsOf: internalGetWatching().childResponseObjectMap())

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
