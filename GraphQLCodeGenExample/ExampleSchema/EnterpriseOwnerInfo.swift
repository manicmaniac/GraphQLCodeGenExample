// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class EnterpriseOwnerInfoQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EnterpriseOwnerInfo

		@discardableResult
		open func actionExecutionCapabilitySettingOrganizations(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: OrganizationOrder? = nil, _ subfields: (OrganizationConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
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

			let subquery = OrganizationConnectionQuery()
			subfields(subquery)

			addField(field: "actionExecutionCapabilitySettingOrganizations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func admins(aliasSuffix: String? = nil, query: String? = nil, role: EnterpriseAdministratorRole? = nil, orderBy: EnterpriseMemberOrder? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (EnterpriseAdministratorConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
			var args: [String] = []

			if let query = query {
				args.append("query:\(GraphQL.quoteString(input: query))")
			}

			if let role = role {
				args.append("role:\(role.rawValue)")
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

			let subquery = EnterpriseAdministratorConnectionQuery()
			subfields(subquery)

			addField(field: "admins", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func affiliatedUsersWithTwoFactorDisabled(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (UserConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
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

			addField(field: "affiliatedUsersWithTwoFactorDisabled", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func affiliatedUsersWithTwoFactorDisabledExist(aliasSuffix: String? = nil) -> EnterpriseOwnerInfoQuery {
			addField(field: "affiliatedUsersWithTwoFactorDisabledExist", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func allowPrivateRepositoryForkingSetting(aliasSuffix: String? = nil) -> EnterpriseOwnerInfoQuery {
			addField(field: "allowPrivateRepositoryForkingSetting", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func allowPrivateRepositoryForkingSettingOrganizations(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, value: Bool, orderBy: OrganizationOrder? = nil, _ subfields: (OrganizationConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
			var args: [String] = []

			args.append("value:\(value)")

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

			let subquery = OrganizationConnectionQuery()
			subfields(subquery)

			addField(field: "allowPrivateRepositoryForkingSettingOrganizations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func defaultRepositoryPermissionSetting(aliasSuffix: String? = nil) -> EnterpriseOwnerInfoQuery {
			addField(field: "defaultRepositoryPermissionSetting", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func defaultRepositoryPermissionSettingOrganizations(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, value: DefaultRepositoryPermissionField, orderBy: OrganizationOrder? = nil, _ subfields: (OrganizationConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
			var args: [String] = []

			args.append("value:\(value.rawValue)")

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

			let subquery = OrganizationConnectionQuery()
			subfields(subquery)

			addField(field: "defaultRepositoryPermissionSettingOrganizations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func enterpriseServerInstallations(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, connectedOnly: Bool? = nil, orderBy: EnterpriseServerInstallationOrder? = nil, _ subfields: (EnterpriseServerInstallationConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
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

			if let connectedOnly = connectedOnly {
				args.append("connectedOnly:\(connectedOnly)")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = EnterpriseServerInstallationConnectionQuery()
			subfields(subquery)

			addField(field: "enterpriseServerInstallations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func ipAllowListEnabledSetting(aliasSuffix: String? = nil) -> EnterpriseOwnerInfoQuery {
			addField(field: "ipAllowListEnabledSetting", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func ipAllowListEntries(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: IpAllowListEntryOrder? = nil, _ subfields: (IpAllowListEntryConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
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

			let subquery = IpAllowListEntryConnectionQuery()
			subfields(subquery)

			addField(field: "ipAllowListEntries", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func isUpdatingDefaultRepositoryPermission(aliasSuffix: String? = nil) -> EnterpriseOwnerInfoQuery {
			addField(field: "isUpdatingDefaultRepositoryPermission", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isUpdatingTwoFactorRequirement(aliasSuffix: String? = nil) -> EnterpriseOwnerInfoQuery {
			addField(field: "isUpdatingTwoFactorRequirement", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func membersCanChangeRepositoryVisibilitySetting(aliasSuffix: String? = nil) -> EnterpriseOwnerInfoQuery {
			addField(field: "membersCanChangeRepositoryVisibilitySetting", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func membersCanChangeRepositoryVisibilitySettingOrganizations(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, value: Bool, orderBy: OrganizationOrder? = nil, _ subfields: (OrganizationConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
			var args: [String] = []

			args.append("value:\(value)")

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

			let subquery = OrganizationConnectionQuery()
			subfields(subquery)

			addField(field: "membersCanChangeRepositoryVisibilitySettingOrganizations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func membersCanCreateInternalRepositoriesSetting(aliasSuffix: String? = nil) -> EnterpriseOwnerInfoQuery {
			addField(field: "membersCanCreateInternalRepositoriesSetting", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func membersCanCreatePrivateRepositoriesSetting(aliasSuffix: String? = nil) -> EnterpriseOwnerInfoQuery {
			addField(field: "membersCanCreatePrivateRepositoriesSetting", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func membersCanCreatePublicRepositoriesSetting(aliasSuffix: String? = nil) -> EnterpriseOwnerInfoQuery {
			addField(field: "membersCanCreatePublicRepositoriesSetting", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func membersCanCreateRepositoriesSetting(aliasSuffix: String? = nil) -> EnterpriseOwnerInfoQuery {
			addField(field: "membersCanCreateRepositoriesSetting", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func membersCanCreateRepositoriesSettingOrganizations(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, value: OrganizationMembersCanCreateRepositoriesSettingValue, orderBy: OrganizationOrder? = nil, _ subfields: (OrganizationConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
			var args: [String] = []

			args.append("value:\(value.rawValue)")

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

			let subquery = OrganizationConnectionQuery()
			subfields(subquery)

			addField(field: "membersCanCreateRepositoriesSettingOrganizations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func membersCanDeleteIssuesSetting(aliasSuffix: String? = nil) -> EnterpriseOwnerInfoQuery {
			addField(field: "membersCanDeleteIssuesSetting", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func membersCanDeleteIssuesSettingOrganizations(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, value: Bool, orderBy: OrganizationOrder? = nil, _ subfields: (OrganizationConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
			var args: [String] = []

			args.append("value:\(value)")

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

			let subquery = OrganizationConnectionQuery()
			subfields(subquery)

			addField(field: "membersCanDeleteIssuesSettingOrganizations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func membersCanDeleteRepositoriesSetting(aliasSuffix: String? = nil) -> EnterpriseOwnerInfoQuery {
			addField(field: "membersCanDeleteRepositoriesSetting", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func membersCanDeleteRepositoriesSettingOrganizations(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, value: Bool, orderBy: OrganizationOrder? = nil, _ subfields: (OrganizationConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
			var args: [String] = []

			args.append("value:\(value)")

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

			let subquery = OrganizationConnectionQuery()
			subfields(subquery)

			addField(field: "membersCanDeleteRepositoriesSettingOrganizations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func membersCanInviteCollaboratorsSetting(aliasSuffix: String? = nil) -> EnterpriseOwnerInfoQuery {
			addField(field: "membersCanInviteCollaboratorsSetting", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func membersCanInviteCollaboratorsSettingOrganizations(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, value: Bool, orderBy: OrganizationOrder? = nil, _ subfields: (OrganizationConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
			var args: [String] = []

			args.append("value:\(value)")

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

			let subquery = OrganizationConnectionQuery()
			subfields(subquery)

			addField(field: "membersCanInviteCollaboratorsSettingOrganizations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func membersCanMakePurchasesSetting(aliasSuffix: String? = nil) -> EnterpriseOwnerInfoQuery {
			addField(field: "membersCanMakePurchasesSetting", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func membersCanUpdateProtectedBranchesSetting(aliasSuffix: String? = nil) -> EnterpriseOwnerInfoQuery {
			addField(field: "membersCanUpdateProtectedBranchesSetting", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func membersCanUpdateProtectedBranchesSettingOrganizations(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, value: Bool, orderBy: OrganizationOrder? = nil, _ subfields: (OrganizationConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
			var args: [String] = []

			args.append("value:\(value)")

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

			let subquery = OrganizationConnectionQuery()
			subfields(subquery)

			addField(field: "membersCanUpdateProtectedBranchesSettingOrganizations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func membersCanViewDependencyInsightsSetting(aliasSuffix: String? = nil) -> EnterpriseOwnerInfoQuery {
			addField(field: "membersCanViewDependencyInsightsSetting", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func membersCanViewDependencyInsightsSettingOrganizations(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, value: Bool, orderBy: OrganizationOrder? = nil, _ subfields: (OrganizationConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
			var args: [String] = []

			args.append("value:\(value)")

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

			let subquery = OrganizationConnectionQuery()
			subfields(subquery)

			addField(field: "membersCanViewDependencyInsightsSettingOrganizations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func organizationProjectsSetting(aliasSuffix: String? = nil) -> EnterpriseOwnerInfoQuery {
			addField(field: "organizationProjectsSetting", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func organizationProjectsSettingOrganizations(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, value: Bool, orderBy: OrganizationOrder? = nil, _ subfields: (OrganizationConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
			var args: [String] = []

			args.append("value:\(value)")

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

			let subquery = OrganizationConnectionQuery()
			subfields(subquery)

			addField(field: "organizationProjectsSettingOrganizations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func outsideCollaborators(aliasSuffix: String? = nil, login: String? = nil, query: String? = nil, orderBy: EnterpriseMemberOrder? = nil, visibility: RepositoryVisibility? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (EnterpriseOutsideCollaboratorConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
			var args: [String] = []

			if let login = login {
				args.append("login:\(GraphQL.quoteString(input: login))")
			}

			if let query = query {
				args.append("query:\(GraphQL.quoteString(input: query))")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			if let visibility = visibility {
				args.append("visibility:\(visibility.rawValue)")
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

			let subquery = EnterpriseOutsideCollaboratorConnectionQuery()
			subfields(subquery)

			addField(field: "outsideCollaborators", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func pendingAdminInvitations(aliasSuffix: String? = nil, query: String? = nil, orderBy: EnterpriseAdministratorInvitationOrder? = nil, role: EnterpriseAdministratorRole? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (EnterpriseAdministratorInvitationConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
			var args: [String] = []

			if let query = query {
				args.append("query:\(GraphQL.quoteString(input: query))")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			if let role = role {
				args.append("role:\(role.rawValue)")
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

			let subquery = EnterpriseAdministratorInvitationConnectionQuery()
			subfields(subquery)

			addField(field: "pendingAdminInvitations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func pendingCollaborators(aliasSuffix: String? = nil, query: String? = nil, orderBy: RepositoryInvitationOrder? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (EnterprisePendingCollaboratorConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
			var args: [String] = []

			if let query = query {
				args.append("query:\(GraphQL.quoteString(input: query))")
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

			let subquery = EnterprisePendingCollaboratorConnectionQuery()
			subfields(subquery)

			addField(field: "pendingCollaborators", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func pendingMemberInvitations(aliasSuffix: String? = nil, query: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (EnterprisePendingMemberInvitationConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
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

			let subquery = EnterprisePendingMemberInvitationConnectionQuery()
			subfields(subquery)

			addField(field: "pendingMemberInvitations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func repositoryProjectsSetting(aliasSuffix: String? = nil) -> EnterpriseOwnerInfoQuery {
			addField(field: "repositoryProjectsSetting", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func repositoryProjectsSettingOrganizations(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, value: Bool, orderBy: OrganizationOrder? = nil, _ subfields: (OrganizationConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
			var args: [String] = []

			args.append("value:\(value)")

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

			let subquery = OrganizationConnectionQuery()
			subfields(subquery)

			addField(field: "repositoryProjectsSettingOrganizations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func samlIdentityProvider(aliasSuffix: String? = nil, _ subfields: (EnterpriseIdentityProviderQuery) -> Void) -> EnterpriseOwnerInfoQuery {
			let subquery = EnterpriseIdentityProviderQuery()
			subfields(subquery)

			addField(field: "samlIdentityProvider", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func samlIdentityProviderSettingOrganizations(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, value: IdentityProviderConfigurationState, orderBy: OrganizationOrder? = nil, _ subfields: (OrganizationConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
			var args: [String] = []

			args.append("value:\(value.rawValue)")

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

			let subquery = OrganizationConnectionQuery()
			subfields(subquery)

			addField(field: "samlIdentityProviderSettingOrganizations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func teamDiscussionsSetting(aliasSuffix: String? = nil) -> EnterpriseOwnerInfoQuery {
			addField(field: "teamDiscussionsSetting", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func teamDiscussionsSettingOrganizations(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, value: Bool, orderBy: OrganizationOrder? = nil, _ subfields: (OrganizationConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
			var args: [String] = []

			args.append("value:\(value)")

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

			let subquery = OrganizationConnectionQuery()
			subfields(subquery)

			addField(field: "teamDiscussionsSettingOrganizations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func twoFactorRequiredSetting(aliasSuffix: String? = nil) -> EnterpriseOwnerInfoQuery {
			addField(field: "twoFactorRequiredSetting", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func twoFactorRequiredSettingOrganizations(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, value: Bool, orderBy: OrganizationOrder? = nil, _ subfields: (OrganizationConnectionQuery) -> Void) -> EnterpriseOwnerInfoQuery {
			var args: [String] = []

			args.append("value:\(value)")

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

			let subquery = OrganizationConnectionQuery()
			subfields(subquery)

			addField(field: "twoFactorRequiredSettingOrganizations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}
	}

	open class EnterpriseOwnerInfo: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = EnterpriseOwnerInfoQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actionExecutionCapabilitySettingOrganizations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationConnection(fields: value)

				case "admins":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseAdministratorConnection(fields: value)

				case "affiliatedUsersWithTwoFactorDisabled":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try UserConnection(fields: value)

				case "affiliatedUsersWithTwoFactorDisabledExist":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "allowPrivateRepositoryForkingSetting":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return EnterpriseEnabledDisabledSettingValue(rawValue: value) ?? .unknownValue

				case "allowPrivateRepositoryForkingSettingOrganizations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationConnection(fields: value)

				case "defaultRepositoryPermissionSetting":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return EnterpriseDefaultRepositoryPermissionSettingValue(rawValue: value) ?? .unknownValue

				case "defaultRepositoryPermissionSettingOrganizations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationConnection(fields: value)

				case "enterpriseServerInstallations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseServerInstallationConnection(fields: value)

				case "ipAllowListEnabledSetting":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return IpAllowListEnabledSettingValue(rawValue: value) ?? .unknownValue

				case "ipAllowListEntries":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try IpAllowListEntryConnection(fields: value)

				case "isUpdatingDefaultRepositoryPermission":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isUpdatingTwoFactorRequirement":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "membersCanChangeRepositoryVisibilitySetting":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return EnterpriseEnabledDisabledSettingValue(rawValue: value) ?? .unknownValue

				case "membersCanChangeRepositoryVisibilitySettingOrganizations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationConnection(fields: value)

				case "membersCanCreateInternalRepositoriesSetting":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "membersCanCreatePrivateRepositoriesSetting":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "membersCanCreatePublicRepositoriesSetting":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "membersCanCreateRepositoriesSetting":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return EnterpriseMembersCanCreateRepositoriesSettingValue(rawValue: value) ?? .unknownValue

				case "membersCanCreateRepositoriesSettingOrganizations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationConnection(fields: value)

				case "membersCanDeleteIssuesSetting":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return EnterpriseEnabledDisabledSettingValue(rawValue: value) ?? .unknownValue

				case "membersCanDeleteIssuesSettingOrganizations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationConnection(fields: value)

				case "membersCanDeleteRepositoriesSetting":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return EnterpriseEnabledDisabledSettingValue(rawValue: value) ?? .unknownValue

				case "membersCanDeleteRepositoriesSettingOrganizations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationConnection(fields: value)

				case "membersCanInviteCollaboratorsSetting":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return EnterpriseEnabledDisabledSettingValue(rawValue: value) ?? .unknownValue

				case "membersCanInviteCollaboratorsSettingOrganizations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationConnection(fields: value)

				case "membersCanMakePurchasesSetting":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return EnterpriseMembersCanMakePurchasesSettingValue(rawValue: value) ?? .unknownValue

				case "membersCanUpdateProtectedBranchesSetting":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return EnterpriseEnabledDisabledSettingValue(rawValue: value) ?? .unknownValue

				case "membersCanUpdateProtectedBranchesSettingOrganizations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationConnection(fields: value)

				case "membersCanViewDependencyInsightsSetting":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return EnterpriseEnabledDisabledSettingValue(rawValue: value) ?? .unknownValue

				case "membersCanViewDependencyInsightsSettingOrganizations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationConnection(fields: value)

				case "organizationProjectsSetting":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return EnterpriseEnabledDisabledSettingValue(rawValue: value) ?? .unknownValue

				case "organizationProjectsSettingOrganizations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationConnection(fields: value)

				case "outsideCollaborators":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseOutsideCollaboratorConnection(fields: value)

				case "pendingAdminInvitations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseAdministratorInvitationConnection(fields: value)

				case "pendingCollaborators":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try EnterprisePendingCollaboratorConnection(fields: value)

				case "pendingMemberInvitations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try EnterprisePendingMemberInvitationConnection(fields: value)

				case "repositoryProjectsSetting":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return EnterpriseEnabledDisabledSettingValue(rawValue: value) ?? .unknownValue

				case "repositoryProjectsSettingOrganizations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationConnection(fields: value)

				case "samlIdentityProvider":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseIdentityProvider(fields: value)

				case "samlIdentityProviderSettingOrganizations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationConnection(fields: value)

				case "teamDiscussionsSetting":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return EnterpriseEnabledDisabledSettingValue(rawValue: value) ?? .unknownValue

				case "teamDiscussionsSettingOrganizations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationConnection(fields: value)

				case "twoFactorRequiredSetting":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return EnterpriseEnabledSettingValue(rawValue: value) ?? .unknownValue

				case "twoFactorRequiredSettingOrganizations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationConnection(fields: value)

				default:
				throw SchemaViolationError(type: EnterpriseOwnerInfo.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EnterpriseOwnerInfo" }

		open var actionExecutionCapabilitySettingOrganizations: ExampleSchema.OrganizationConnection {
			return internalGetActionExecutionCapabilitySettingOrganizations()
		}

		open func aliasedActionExecutionCapabilitySettingOrganizations(aliasSuffix: String) -> ExampleSchema.OrganizationConnection {
			return internalGetActionExecutionCapabilitySettingOrganizations(aliasSuffix: aliasSuffix)
		}

		func internalGetActionExecutionCapabilitySettingOrganizations(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationConnection {
			return field(field: "actionExecutionCapabilitySettingOrganizations", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationConnection
		}

		open var admins: ExampleSchema.EnterpriseAdministratorConnection {
			return internalGetAdmins()
		}

		open func aliasedAdmins(aliasSuffix: String) -> ExampleSchema.EnterpriseAdministratorConnection {
			return internalGetAdmins(aliasSuffix: aliasSuffix)
		}

		func internalGetAdmins(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseAdministratorConnection {
			return field(field: "admins", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseAdministratorConnection
		}

		open var affiliatedUsersWithTwoFactorDisabled: ExampleSchema.UserConnection {
			return internalGetAffiliatedUsersWithTwoFactorDisabled()
		}

		open func aliasedAffiliatedUsersWithTwoFactorDisabled(aliasSuffix: String) -> ExampleSchema.UserConnection {
			return internalGetAffiliatedUsersWithTwoFactorDisabled(aliasSuffix: aliasSuffix)
		}

		func internalGetAffiliatedUsersWithTwoFactorDisabled(aliasSuffix: String? = nil) -> ExampleSchema.UserConnection {
			return field(field: "affiliatedUsersWithTwoFactorDisabled", aliasSuffix: aliasSuffix) as! ExampleSchema.UserConnection
		}

		open var affiliatedUsersWithTwoFactorDisabledExist: Bool {
			return internalGetAffiliatedUsersWithTwoFactorDisabledExist()
		}

		func internalGetAffiliatedUsersWithTwoFactorDisabledExist(aliasSuffix: String? = nil) -> Bool {
			return field(field: "affiliatedUsersWithTwoFactorDisabledExist", aliasSuffix: aliasSuffix) as! Bool
		}

		open var allowPrivateRepositoryForkingSetting: ExampleSchema.EnterpriseEnabledDisabledSettingValue {
			return internalGetAllowPrivateRepositoryForkingSetting()
		}

		func internalGetAllowPrivateRepositoryForkingSetting(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseEnabledDisabledSettingValue {
			return field(field: "allowPrivateRepositoryForkingSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseEnabledDisabledSettingValue
		}

		open var allowPrivateRepositoryForkingSettingOrganizations: ExampleSchema.OrganizationConnection {
			return internalGetAllowPrivateRepositoryForkingSettingOrganizations()
		}

		open func aliasedAllowPrivateRepositoryForkingSettingOrganizations(aliasSuffix: String) -> ExampleSchema.OrganizationConnection {
			return internalGetAllowPrivateRepositoryForkingSettingOrganizations(aliasSuffix: aliasSuffix)
		}

		func internalGetAllowPrivateRepositoryForkingSettingOrganizations(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationConnection {
			return field(field: "allowPrivateRepositoryForkingSettingOrganizations", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationConnection
		}

		open var defaultRepositoryPermissionSetting: ExampleSchema.EnterpriseDefaultRepositoryPermissionSettingValue {
			return internalGetDefaultRepositoryPermissionSetting()
		}

		func internalGetDefaultRepositoryPermissionSetting(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseDefaultRepositoryPermissionSettingValue {
			return field(field: "defaultRepositoryPermissionSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseDefaultRepositoryPermissionSettingValue
		}

		open var defaultRepositoryPermissionSettingOrganizations: ExampleSchema.OrganizationConnection {
			return internalGetDefaultRepositoryPermissionSettingOrganizations()
		}

		open func aliasedDefaultRepositoryPermissionSettingOrganizations(aliasSuffix: String) -> ExampleSchema.OrganizationConnection {
			return internalGetDefaultRepositoryPermissionSettingOrganizations(aliasSuffix: aliasSuffix)
		}

		func internalGetDefaultRepositoryPermissionSettingOrganizations(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationConnection {
			return field(field: "defaultRepositoryPermissionSettingOrganizations", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationConnection
		}

		open var enterpriseServerInstallations: ExampleSchema.EnterpriseServerInstallationConnection {
			return internalGetEnterpriseServerInstallations()
		}

		open func aliasedEnterpriseServerInstallations(aliasSuffix: String) -> ExampleSchema.EnterpriseServerInstallationConnection {
			return internalGetEnterpriseServerInstallations(aliasSuffix: aliasSuffix)
		}

		func internalGetEnterpriseServerInstallations(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseServerInstallationConnection {
			return field(field: "enterpriseServerInstallations", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseServerInstallationConnection
		}

		open var ipAllowListEnabledSetting: ExampleSchema.IpAllowListEnabledSettingValue {
			return internalGetIpAllowListEnabledSetting()
		}

		func internalGetIpAllowListEnabledSetting(aliasSuffix: String? = nil) -> ExampleSchema.IpAllowListEnabledSettingValue {
			return field(field: "ipAllowListEnabledSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.IpAllowListEnabledSettingValue
		}

		open var ipAllowListEntries: ExampleSchema.IpAllowListEntryConnection {
			return internalGetIpAllowListEntries()
		}

		open func aliasedIpAllowListEntries(aliasSuffix: String) -> ExampleSchema.IpAllowListEntryConnection {
			return internalGetIpAllowListEntries(aliasSuffix: aliasSuffix)
		}

		func internalGetIpAllowListEntries(aliasSuffix: String? = nil) -> ExampleSchema.IpAllowListEntryConnection {
			return field(field: "ipAllowListEntries", aliasSuffix: aliasSuffix) as! ExampleSchema.IpAllowListEntryConnection
		}

		open var isUpdatingDefaultRepositoryPermission: Bool {
			return internalGetIsUpdatingDefaultRepositoryPermission()
		}

		func internalGetIsUpdatingDefaultRepositoryPermission(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isUpdatingDefaultRepositoryPermission", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isUpdatingTwoFactorRequirement: Bool {
			return internalGetIsUpdatingTwoFactorRequirement()
		}

		func internalGetIsUpdatingTwoFactorRequirement(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isUpdatingTwoFactorRequirement", aliasSuffix: aliasSuffix) as! Bool
		}

		open var membersCanChangeRepositoryVisibilitySetting: ExampleSchema.EnterpriseEnabledDisabledSettingValue {
			return internalGetMembersCanChangeRepositoryVisibilitySetting()
		}

		func internalGetMembersCanChangeRepositoryVisibilitySetting(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseEnabledDisabledSettingValue {
			return field(field: "membersCanChangeRepositoryVisibilitySetting", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseEnabledDisabledSettingValue
		}

		open var membersCanChangeRepositoryVisibilitySettingOrganizations: ExampleSchema.OrganizationConnection {
			return internalGetMembersCanChangeRepositoryVisibilitySettingOrganizations()
		}

		open func aliasedMembersCanChangeRepositoryVisibilitySettingOrganizations(aliasSuffix: String) -> ExampleSchema.OrganizationConnection {
			return internalGetMembersCanChangeRepositoryVisibilitySettingOrganizations(aliasSuffix: aliasSuffix)
		}

		func internalGetMembersCanChangeRepositoryVisibilitySettingOrganizations(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationConnection {
			return field(field: "membersCanChangeRepositoryVisibilitySettingOrganizations", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationConnection
		}

		open var membersCanCreateInternalRepositoriesSetting: Bool? {
			return internalGetMembersCanCreateInternalRepositoriesSetting()
		}

		func internalGetMembersCanCreateInternalRepositoriesSetting(aliasSuffix: String? = nil) -> Bool? {
			return field(field: "membersCanCreateInternalRepositoriesSetting", aliasSuffix: aliasSuffix) as! Bool?
		}

		open var membersCanCreatePrivateRepositoriesSetting: Bool? {
			return internalGetMembersCanCreatePrivateRepositoriesSetting()
		}

		func internalGetMembersCanCreatePrivateRepositoriesSetting(aliasSuffix: String? = nil) -> Bool? {
			return field(field: "membersCanCreatePrivateRepositoriesSetting", aliasSuffix: aliasSuffix) as! Bool?
		}

		open var membersCanCreatePublicRepositoriesSetting: Bool? {
			return internalGetMembersCanCreatePublicRepositoriesSetting()
		}

		func internalGetMembersCanCreatePublicRepositoriesSetting(aliasSuffix: String? = nil) -> Bool? {
			return field(field: "membersCanCreatePublicRepositoriesSetting", aliasSuffix: aliasSuffix) as! Bool?
		}

		open var membersCanCreateRepositoriesSetting: ExampleSchema.EnterpriseMembersCanCreateRepositoriesSettingValue? {
			return internalGetMembersCanCreateRepositoriesSetting()
		}

		func internalGetMembersCanCreateRepositoriesSetting(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseMembersCanCreateRepositoriesSettingValue? {
			return field(field: "membersCanCreateRepositoriesSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseMembersCanCreateRepositoriesSettingValue?
		}

		open var membersCanCreateRepositoriesSettingOrganizations: ExampleSchema.OrganizationConnection {
			return internalGetMembersCanCreateRepositoriesSettingOrganizations()
		}

		open func aliasedMembersCanCreateRepositoriesSettingOrganizations(aliasSuffix: String) -> ExampleSchema.OrganizationConnection {
			return internalGetMembersCanCreateRepositoriesSettingOrganizations(aliasSuffix: aliasSuffix)
		}

		func internalGetMembersCanCreateRepositoriesSettingOrganizations(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationConnection {
			return field(field: "membersCanCreateRepositoriesSettingOrganizations", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationConnection
		}

		open var membersCanDeleteIssuesSetting: ExampleSchema.EnterpriseEnabledDisabledSettingValue {
			return internalGetMembersCanDeleteIssuesSetting()
		}

		func internalGetMembersCanDeleteIssuesSetting(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseEnabledDisabledSettingValue {
			return field(field: "membersCanDeleteIssuesSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseEnabledDisabledSettingValue
		}

		open var membersCanDeleteIssuesSettingOrganizations: ExampleSchema.OrganizationConnection {
			return internalGetMembersCanDeleteIssuesSettingOrganizations()
		}

		open func aliasedMembersCanDeleteIssuesSettingOrganizations(aliasSuffix: String) -> ExampleSchema.OrganizationConnection {
			return internalGetMembersCanDeleteIssuesSettingOrganizations(aliasSuffix: aliasSuffix)
		}

		func internalGetMembersCanDeleteIssuesSettingOrganizations(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationConnection {
			return field(field: "membersCanDeleteIssuesSettingOrganizations", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationConnection
		}

		open var membersCanDeleteRepositoriesSetting: ExampleSchema.EnterpriseEnabledDisabledSettingValue {
			return internalGetMembersCanDeleteRepositoriesSetting()
		}

		func internalGetMembersCanDeleteRepositoriesSetting(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseEnabledDisabledSettingValue {
			return field(field: "membersCanDeleteRepositoriesSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseEnabledDisabledSettingValue
		}

		open var membersCanDeleteRepositoriesSettingOrganizations: ExampleSchema.OrganizationConnection {
			return internalGetMembersCanDeleteRepositoriesSettingOrganizations()
		}

		open func aliasedMembersCanDeleteRepositoriesSettingOrganizations(aliasSuffix: String) -> ExampleSchema.OrganizationConnection {
			return internalGetMembersCanDeleteRepositoriesSettingOrganizations(aliasSuffix: aliasSuffix)
		}

		func internalGetMembersCanDeleteRepositoriesSettingOrganizations(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationConnection {
			return field(field: "membersCanDeleteRepositoriesSettingOrganizations", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationConnection
		}

		open var membersCanInviteCollaboratorsSetting: ExampleSchema.EnterpriseEnabledDisabledSettingValue {
			return internalGetMembersCanInviteCollaboratorsSetting()
		}

		func internalGetMembersCanInviteCollaboratorsSetting(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseEnabledDisabledSettingValue {
			return field(field: "membersCanInviteCollaboratorsSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseEnabledDisabledSettingValue
		}

		open var membersCanInviteCollaboratorsSettingOrganizations: ExampleSchema.OrganizationConnection {
			return internalGetMembersCanInviteCollaboratorsSettingOrganizations()
		}

		open func aliasedMembersCanInviteCollaboratorsSettingOrganizations(aliasSuffix: String) -> ExampleSchema.OrganizationConnection {
			return internalGetMembersCanInviteCollaboratorsSettingOrganizations(aliasSuffix: aliasSuffix)
		}

		func internalGetMembersCanInviteCollaboratorsSettingOrganizations(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationConnection {
			return field(field: "membersCanInviteCollaboratorsSettingOrganizations", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationConnection
		}

		open var membersCanMakePurchasesSetting: ExampleSchema.EnterpriseMembersCanMakePurchasesSettingValue {
			return internalGetMembersCanMakePurchasesSetting()
		}

		func internalGetMembersCanMakePurchasesSetting(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseMembersCanMakePurchasesSettingValue {
			return field(field: "membersCanMakePurchasesSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseMembersCanMakePurchasesSettingValue
		}

		open var membersCanUpdateProtectedBranchesSetting: ExampleSchema.EnterpriseEnabledDisabledSettingValue {
			return internalGetMembersCanUpdateProtectedBranchesSetting()
		}

		func internalGetMembersCanUpdateProtectedBranchesSetting(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseEnabledDisabledSettingValue {
			return field(field: "membersCanUpdateProtectedBranchesSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseEnabledDisabledSettingValue
		}

		open var membersCanUpdateProtectedBranchesSettingOrganizations: ExampleSchema.OrganizationConnection {
			return internalGetMembersCanUpdateProtectedBranchesSettingOrganizations()
		}

		open func aliasedMembersCanUpdateProtectedBranchesSettingOrganizations(aliasSuffix: String) -> ExampleSchema.OrganizationConnection {
			return internalGetMembersCanUpdateProtectedBranchesSettingOrganizations(aliasSuffix: aliasSuffix)
		}

		func internalGetMembersCanUpdateProtectedBranchesSettingOrganizations(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationConnection {
			return field(field: "membersCanUpdateProtectedBranchesSettingOrganizations", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationConnection
		}

		open var membersCanViewDependencyInsightsSetting: ExampleSchema.EnterpriseEnabledDisabledSettingValue {
			return internalGetMembersCanViewDependencyInsightsSetting()
		}

		func internalGetMembersCanViewDependencyInsightsSetting(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseEnabledDisabledSettingValue {
			return field(field: "membersCanViewDependencyInsightsSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseEnabledDisabledSettingValue
		}

		open var membersCanViewDependencyInsightsSettingOrganizations: ExampleSchema.OrganizationConnection {
			return internalGetMembersCanViewDependencyInsightsSettingOrganizations()
		}

		open func aliasedMembersCanViewDependencyInsightsSettingOrganizations(aliasSuffix: String) -> ExampleSchema.OrganizationConnection {
			return internalGetMembersCanViewDependencyInsightsSettingOrganizations(aliasSuffix: aliasSuffix)
		}

		func internalGetMembersCanViewDependencyInsightsSettingOrganizations(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationConnection {
			return field(field: "membersCanViewDependencyInsightsSettingOrganizations", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationConnection
		}

		open var organizationProjectsSetting: ExampleSchema.EnterpriseEnabledDisabledSettingValue {
			return internalGetOrganizationProjectsSetting()
		}

		func internalGetOrganizationProjectsSetting(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseEnabledDisabledSettingValue {
			return field(field: "organizationProjectsSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseEnabledDisabledSettingValue
		}

		open var organizationProjectsSettingOrganizations: ExampleSchema.OrganizationConnection {
			return internalGetOrganizationProjectsSettingOrganizations()
		}

		open func aliasedOrganizationProjectsSettingOrganizations(aliasSuffix: String) -> ExampleSchema.OrganizationConnection {
			return internalGetOrganizationProjectsSettingOrganizations(aliasSuffix: aliasSuffix)
		}

		func internalGetOrganizationProjectsSettingOrganizations(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationConnection {
			return field(field: "organizationProjectsSettingOrganizations", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationConnection
		}

		open var outsideCollaborators: ExampleSchema.EnterpriseOutsideCollaboratorConnection {
			return internalGetOutsideCollaborators()
		}

		open func aliasedOutsideCollaborators(aliasSuffix: String) -> ExampleSchema.EnterpriseOutsideCollaboratorConnection {
			return internalGetOutsideCollaborators(aliasSuffix: aliasSuffix)
		}

		func internalGetOutsideCollaborators(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseOutsideCollaboratorConnection {
			return field(field: "outsideCollaborators", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseOutsideCollaboratorConnection
		}

		open var pendingAdminInvitations: ExampleSchema.EnterpriseAdministratorInvitationConnection {
			return internalGetPendingAdminInvitations()
		}

		open func aliasedPendingAdminInvitations(aliasSuffix: String) -> ExampleSchema.EnterpriseAdministratorInvitationConnection {
			return internalGetPendingAdminInvitations(aliasSuffix: aliasSuffix)
		}

		func internalGetPendingAdminInvitations(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseAdministratorInvitationConnection {
			return field(field: "pendingAdminInvitations", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseAdministratorInvitationConnection
		}

		open var pendingCollaborators: ExampleSchema.EnterprisePendingCollaboratorConnection {
			return internalGetPendingCollaborators()
		}

		open func aliasedPendingCollaborators(aliasSuffix: String) -> ExampleSchema.EnterprisePendingCollaboratorConnection {
			return internalGetPendingCollaborators(aliasSuffix: aliasSuffix)
		}

		func internalGetPendingCollaborators(aliasSuffix: String? = nil) -> ExampleSchema.EnterprisePendingCollaboratorConnection {
			return field(field: "pendingCollaborators", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterprisePendingCollaboratorConnection
		}

		open var pendingMemberInvitations: ExampleSchema.EnterprisePendingMemberInvitationConnection {
			return internalGetPendingMemberInvitations()
		}

		open func aliasedPendingMemberInvitations(aliasSuffix: String) -> ExampleSchema.EnterprisePendingMemberInvitationConnection {
			return internalGetPendingMemberInvitations(aliasSuffix: aliasSuffix)
		}

		func internalGetPendingMemberInvitations(aliasSuffix: String? = nil) -> ExampleSchema.EnterprisePendingMemberInvitationConnection {
			return field(field: "pendingMemberInvitations", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterprisePendingMemberInvitationConnection
		}

		open var repositoryProjectsSetting: ExampleSchema.EnterpriseEnabledDisabledSettingValue {
			return internalGetRepositoryProjectsSetting()
		}

		func internalGetRepositoryProjectsSetting(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseEnabledDisabledSettingValue {
			return field(field: "repositoryProjectsSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseEnabledDisabledSettingValue
		}

		open var repositoryProjectsSettingOrganizations: ExampleSchema.OrganizationConnection {
			return internalGetRepositoryProjectsSettingOrganizations()
		}

		open func aliasedRepositoryProjectsSettingOrganizations(aliasSuffix: String) -> ExampleSchema.OrganizationConnection {
			return internalGetRepositoryProjectsSettingOrganizations(aliasSuffix: aliasSuffix)
		}

		func internalGetRepositoryProjectsSettingOrganizations(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationConnection {
			return field(field: "repositoryProjectsSettingOrganizations", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationConnection
		}

		open var samlIdentityProvider: ExampleSchema.EnterpriseIdentityProvider? {
			return internalGetSamlIdentityProvider()
		}

		func internalGetSamlIdentityProvider(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseIdentityProvider? {
			return field(field: "samlIdentityProvider", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseIdentityProvider?
		}

		open var samlIdentityProviderSettingOrganizations: ExampleSchema.OrganizationConnection {
			return internalGetSamlIdentityProviderSettingOrganizations()
		}

		open func aliasedSamlIdentityProviderSettingOrganizations(aliasSuffix: String) -> ExampleSchema.OrganizationConnection {
			return internalGetSamlIdentityProviderSettingOrganizations(aliasSuffix: aliasSuffix)
		}

		func internalGetSamlIdentityProviderSettingOrganizations(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationConnection {
			return field(field: "samlIdentityProviderSettingOrganizations", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationConnection
		}

		open var teamDiscussionsSetting: ExampleSchema.EnterpriseEnabledDisabledSettingValue {
			return internalGetTeamDiscussionsSetting()
		}

		func internalGetTeamDiscussionsSetting(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseEnabledDisabledSettingValue {
			return field(field: "teamDiscussionsSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseEnabledDisabledSettingValue
		}

		open var teamDiscussionsSettingOrganizations: ExampleSchema.OrganizationConnection {
			return internalGetTeamDiscussionsSettingOrganizations()
		}

		open func aliasedTeamDiscussionsSettingOrganizations(aliasSuffix: String) -> ExampleSchema.OrganizationConnection {
			return internalGetTeamDiscussionsSettingOrganizations(aliasSuffix: aliasSuffix)
		}

		func internalGetTeamDiscussionsSettingOrganizations(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationConnection {
			return field(field: "teamDiscussionsSettingOrganizations", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationConnection
		}

		open var twoFactorRequiredSetting: ExampleSchema.EnterpriseEnabledSettingValue {
			return internalGetTwoFactorRequiredSetting()
		}

		func internalGetTwoFactorRequiredSetting(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseEnabledSettingValue {
			return field(field: "twoFactorRequiredSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseEnabledSettingValue
		}

		open var twoFactorRequiredSettingOrganizations: ExampleSchema.OrganizationConnection {
			return internalGetTwoFactorRequiredSettingOrganizations()
		}

		open func aliasedTwoFactorRequiredSettingOrganizations(aliasSuffix: String) -> ExampleSchema.OrganizationConnection {
			return internalGetTwoFactorRequiredSettingOrganizations(aliasSuffix: aliasSuffix)
		}

		func internalGetTwoFactorRequiredSettingOrganizations(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationConnection {
			return field(field: "twoFactorRequiredSettingOrganizations", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationConnection
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "actionExecutionCapabilitySettingOrganizations":

				return .object

				case "admins":

				return .object

				case "affiliatedUsersWithTwoFactorDisabled":

				return .object

				case "affiliatedUsersWithTwoFactorDisabledExist":

				return .scalar

				case "allowPrivateRepositoryForkingSetting":

				return .scalar

				case "allowPrivateRepositoryForkingSettingOrganizations":

				return .object

				case "defaultRepositoryPermissionSetting":

				return .scalar

				case "defaultRepositoryPermissionSettingOrganizations":

				return .object

				case "enterpriseServerInstallations":

				return .object

				case "ipAllowListEnabledSetting":

				return .scalar

				case "ipAllowListEntries":

				return .object

				case "isUpdatingDefaultRepositoryPermission":

				return .scalar

				case "isUpdatingTwoFactorRequirement":

				return .scalar

				case "membersCanChangeRepositoryVisibilitySetting":

				return .scalar

				case "membersCanChangeRepositoryVisibilitySettingOrganizations":

				return .object

				case "membersCanCreateInternalRepositoriesSetting":

				return .scalar

				case "membersCanCreatePrivateRepositoriesSetting":

				return .scalar

				case "membersCanCreatePublicRepositoriesSetting":

				return .scalar

				case "membersCanCreateRepositoriesSetting":

				return .scalar

				case "membersCanCreateRepositoriesSettingOrganizations":

				return .object

				case "membersCanDeleteIssuesSetting":

				return .scalar

				case "membersCanDeleteIssuesSettingOrganizations":

				return .object

				case "membersCanDeleteRepositoriesSetting":

				return .scalar

				case "membersCanDeleteRepositoriesSettingOrganizations":

				return .object

				case "membersCanInviteCollaboratorsSetting":

				return .scalar

				case "membersCanInviteCollaboratorsSettingOrganizations":

				return .object

				case "membersCanMakePurchasesSetting":

				return .scalar

				case "membersCanUpdateProtectedBranchesSetting":

				return .scalar

				case "membersCanUpdateProtectedBranchesSettingOrganizations":

				return .object

				case "membersCanViewDependencyInsightsSetting":

				return .scalar

				case "membersCanViewDependencyInsightsSettingOrganizations":

				return .object

				case "organizationProjectsSetting":

				return .scalar

				case "organizationProjectsSettingOrganizations":

				return .object

				case "outsideCollaborators":

				return .object

				case "pendingAdminInvitations":

				return .object

				case "pendingCollaborators":

				return .object

				case "pendingMemberInvitations":

				return .object

				case "repositoryProjectsSetting":

				return .scalar

				case "repositoryProjectsSettingOrganizations":

				return .object

				case "samlIdentityProvider":

				return .object

				case "samlIdentityProviderSettingOrganizations":

				return .object

				case "teamDiscussionsSetting":

				return .scalar

				case "teamDiscussionsSettingOrganizations":

				return .object

				case "twoFactorRequiredSetting":

				return .scalar

				case "twoFactorRequiredSettingOrganizations":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "actionExecutionCapabilitySettingOrganizations":
				return internalGetActionExecutionCapabilitySettingOrganizations()

				case "admins":
				return internalGetAdmins()

				case "affiliatedUsersWithTwoFactorDisabled":
				return internalGetAffiliatedUsersWithTwoFactorDisabled()

				case "allowPrivateRepositoryForkingSettingOrganizations":
				return internalGetAllowPrivateRepositoryForkingSettingOrganizations()

				case "defaultRepositoryPermissionSettingOrganizations":
				return internalGetDefaultRepositoryPermissionSettingOrganizations()

				case "enterpriseServerInstallations":
				return internalGetEnterpriseServerInstallations()

				case "ipAllowListEntries":
				return internalGetIpAllowListEntries()

				case "membersCanChangeRepositoryVisibilitySettingOrganizations":
				return internalGetMembersCanChangeRepositoryVisibilitySettingOrganizations()

				case "membersCanCreateRepositoriesSettingOrganizations":
				return internalGetMembersCanCreateRepositoriesSettingOrganizations()

				case "membersCanDeleteIssuesSettingOrganizations":
				return internalGetMembersCanDeleteIssuesSettingOrganizations()

				case "membersCanDeleteRepositoriesSettingOrganizations":
				return internalGetMembersCanDeleteRepositoriesSettingOrganizations()

				case "membersCanInviteCollaboratorsSettingOrganizations":
				return internalGetMembersCanInviteCollaboratorsSettingOrganizations()

				case "membersCanUpdateProtectedBranchesSettingOrganizations":
				return internalGetMembersCanUpdateProtectedBranchesSettingOrganizations()

				case "membersCanViewDependencyInsightsSettingOrganizations":
				return internalGetMembersCanViewDependencyInsightsSettingOrganizations()

				case "organizationProjectsSettingOrganizations":
				return internalGetOrganizationProjectsSettingOrganizations()

				case "outsideCollaborators":
				return internalGetOutsideCollaborators()

				case "pendingAdminInvitations":
				return internalGetPendingAdminInvitations()

				case "pendingCollaborators":
				return internalGetPendingCollaborators()

				case "pendingMemberInvitations":
				return internalGetPendingMemberInvitations()

				case "repositoryProjectsSettingOrganizations":
				return internalGetRepositoryProjectsSettingOrganizations()

				case "samlIdentityProvider":
				return internalGetSamlIdentityProvider()

				case "samlIdentityProviderSettingOrganizations":
				return internalGetSamlIdentityProviderSettingOrganizations()

				case "teamDiscussionsSettingOrganizations":
				return internalGetTeamDiscussionsSettingOrganizations()

				case "twoFactorRequiredSettingOrganizations":
				return internalGetTwoFactorRequiredSettingOrganizations()

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
					case "actionExecutionCapabilitySettingOrganizations":
					response.append(internalGetActionExecutionCapabilitySettingOrganizations())
					response.append(contentsOf: internalGetActionExecutionCapabilitySettingOrganizations().childResponseObjectMap())

					case "admins":
					response.append(internalGetAdmins())
					response.append(contentsOf: internalGetAdmins().childResponseObjectMap())

					case "affiliatedUsersWithTwoFactorDisabled":
					response.append(internalGetAffiliatedUsersWithTwoFactorDisabled())
					response.append(contentsOf: internalGetAffiliatedUsersWithTwoFactorDisabled().childResponseObjectMap())

					case "allowPrivateRepositoryForkingSettingOrganizations":
					response.append(internalGetAllowPrivateRepositoryForkingSettingOrganizations())
					response.append(contentsOf: internalGetAllowPrivateRepositoryForkingSettingOrganizations().childResponseObjectMap())

					case "defaultRepositoryPermissionSettingOrganizations":
					response.append(internalGetDefaultRepositoryPermissionSettingOrganizations())
					response.append(contentsOf: internalGetDefaultRepositoryPermissionSettingOrganizations().childResponseObjectMap())

					case "enterpriseServerInstallations":
					response.append(internalGetEnterpriseServerInstallations())
					response.append(contentsOf: internalGetEnterpriseServerInstallations().childResponseObjectMap())

					case "ipAllowListEntries":
					response.append(internalGetIpAllowListEntries())
					response.append(contentsOf: internalGetIpAllowListEntries().childResponseObjectMap())

					case "membersCanChangeRepositoryVisibilitySettingOrganizations":
					response.append(internalGetMembersCanChangeRepositoryVisibilitySettingOrganizations())
					response.append(contentsOf: internalGetMembersCanChangeRepositoryVisibilitySettingOrganizations().childResponseObjectMap())

					case "membersCanCreateRepositoriesSettingOrganizations":
					response.append(internalGetMembersCanCreateRepositoriesSettingOrganizations())
					response.append(contentsOf: internalGetMembersCanCreateRepositoriesSettingOrganizations().childResponseObjectMap())

					case "membersCanDeleteIssuesSettingOrganizations":
					response.append(internalGetMembersCanDeleteIssuesSettingOrganizations())
					response.append(contentsOf: internalGetMembersCanDeleteIssuesSettingOrganizations().childResponseObjectMap())

					case "membersCanDeleteRepositoriesSettingOrganizations":
					response.append(internalGetMembersCanDeleteRepositoriesSettingOrganizations())
					response.append(contentsOf: internalGetMembersCanDeleteRepositoriesSettingOrganizations().childResponseObjectMap())

					case "membersCanInviteCollaboratorsSettingOrganizations":
					response.append(internalGetMembersCanInviteCollaboratorsSettingOrganizations())
					response.append(contentsOf: internalGetMembersCanInviteCollaboratorsSettingOrganizations().childResponseObjectMap())

					case "membersCanUpdateProtectedBranchesSettingOrganizations":
					response.append(internalGetMembersCanUpdateProtectedBranchesSettingOrganizations())
					response.append(contentsOf: internalGetMembersCanUpdateProtectedBranchesSettingOrganizations().childResponseObjectMap())

					case "membersCanViewDependencyInsightsSettingOrganizations":
					response.append(internalGetMembersCanViewDependencyInsightsSettingOrganizations())
					response.append(contentsOf: internalGetMembersCanViewDependencyInsightsSettingOrganizations().childResponseObjectMap())

					case "organizationProjectsSettingOrganizations":
					response.append(internalGetOrganizationProjectsSettingOrganizations())
					response.append(contentsOf: internalGetOrganizationProjectsSettingOrganizations().childResponseObjectMap())

					case "outsideCollaborators":
					response.append(internalGetOutsideCollaborators())
					response.append(contentsOf: internalGetOutsideCollaborators().childResponseObjectMap())

					case "pendingAdminInvitations":
					response.append(internalGetPendingAdminInvitations())
					response.append(contentsOf: internalGetPendingAdminInvitations().childResponseObjectMap())

					case "pendingCollaborators":
					response.append(internalGetPendingCollaborators())
					response.append(contentsOf: internalGetPendingCollaborators().childResponseObjectMap())

					case "pendingMemberInvitations":
					response.append(internalGetPendingMemberInvitations())
					response.append(contentsOf: internalGetPendingMemberInvitations().childResponseObjectMap())

					case "repositoryProjectsSettingOrganizations":
					response.append(internalGetRepositoryProjectsSettingOrganizations())
					response.append(contentsOf: internalGetRepositoryProjectsSettingOrganizations().childResponseObjectMap())

					case "samlIdentityProvider":
					if let value = internalGetSamlIdentityProvider() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "samlIdentityProviderSettingOrganizations":
					response.append(internalGetSamlIdentityProviderSettingOrganizations())
					response.append(contentsOf: internalGetSamlIdentityProviderSettingOrganizations().childResponseObjectMap())

					case "teamDiscussionsSettingOrganizations":
					response.append(internalGetTeamDiscussionsSettingOrganizations())
					response.append(contentsOf: internalGetTeamDiscussionsSettingOrganizations().childResponseObjectMap())

					case "twoFactorRequiredSettingOrganizations":
					response.append(internalGetTwoFactorRequiredSettingOrganizations())
					response.append(contentsOf: internalGetTwoFactorRequiredSettingOrganizations().childResponseObjectMap())

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
