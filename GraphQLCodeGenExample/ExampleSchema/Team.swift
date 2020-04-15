// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class TeamQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Team

		@discardableResult
		open func ancestors(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (TeamConnectionQuery) -> Void) -> TeamQuery {
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

			let subquery = TeamConnectionQuery()
			subfields(subquery)

			addField(field: "ancestors", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func avatarUrl(aliasSuffix: String? = nil, size: Int32? = nil) -> TeamQuery {
			var args: [String] = []

			if let size = size {
				args.append("size:\(size)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "avatarUrl", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func childTeams(aliasSuffix: String? = nil, orderBy: TeamOrder? = nil, userLogins: [String]? = nil, immediateOnly: Bool? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (TeamConnectionQuery) -> Void) -> TeamQuery {
			var args: [String] = []

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			if let userLogins = userLogins {
				args.append("userLogins:[\(userLogins.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let immediateOnly = immediateOnly {
				args.append("immediateOnly:\(immediateOnly)")
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

			addField(field: "childTeams", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func combinedSlug(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "combinedSlug", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func description(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "description", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func discussion(aliasSuffix: String? = nil, number: Int32, _ subfields: (TeamDiscussionQuery) -> Void) -> TeamQuery {
			var args: [String] = []

			args.append("number:\(number)")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = TeamDiscussionQuery()
			subfields(subquery)

			addField(field: "discussion", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func discussions(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, isPinned: Bool? = nil, orderBy: TeamDiscussionOrder? = nil, _ subfields: (TeamDiscussionConnectionQuery) -> Void) -> TeamQuery {
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

			if let isPinned = isPinned {
				args.append("isPinned:\(isPinned)")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = TeamDiscussionConnectionQuery()
			subfields(subquery)

			addField(field: "discussions", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func discussionsResourcePath(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "discussionsResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func discussionsUrl(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "discussionsUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func editTeamResourcePath(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "editTeamResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func editTeamUrl(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "editTeamUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func invitations(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (OrganizationInvitationConnectionQuery) -> Void) -> TeamQuery {
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

			let subquery = OrganizationInvitationConnectionQuery()
			subfields(subquery)

			addField(field: "invitations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func memberStatuses(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: UserStatusOrder? = nil, _ subfields: (UserStatusConnectionQuery) -> Void) -> TeamQuery {
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
		open func members(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, query: String? = nil, membership: TeamMembershipType? = nil, role: TeamMemberRole? = nil, orderBy: TeamMemberOrder? = nil, _ subfields: (TeamMemberConnectionQuery) -> Void) -> TeamQuery {
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

			if let membership = membership {
				args.append("membership:\(membership.rawValue)")
			}

			if let role = role {
				args.append("role:\(role.rawValue)")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = TeamMemberConnectionQuery()
			subfields(subquery)

			addField(field: "members", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func membersResourcePath(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "membersResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func membersUrl(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "membersUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func newTeamResourcePath(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "newTeamResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func newTeamUrl(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "newTeamUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func organization(aliasSuffix: String? = nil, _ subfields: (OrganizationQuery) -> Void) -> TeamQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)

			addField(field: "organization", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func parentTeam(aliasSuffix: String? = nil, _ subfields: (TeamQuery) -> Void) -> TeamQuery {
			let subquery = TeamQuery()
			subfields(subquery)

			addField(field: "parentTeam", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func privacy(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "privacy", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func repositories(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, query: String? = nil, orderBy: TeamRepositoryOrder? = nil, _ subfields: (TeamRepositoryConnectionQuery) -> Void) -> TeamQuery {
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

			let subquery = TeamRepositoryConnectionQuery()
			subfields(subquery)

			addField(field: "repositories", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func repositoriesResourcePath(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "repositoriesResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func repositoriesUrl(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "repositoriesUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func slug(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "slug", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func teamsResourcePath(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "teamsResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func teamsUrl(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "teamsUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanAdminister(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "viewerCanAdminister", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanSubscribe(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "viewerCanSubscribe", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerSubscription(aliasSuffix: String? = nil) -> TeamQuery {
			addField(field: "viewerSubscription", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Team: GraphQL.AbstractResponse, GraphQLObject, MemberStatusable, Node, PermissionGranter, PushAllowanceActor, RequestedReviewer, ReviewDismissalAllowanceActor, Subscribable {
		public typealias Query = TeamQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "ancestors":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return try TeamConnection(fields: value)

				case "avatarUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "childTeams":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return try TeamConnection(fields: value)

				case "combinedSlug":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "description":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "discussion":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return try TeamDiscussion(fields: value)

				case "discussions":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return try TeamDiscussionConnection(fields: value)

				case "discussionsResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "discussionsUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "editTeamResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "editTeamUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "invitations":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationInvitationConnection(fields: value)

				case "memberStatuses":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return try UserStatusConnection(fields: value)

				case "members":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return try TeamMemberConnection(fields: value)

				case "membersResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "membersUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "newTeamResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "newTeamUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "organization":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return try Organization(fields: value)

				case "parentTeam":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return try Team(fields: value)

				case "privacy":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return TeamPrivacy(rawValue: value) ?? .unknownValue

				case "repositories":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return try TeamRepositoryConnection(fields: value)

				case "repositoriesResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "repositoriesUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "slug":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "teamsResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "teamsUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanAdminister":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanSubscribe":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerSubscription":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
				}
				return SubscriptionState(rawValue: value) ?? .unknownValue

				default:
				throw SchemaViolationError(type: Team.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Team" }

		open var ancestors: ExampleSchema.TeamConnection {
			return internalGetAncestors()
		}

		open func aliasedAncestors(aliasSuffix: String) -> ExampleSchema.TeamConnection {
			return internalGetAncestors(aliasSuffix: aliasSuffix)
		}

		func internalGetAncestors(aliasSuffix: String? = nil) -> ExampleSchema.TeamConnection {
			return field(field: "ancestors", aliasSuffix: aliasSuffix) as! ExampleSchema.TeamConnection
		}

		open var avatarUrl: String? {
			return internalGetAvatarUrl()
		}

		open func aliasedAvatarUrl(aliasSuffix: String) -> String? {
			return internalGetAvatarUrl(aliasSuffix: aliasSuffix)
		}

		func internalGetAvatarUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "avatarUrl", aliasSuffix: aliasSuffix) as! String?
		}

		open var childTeams: ExampleSchema.TeamConnection {
			return internalGetChildTeams()
		}

		open func aliasedChildTeams(aliasSuffix: String) -> ExampleSchema.TeamConnection {
			return internalGetChildTeams(aliasSuffix: aliasSuffix)
		}

		func internalGetChildTeams(aliasSuffix: String? = nil) -> ExampleSchema.TeamConnection {
			return field(field: "childTeams", aliasSuffix: aliasSuffix) as! ExampleSchema.TeamConnection
		}

		open var combinedSlug: String {
			return internalGetCombinedSlug()
		}

		func internalGetCombinedSlug(aliasSuffix: String? = nil) -> String {
			return field(field: "combinedSlug", aliasSuffix: aliasSuffix) as! String
		}

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var description: String? {
			return internalGetDescription()
		}

		func internalGetDescription(aliasSuffix: String? = nil) -> String? {
			return field(field: "description", aliasSuffix: aliasSuffix) as! String?
		}

		open var discussion: ExampleSchema.TeamDiscussion? {
			return internalGetDiscussion()
		}

		open func aliasedDiscussion(aliasSuffix: String) -> ExampleSchema.TeamDiscussion? {
			return internalGetDiscussion(aliasSuffix: aliasSuffix)
		}

		func internalGetDiscussion(aliasSuffix: String? = nil) -> ExampleSchema.TeamDiscussion? {
			return field(field: "discussion", aliasSuffix: aliasSuffix) as! ExampleSchema.TeamDiscussion?
		}

		open var discussions: ExampleSchema.TeamDiscussionConnection {
			return internalGetDiscussions()
		}

		open func aliasedDiscussions(aliasSuffix: String) -> ExampleSchema.TeamDiscussionConnection {
			return internalGetDiscussions(aliasSuffix: aliasSuffix)
		}

		func internalGetDiscussions(aliasSuffix: String? = nil) -> ExampleSchema.TeamDiscussionConnection {
			return field(field: "discussions", aliasSuffix: aliasSuffix) as! ExampleSchema.TeamDiscussionConnection
		}

		open var discussionsResourcePath: String {
			return internalGetDiscussionsResourcePath()
		}

		func internalGetDiscussionsResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "discussionsResourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var discussionsUrl: String {
			return internalGetDiscussionsUrl()
		}

		func internalGetDiscussionsUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "discussionsUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var editTeamResourcePath: String {
			return internalGetEditTeamResourcePath()
		}

		func internalGetEditTeamResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "editTeamResourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var editTeamUrl: String {
			return internalGetEditTeamUrl()
		}

		func internalGetEditTeamUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "editTeamUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var invitations: ExampleSchema.OrganizationInvitationConnection? {
			return internalGetInvitations()
		}

		open func aliasedInvitations(aliasSuffix: String) -> ExampleSchema.OrganizationInvitationConnection? {
			return internalGetInvitations(aliasSuffix: aliasSuffix)
		}

		func internalGetInvitations(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationInvitationConnection? {
			return field(field: "invitations", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationInvitationConnection?
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

		open var members: ExampleSchema.TeamMemberConnection {
			return internalGetMembers()
		}

		open func aliasedMembers(aliasSuffix: String) -> ExampleSchema.TeamMemberConnection {
			return internalGetMembers(aliasSuffix: aliasSuffix)
		}

		func internalGetMembers(aliasSuffix: String? = nil) -> ExampleSchema.TeamMemberConnection {
			return field(field: "members", aliasSuffix: aliasSuffix) as! ExampleSchema.TeamMemberConnection
		}

		open var membersResourcePath: String {
			return internalGetMembersResourcePath()
		}

		func internalGetMembersResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "membersResourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var membersUrl: String {
			return internalGetMembersUrl()
		}

		func internalGetMembersUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "membersUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
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

		open var organization: ExampleSchema.Organization {
			return internalGetOrganization()
		}

		func internalGetOrganization(aliasSuffix: String? = nil) -> ExampleSchema.Organization {
			return field(field: "organization", aliasSuffix: aliasSuffix) as! ExampleSchema.Organization
		}

		open var parentTeam: ExampleSchema.Team? {
			return internalGetParentTeam()
		}

		func internalGetParentTeam(aliasSuffix: String? = nil) -> ExampleSchema.Team? {
			return field(field: "parentTeam", aliasSuffix: aliasSuffix) as! ExampleSchema.Team?
		}

		open var privacy: ExampleSchema.TeamPrivacy {
			return internalGetPrivacy()
		}

		func internalGetPrivacy(aliasSuffix: String? = nil) -> ExampleSchema.TeamPrivacy {
			return field(field: "privacy", aliasSuffix: aliasSuffix) as! ExampleSchema.TeamPrivacy
		}

		open var repositories: ExampleSchema.TeamRepositoryConnection {
			return internalGetRepositories()
		}

		open func aliasedRepositories(aliasSuffix: String) -> ExampleSchema.TeamRepositoryConnection {
			return internalGetRepositories(aliasSuffix: aliasSuffix)
		}

		func internalGetRepositories(aliasSuffix: String? = nil) -> ExampleSchema.TeamRepositoryConnection {
			return field(field: "repositories", aliasSuffix: aliasSuffix) as! ExampleSchema.TeamRepositoryConnection
		}

		open var repositoriesResourcePath: String {
			return internalGetRepositoriesResourcePath()
		}

		func internalGetRepositoriesResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "repositoriesResourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var repositoriesUrl: String {
			return internalGetRepositoriesUrl()
		}

		func internalGetRepositoriesUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "repositoriesUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var slug: String {
			return internalGetSlug()
		}

		func internalGetSlug(aliasSuffix: String? = nil) -> String {
			return field(field: "slug", aliasSuffix: aliasSuffix) as! String
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

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "ancestors":

				return .object

				case "avatarUrl":

				return .scalar

				case "childTeams":

				return .object

				case "combinedSlug":

				return .scalar

				case "createdAt":

				return .scalar

				case "description":

				return .scalar

				case "discussion":

				return .object

				case "discussions":

				return .object

				case "discussionsResourcePath":

				return .scalar

				case "discussionsUrl":

				return .scalar

				case "editTeamResourcePath":

				return .scalar

				case "editTeamUrl":

				return .scalar

				case "id":

				return .scalar

				case "invitations":

				return .object

				case "memberStatuses":

				return .object

				case "members":

				return .object

				case "membersResourcePath":

				return .scalar

				case "membersUrl":

				return .scalar

				case "name":

				return .scalar

				case "newTeamResourcePath":

				return .scalar

				case "newTeamUrl":

				return .scalar

				case "organization":

				return .object

				case "parentTeam":

				return .object

				case "privacy":

				return .scalar

				case "repositories":

				return .object

				case "repositoriesResourcePath":

				return .scalar

				case "repositoriesUrl":

				return .scalar

				case "resourcePath":

				return .scalar

				case "slug":

				return .scalar

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

				case "viewerCanSubscribe":

				return .scalar

				case "viewerSubscription":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "ancestors":
				return internalGetAncestors()

				case "childTeams":
				return internalGetChildTeams()

				case "discussion":
				return internalGetDiscussion()

				case "discussions":
				return internalGetDiscussions()

				case "invitations":
				return internalGetInvitations()

				case "memberStatuses":
				return internalGetMemberStatuses()

				case "members":
				return internalGetMembers()

				case "organization":
				return internalGetOrganization()

				case "parentTeam":
				return internalGetParentTeam()

				case "repositories":
				return internalGetRepositories()

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
					case "ancestors":
					response.append(internalGetAncestors())
					response.append(contentsOf: internalGetAncestors().childResponseObjectMap())

					case "childTeams":
					response.append(internalGetChildTeams())
					response.append(contentsOf: internalGetChildTeams().childResponseObjectMap())

					case "discussion":
					if let value = internalGetDiscussion() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "discussions":
					response.append(internalGetDiscussions())
					response.append(contentsOf: internalGetDiscussions().childResponseObjectMap())

					case "invitations":
					if let value = internalGetInvitations() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "memberStatuses":
					response.append(internalGetMemberStatuses())
					response.append(contentsOf: internalGetMemberStatuses().childResponseObjectMap())

					case "members":
					response.append(internalGetMembers())
					response.append(contentsOf: internalGetMembers().childResponseObjectMap())

					case "organization":
					response.append(internalGetOrganization())
					response.append(contentsOf: internalGetOrganization().childResponseObjectMap())

					case "parentTeam":
					if let value = internalGetParentTeam() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "repositories":
					response.append(internalGetRepositories())
					response.append(contentsOf: internalGetRepositories().childResponseObjectMap())

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
