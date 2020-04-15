// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class OrganizationQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Organization

		@discardableResult
		open func anyPinnableItems(aliasSuffix: String? = nil, type: PinnableItemType? = nil) -> OrganizationQuery {
			var args: [String] = []

			if let type = type {
				args.append("type:\(type.rawValue)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "anyPinnableItems", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func auditLog(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, query: String? = nil, orderBy: AuditLogOrder? = nil, _ subfields: (OrganizationAuditEntryConnectionQuery) -> Void) -> OrganizationQuery {
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

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = OrganizationAuditEntryConnectionQuery()
			subfields(subquery)

			addField(field: "auditLog", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func avatarUrl(aliasSuffix: String? = nil, size: Int32? = nil) -> OrganizationQuery {
			var args: [String] = []

			if let size = size {
				args.append("size:\(size)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "avatarUrl", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func description(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "description", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func descriptionHtml(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "descriptionHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func email(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "email", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isVerified(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "isVerified", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func itemShowcase(aliasSuffix: String? = nil, _ subfields: (ProfileItemShowcaseQuery) -> Void) -> OrganizationQuery {
			let subquery = ProfileItemShowcaseQuery()
			subfields(subquery)

			addField(field: "itemShowcase", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func location(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "location", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func login(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "login", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func memberStatuses(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: UserStatusOrder? = nil, _ subfields: (UserStatusConnectionQuery) -> Void) -> OrganizationQuery {
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

			let subquery = UserStatusConnectionQuery()
			subfields(subquery)

			addField(field: "memberStatuses", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func membersWithRole(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (OrganizationMemberConnectionQuery) -> Void) -> OrganizationQuery {
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

			let subquery = OrganizationMemberConnectionQuery()
			subfields(subquery)

			addField(field: "membersWithRole", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func newTeamResourcePath(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "newTeamResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func newTeamUrl(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "newTeamUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func organizationBillingEmail(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "organizationBillingEmail", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pendingMembers(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (UserConnectionQuery) -> Void) -> OrganizationQuery {
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

			addField(field: "pendingMembers", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func pinnableItems(aliasSuffix: String? = nil, types: [PinnableItemType]? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (PinnableItemConnectionQuery) -> Void) -> OrganizationQuery {
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
		open func pinnedItems(aliasSuffix: String? = nil, types: [PinnableItemType]? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (PinnableItemConnectionQuery) -> Void) -> OrganizationQuery {
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
		open func pinnedItemsRemaining(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "pinnedItemsRemaining", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"pinnedRepositories will be removed Use ProfileOwner.pinnedItems instead. Removal on 2019-10-01 UTC.")
		@discardableResult
		open func pinnedRepositories(aliasSuffix: String? = nil, privacy: RepositoryPrivacy? = nil, orderBy: RepositoryOrder? = nil, affiliations: [RepositoryAffiliation]? = nil, ownerAffiliations: [RepositoryAffiliation]? = nil, isLocked: Bool? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (RepositoryConnectionQuery) -> Void) -> OrganizationQuery {
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
		open func project(aliasSuffix: String? = nil, number: Int32, _ subfields: (ProjectQuery) -> Void) -> OrganizationQuery {
			var args: [String] = []

			args.append("number:\(number)")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = ProjectQuery()
			subfields(subquery)

			addField(field: "project", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func projects(aliasSuffix: String? = nil, orderBy: ProjectOrder? = nil, search: String? = nil, states: [ProjectState]? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (ProjectConnectionQuery) -> Void) -> OrganizationQuery {
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
		open func projectsResourcePath(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "projectsResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func projectsUrl(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "projectsUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageOwner` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func registryPackages(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, name: String? = nil, names: [String]? = nil, repositoryId: GraphQL.ID? = nil, packageType: RegistryPackageType? = nil, registryPackageType: String? = nil, publicOnly: Bool? = nil, _ subfields: (RegistryPackageConnectionQuery) -> Void) -> OrganizationQuery {
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
		open func registryPackagesForQuery(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, query: String? = nil, packageType: RegistryPackageType? = nil, _ subfields: (RegistryPackageConnectionQuery) -> Void) -> OrganizationQuery {
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
		open func repositories(aliasSuffix: String? = nil, privacy: RepositoryPrivacy? = nil, orderBy: RepositoryOrder? = nil, affiliations: [RepositoryAffiliation]? = nil, ownerAffiliations: [RepositoryAffiliation]? = nil, isLocked: Bool? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, isFork: Bool? = nil, _ subfields: (RepositoryConnectionQuery) -> Void) -> OrganizationQuery {
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
		open func repository(aliasSuffix: String? = nil, name: String, _ subfields: (RepositoryQuery) -> Void) -> OrganizationQuery {
			var args: [String] = []

			args.append("name:\(GraphQL.quoteString(input: name))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func requiresTwoFactorAuthentication(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "requiresTwoFactorAuthentication", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func samlIdentityProvider(aliasSuffix: String? = nil, _ subfields: (OrganizationIdentityProviderQuery) -> Void) -> OrganizationQuery {
			let subquery = OrganizationIdentityProviderQuery()
			subfields(subquery)

			addField(field: "samlIdentityProvider", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func sponsorsListing(aliasSuffix: String? = nil, _ subfields: (SponsorsListingQuery) -> Void) -> OrganizationQuery {
			let subquery = SponsorsListingQuery()
			subfields(subquery)

			addField(field: "sponsorsListing", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func sponsorshipsAsMaintainer(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, includePrivate: Bool? = nil, orderBy: SponsorshipOrder? = nil, _ subfields: (SponsorshipConnectionQuery) -> Void) -> OrganizationQuery {
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
		open func sponsorshipsAsSponsor(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: SponsorshipOrder? = nil, _ subfields: (SponsorshipConnectionQuery) -> Void) -> OrganizationQuery {
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
		open func team(aliasSuffix: String? = nil, slug: String, _ subfields: (TeamQuery) -> Void) -> OrganizationQuery {
			var args: [String] = []

			args.append("slug:\(GraphQL.quoteString(input: slug))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = TeamQuery()
			subfields(subquery)

			addField(field: "team", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func teams(aliasSuffix: String? = nil, privacy: TeamPrivacy? = nil, role: TeamRole? = nil, query: String? = nil, userLogins: [String]? = nil, orderBy: TeamOrder? = nil, ldapMapped: Bool? = nil, rootTeamsOnly: Bool? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (TeamConnectionQuery) -> Void) -> OrganizationQuery {
			var args: [String] = []

			if let privacy = privacy {
				args.append("privacy:\(privacy.rawValue)")
			}

			if let role = role {
				args.append("role:\(role.rawValue)")
			}

			if let query = query {
				args.append("query:\(GraphQL.quoteString(input: query))")
			}

			if let userLogins = userLogins {
				args.append("userLogins:[\(userLogins.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			if let ldapMapped = ldapMapped {
				args.append("ldapMapped:\(ldapMapped)")
			}

			if let rootTeamsOnly = rootTeamsOnly {
				args.append("rootTeamsOnly:\(rootTeamsOnly)")
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

			let subquery = TeamConnectionQuery()
			subfields(subquery)

			addField(field: "teams", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func teamsResourcePath(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "teamsResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func teamsUrl(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "teamsUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanAdminister(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "viewerCanAdminister", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanChangePinnedItems(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "viewerCanChangePinnedItems", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanCreateProjects(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "viewerCanCreateProjects", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanCreateRepositories(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "viewerCanCreateRepositories", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanCreateTeams(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "viewerCanCreateTeams", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerIsAmember(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "viewerIsAMember", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func websiteUrl(aliasSuffix: String? = nil) -> OrganizationQuery {
			addField(field: "websiteUrl", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Organization: GraphQL.AbstractResponse, GraphQLObject, Actor, Assignee, AuditEntryActor, IpAllowListOwner, MemberStatusable, Node, PermissionGranter, ProfileOwner, ProjectOwner, RegistryPackageOwner, RegistryPackageSearch, RepositoryOwner, SearchResultItem, Sponsorable, UniformResourceLocatable {
		public typealias Query = OrganizationQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "anyPinnableItems":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "auditLog":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationAuditEntryConnection(fields: value)

				case "avatarUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "description":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "descriptionHTML":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "email":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "isVerified":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "itemShowcase":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return try ProfileItemShowcase(fields: value)

				case "location":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "login":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "memberStatuses":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return try UserStatusConnection(fields: value)

				case "membersWithRole":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationMemberConnection(fields: value)

				case "name":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "newTeamResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "newTeamUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "organizationBillingEmail":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "pendingMembers":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return try UserConnection(fields: value)

				case "pinnableItems":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return try PinnableItemConnection(fields: value)

				case "pinnedItems":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return try PinnableItemConnection(fields: value)

				case "pinnedItemsRemaining":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "pinnedRepositories":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return try RepositoryConnection(fields: value)

				case "project":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return try Project(fields: value)

				case "projects":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return try ProjectConnection(fields: value)

				case "projectsResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "projectsUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "registryPackages":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageConnection(fields: value)

				case "registryPackagesForQuery":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageConnection(fields: value)

				case "repositories":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return try RepositoryConnection(fields: value)

				case "repository":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "requiresTwoFactorAuthentication":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "samlIdentityProvider":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationIdentityProvider(fields: value)

				case "sponsorsListing":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return try SponsorsListing(fields: value)

				case "sponsorshipsAsMaintainer":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return try SponsorshipConnection(fields: value)

				case "sponsorshipsAsSponsor":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return try SponsorshipConnection(fields: value)

				case "team":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return try Team(fields: value)

				case "teams":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return try TeamConnection(fields: value)

				case "teamsResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "teamsUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanAdminister":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanChangePinnedItems":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanCreateProjects":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanCreateRepositories":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanCreateTeams":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerIsAMember":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				case "websiteUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Organization.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Organization" }

		open var anyPinnableItems: Bool {
			return internalGetAnyPinnableItems()
		}

		open func aliasedAnyPinnableItems(aliasSuffix: String) -> Bool {
			return internalGetAnyPinnableItems(aliasSuffix: aliasSuffix)
		}

		func internalGetAnyPinnableItems(aliasSuffix: String? = nil) -> Bool {
			return field(field: "anyPinnableItems", aliasSuffix: aliasSuffix) as! Bool
		}

		open var auditLog: ExampleSchema.OrganizationAuditEntryConnection {
			return internalGetAuditLog()
		}

		open func aliasedAuditLog(aliasSuffix: String) -> ExampleSchema.OrganizationAuditEntryConnection {
			return internalGetAuditLog(aliasSuffix: aliasSuffix)
		}

		func internalGetAuditLog(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationAuditEntryConnection {
			return field(field: "auditLog", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationAuditEntryConnection
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

		open var description: String? {
			return internalGetDescription()
		}

		func internalGetDescription(aliasSuffix: String? = nil) -> String? {
			return field(field: "description", aliasSuffix: aliasSuffix) as! String?
		}

		open var descriptionHtml: String? {
			return internalGetDescriptionHtml()
		}

		func internalGetDescriptionHtml(aliasSuffix: String? = nil) -> String? {
			return field(field: "descriptionHTML", aliasSuffix: aliasSuffix) as! String?
		}

		open var email: String? {
			return internalGetEmail()
		}

		func internalGetEmail(aliasSuffix: String? = nil) -> String? {
			return field(field: "email", aliasSuffix: aliasSuffix) as! String?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var isVerified: Bool {
			return internalGetIsVerified()
		}

		func internalGetIsVerified(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isVerified", aliasSuffix: aliasSuffix) as! Bool
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

		open var memberStatuses: ExampleSchema.UserStatusConnection {
			return internalGetMemberStatuses()
		}

		open func aliasedMemberStatuses(aliasSuffix: String) -> ExampleSchema.UserStatusConnection {
			return internalGetMemberStatuses(aliasSuffix: aliasSuffix)
		}

		func internalGetMemberStatuses(aliasSuffix: String? = nil) -> ExampleSchema.UserStatusConnection {
			return field(field: "memberStatuses", aliasSuffix: aliasSuffix) as! ExampleSchema.UserStatusConnection
		}

		open var membersWithRole: ExampleSchema.OrganizationMemberConnection {
			return internalGetMembersWithRole()
		}

		open func aliasedMembersWithRole(aliasSuffix: String) -> ExampleSchema.OrganizationMemberConnection {
			return internalGetMembersWithRole(aliasSuffix: aliasSuffix)
		}

		func internalGetMembersWithRole(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationMemberConnection {
			return field(field: "membersWithRole", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationMemberConnection
		}

		open var name: String? {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String? {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String?
		}

		open var newTeamResourcePath: String {
			return internalGetNewTeamResourcePath()
		}

		func internalGetNewTeamResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "newTeamResourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var newTeamUrl: String {
			return internalGetNewTeamUrl()
		}

		func internalGetNewTeamUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "newTeamUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var organizationBillingEmail: String? {
			return internalGetOrganizationBillingEmail()
		}

		func internalGetOrganizationBillingEmail(aliasSuffix: String? = nil) -> String? {
			return field(field: "organizationBillingEmail", aliasSuffix: aliasSuffix) as! String?
		}

		open var pendingMembers: ExampleSchema.UserConnection {
			return internalGetPendingMembers()
		}

		open func aliasedPendingMembers(aliasSuffix: String) -> ExampleSchema.UserConnection {
			return internalGetPendingMembers(aliasSuffix: aliasSuffix)
		}

		func internalGetPendingMembers(aliasSuffix: String? = nil) -> ExampleSchema.UserConnection {
			return field(field: "pendingMembers", aliasSuffix: aliasSuffix) as! ExampleSchema.UserConnection
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

		open var repository: ExampleSchema.Repository? {
			return internalGetRepository()
		}

		open func aliasedRepository(aliasSuffix: String) -> ExampleSchema.Repository? {
			return internalGetRepository(aliasSuffix: aliasSuffix)
		}

		func internalGetRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository? {
			return field(field: "repository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository?
		}

		open var requiresTwoFactorAuthentication: Bool? {
			return internalGetRequiresTwoFactorAuthentication()
		}

		func internalGetRequiresTwoFactorAuthentication(aliasSuffix: String? = nil) -> Bool? {
			return field(field: "requiresTwoFactorAuthentication", aliasSuffix: aliasSuffix) as! Bool?
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var samlIdentityProvider: ExampleSchema.OrganizationIdentityProvider? {
			return internalGetSamlIdentityProvider()
		}

		func internalGetSamlIdentityProvider(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationIdentityProvider? {
			return field(field: "samlIdentityProvider", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationIdentityProvider?
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

		open var team: ExampleSchema.Team? {
			return internalGetTeam()
		}

		open func aliasedTeam(aliasSuffix: String) -> ExampleSchema.Team? {
			return internalGetTeam(aliasSuffix: aliasSuffix)
		}

		func internalGetTeam(aliasSuffix: String? = nil) -> ExampleSchema.Team? {
			return field(field: "team", aliasSuffix: aliasSuffix) as! ExampleSchema.Team?
		}

		open var teams: ExampleSchema.TeamConnection {
			return internalGetTeams()
		}

		open func aliasedTeams(aliasSuffix: String) -> ExampleSchema.TeamConnection {
			return internalGetTeams(aliasSuffix: aliasSuffix)
		}

		func internalGetTeams(aliasSuffix: String? = nil) -> ExampleSchema.TeamConnection {
			return field(field: "teams", aliasSuffix: aliasSuffix) as! ExampleSchema.TeamConnection
		}

		open var teamsResourcePath: String {
			return internalGetTeamsResourcePath()
		}

		func internalGetTeamsResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "teamsResourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var teamsUrl: String {
			return internalGetTeamsUrl()
		}

		func internalGetTeamsUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "teamsUrl", aliasSuffix: aliasSuffix) as! String
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

		open var viewerCanAdminister: Bool {
			return internalGetViewerCanAdminister()
		}

		func internalGetViewerCanAdminister(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanAdminister", aliasSuffix: aliasSuffix) as! Bool
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

		open var viewerCanCreateRepositories: Bool {
			return internalGetViewerCanCreateRepositories()
		}

		func internalGetViewerCanCreateRepositories(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanCreateRepositories", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCanCreateTeams: Bool {
			return internalGetViewerCanCreateTeams()
		}

		func internalGetViewerCanCreateTeams(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanCreateTeams", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerIsAmember: Bool {
			return internalGetViewerIsAmember()
		}

		func internalGetViewerIsAmember(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerIsAMember", aliasSuffix: aliasSuffix) as! Bool
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

				case "auditLog":

				return .object

				case "avatarUrl":

				return .scalar

				case "createdAt":

				return .scalar

				case "databaseId":

				return .scalar

				case "description":

				return .scalar

				case "descriptionHTML":

				return .scalar

				case "email":

				return .scalar

				case "id":

				return .scalar

				case "isVerified":

				return .scalar

				case "itemShowcase":

				return .object

				case "location":

				return .scalar

				case "login":

				return .scalar

				case "memberStatuses":

				return .object

				case "membersWithRole":

				return .object

				case "name":

				return .scalar

				case "newTeamResourcePath":

				return .scalar

				case "newTeamUrl":

				return .scalar

				case "organizationBillingEmail":

				return .scalar

				case "pendingMembers":

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

				case "registryPackages":

				return .object

				case "registryPackagesForQuery":

				return .object

				case "repositories":

				return .object

				case "repository":

				return .object

				case "requiresTwoFactorAuthentication":

				return .scalar

				case "resourcePath":

				return .scalar

				case "samlIdentityProvider":

				return .object

				case "sponsorsListing":

				return .object

				case "sponsorshipsAsMaintainer":

				return .object

				case "sponsorshipsAsSponsor":

				return .object

				case "team":

				return .object

				case "teams":

				return .object

				case "teamsResourcePath":

				return .scalar

				case "teamsUrl":

				return .scalar

				case "updatedAt":

				return .scalar

				case "url":

				return .scalar

				case "viewerCanAdminister":

				return .scalar

				case "viewerCanChangePinnedItems":

				return .scalar

				case "viewerCanCreateProjects":

				return .scalar

				case "viewerCanCreateRepositories":

				return .scalar

				case "viewerCanCreateTeams":

				return .scalar

				case "viewerIsAMember":

				return .scalar

				case "websiteUrl":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "auditLog":
				return internalGetAuditLog()

				case "itemShowcase":
				return internalGetItemShowcase()

				case "memberStatuses":
				return internalGetMemberStatuses()

				case "membersWithRole":
				return internalGetMembersWithRole()

				case "pendingMembers":
				return internalGetPendingMembers()

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

				case "registryPackages":
				return internalGetRegistryPackages()

				case "registryPackagesForQuery":
				return internalGetRegistryPackagesForQuery()

				case "repositories":
				return internalGetRepositories()

				case "repository":
				return internalGetRepository()

				case "samlIdentityProvider":
				return internalGetSamlIdentityProvider()

				case "sponsorsListing":
				return internalGetSponsorsListing()

				case "sponsorshipsAsMaintainer":
				return internalGetSponsorshipsAsMaintainer()

				case "sponsorshipsAsSponsor":
				return internalGetSponsorshipsAsSponsor()

				case "team":
				return internalGetTeam()

				case "teams":
				return internalGetTeams()

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
					case "auditLog":
					response.append(internalGetAuditLog())
					response.append(contentsOf: internalGetAuditLog().childResponseObjectMap())

					case "itemShowcase":
					response.append(internalGetItemShowcase())
					response.append(contentsOf: internalGetItemShowcase().childResponseObjectMap())

					case "memberStatuses":
					response.append(internalGetMemberStatuses())
					response.append(contentsOf: internalGetMemberStatuses().childResponseObjectMap())

					case "membersWithRole":
					response.append(internalGetMembersWithRole())
					response.append(contentsOf: internalGetMembersWithRole().childResponseObjectMap())

					case "pendingMembers":
					response.append(internalGetPendingMembers())
					response.append(contentsOf: internalGetPendingMembers().childResponseObjectMap())

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

					case "registryPackages":
					response.append(internalGetRegistryPackages())
					response.append(contentsOf: internalGetRegistryPackages().childResponseObjectMap())

					case "registryPackagesForQuery":
					response.append(internalGetRegistryPackagesForQuery())
					response.append(contentsOf: internalGetRegistryPackagesForQuery().childResponseObjectMap())

					case "repositories":
					response.append(internalGetRepositories())
					response.append(contentsOf: internalGetRepositories().childResponseObjectMap())

					case "repository":
					if let value = internalGetRepository() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "samlIdentityProvider":
					if let value = internalGetSamlIdentityProvider() {
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

					case "team":
					if let value = internalGetTeam() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "teams":
					response.append(internalGetTeams())
					response.append(contentsOf: internalGetTeams().childResponseObjectMap())

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
