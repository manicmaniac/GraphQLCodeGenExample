// Generated from graphql_swift_gen gem
import Foundation

public protocol OrganizationAuditEntryData {
	var typeName: String { get }

	var organization: ExampleSchema.Organization? { get }

	var organizationName: String? { get }

	var organizationResourcePath: String? { get }

	var organizationUrl: String? { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class OrganizationAuditEntryDataQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = OrganizationAuditEntryData

		@discardableResult
		open func organization(aliasSuffix: String? = nil, _ subfields: (OrganizationQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)

			addField(field: "organization", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func organizationName(aliasSuffix: String? = nil) -> OrganizationAuditEntryDataQuery {
			addField(field: "organizationName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func organizationResourcePath(aliasSuffix: String? = nil) -> OrganizationAuditEntryDataQuery {
			addField(field: "organizationResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func organizationUrl(aliasSuffix: String? = nil) -> OrganizationAuditEntryDataQuery {
			addField(field: "organizationUrl", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onMembersCanDeleteReposClearAuditEntry(subfields: (MembersCanDeleteReposClearAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = MembersCanDeleteReposClearAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "MembersCanDeleteReposClearAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMembersCanDeleteReposDisableAuditEntry(subfields: (MembersCanDeleteReposDisableAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = MembersCanDeleteReposDisableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "MembersCanDeleteReposDisableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMembersCanDeleteReposEnableAuditEntry(subfields: (MembersCanDeleteReposEnableAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = MembersCanDeleteReposEnableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "MembersCanDeleteReposEnableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOauthApplicationCreateAuditEntry(subfields: (OauthApplicationCreateAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OauthApplicationCreateAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OauthApplicationCreateAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgAddBillingManagerAuditEntry(subfields: (OrgAddBillingManagerAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgAddBillingManagerAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgAddBillingManagerAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgAddMemberAuditEntry(subfields: (OrgAddMemberAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgAddMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgAddMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgBlockUserAuditEntry(subfields: (OrgBlockUserAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgBlockUserAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgBlockUserAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgConfigDisableCollaboratorsOnlyAuditEntry(subfields: (OrgConfigDisableCollaboratorsOnlyAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgConfigDisableCollaboratorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgConfigDisableCollaboratorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgConfigEnableCollaboratorsOnlyAuditEntry(subfields: (OrgConfigEnableCollaboratorsOnlyAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgConfigEnableCollaboratorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgConfigEnableCollaboratorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgCreateAuditEntry(subfields: (OrgCreateAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgCreateAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgCreateAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgDisableOauthAppRestrictionsAuditEntry(subfields: (OrgDisableOauthAppRestrictionsAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgDisableOauthAppRestrictionsAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgDisableOauthAppRestrictionsAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgDisableSamlAuditEntry(subfields: (OrgDisableSamlAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgDisableSamlAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgDisableSamlAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgDisableTwoFactorRequirementAuditEntry(subfields: (OrgDisableTwoFactorRequirementAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgDisableTwoFactorRequirementAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgDisableTwoFactorRequirementAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgEnableOauthAppRestrictionsAuditEntry(subfields: (OrgEnableOauthAppRestrictionsAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgEnableOauthAppRestrictionsAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgEnableOauthAppRestrictionsAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgEnableSamlAuditEntry(subfields: (OrgEnableSamlAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgEnableSamlAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgEnableSamlAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgEnableTwoFactorRequirementAuditEntry(subfields: (OrgEnableTwoFactorRequirementAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgEnableTwoFactorRequirementAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgEnableTwoFactorRequirementAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgInviteMemberAuditEntry(subfields: (OrgInviteMemberAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgInviteMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgInviteMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgInviteToBusinessAuditEntry(subfields: (OrgInviteToBusinessAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgInviteToBusinessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgInviteToBusinessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgOauthAppAccessApprovedAuditEntry(subfields: (OrgOauthAppAccessApprovedAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgOauthAppAccessApprovedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgOauthAppAccessApprovedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgOauthAppAccessDeniedAuditEntry(subfields: (OrgOauthAppAccessDeniedAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgOauthAppAccessDeniedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgOauthAppAccessDeniedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgOauthAppAccessRequestedAuditEntry(subfields: (OrgOauthAppAccessRequestedAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgOauthAppAccessRequestedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgOauthAppAccessRequestedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgRemoveBillingManagerAuditEntry(subfields: (OrgRemoveBillingManagerAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgRemoveBillingManagerAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRemoveBillingManagerAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgRemoveMemberAuditEntry(subfields: (OrgRemoveMemberAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgRemoveMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRemoveMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgRemoveOutsideCollaboratorAuditEntry(subfields: (OrgRemoveOutsideCollaboratorAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgRemoveOutsideCollaboratorAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRemoveOutsideCollaboratorAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgRestoreMemberAuditEntry(subfields: (OrgRestoreMemberAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgRestoreMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRestoreMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgRestoreMemberMembershipOrganizationAuditEntryData(subfields: (OrgRestoreMemberMembershipOrganizationAuditEntryDataQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgRestoreMemberMembershipOrganizationAuditEntryDataQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRestoreMemberMembershipOrganizationAuditEntryData", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgUnblockUserAuditEntry(subfields: (OrgUnblockUserAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgUnblockUserAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgUnblockUserAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgUpdateDefaultRepositoryPermissionAuditEntry(subfields: (OrgUpdateDefaultRepositoryPermissionAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgUpdateDefaultRepositoryPermissionAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgUpdateDefaultRepositoryPermissionAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgUpdateMemberAuditEntry(subfields: (OrgUpdateMemberAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgUpdateMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgUpdateMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgUpdateMemberRepositoryCreationPermissionAuditEntry(subfields: (OrgUpdateMemberRepositoryCreationPermissionAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgUpdateMemberRepositoryCreationPermissionAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgUpdateMemberRepositoryCreationPermissionAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgUpdateMemberRepositoryInvitationPermissionAuditEntry(subfields: (OrgUpdateMemberRepositoryInvitationPermissionAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = OrgUpdateMemberRepositoryInvitationPermissionAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgUpdateMemberRepositoryInvitationPermissionAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPrivateRepositoryForkingDisableAuditEntry(subfields: (PrivateRepositoryForkingDisableAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = PrivateRepositoryForkingDisableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "PrivateRepositoryForkingDisableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPrivateRepositoryForkingEnableAuditEntry(subfields: (PrivateRepositoryForkingEnableAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = PrivateRepositoryForkingEnableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "PrivateRepositoryForkingEnableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoAccessAuditEntry(subfields: (RepoAccessAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = RepoAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoAddMemberAuditEntry(subfields: (RepoAddMemberAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = RepoAddMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoAddMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoAddTopicAuditEntry(subfields: (RepoAddTopicAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = RepoAddTopicAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoAddTopicAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoArchivedAuditEntry(subfields: (RepoArchivedAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = RepoArchivedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoArchivedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoChangeMergeSettingAuditEntry(subfields: (RepoChangeMergeSettingAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = RepoChangeMergeSettingAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoChangeMergeSettingAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigDisableAnonymousGitAccessAuditEntry(subfields: (RepoConfigDisableAnonymousGitAccessAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = RepoConfigDisableAnonymousGitAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigDisableAnonymousGitAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigDisableCollaboratorsOnlyAuditEntry(subfields: (RepoConfigDisableCollaboratorsOnlyAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = RepoConfigDisableCollaboratorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigDisableCollaboratorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigDisableContributorsOnlyAuditEntry(subfields: (RepoConfigDisableContributorsOnlyAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = RepoConfigDisableContributorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigDisableContributorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigDisableSockpuppetDisallowedAuditEntry(subfields: (RepoConfigDisableSockpuppetDisallowedAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = RepoConfigDisableSockpuppetDisallowedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigDisableSockpuppetDisallowedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigEnableAnonymousGitAccessAuditEntry(subfields: (RepoConfigEnableAnonymousGitAccessAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = RepoConfigEnableAnonymousGitAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigEnableAnonymousGitAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigEnableCollaboratorsOnlyAuditEntry(subfields: (RepoConfigEnableCollaboratorsOnlyAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = RepoConfigEnableCollaboratorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigEnableCollaboratorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigEnableContributorsOnlyAuditEntry(subfields: (RepoConfigEnableContributorsOnlyAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = RepoConfigEnableContributorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigEnableContributorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigEnableSockpuppetDisallowedAuditEntry(subfields: (RepoConfigEnableSockpuppetDisallowedAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = RepoConfigEnableSockpuppetDisallowedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigEnableSockpuppetDisallowedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigLockAnonymousGitAccessAuditEntry(subfields: (RepoConfigLockAnonymousGitAccessAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = RepoConfigLockAnonymousGitAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigLockAnonymousGitAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigUnlockAnonymousGitAccessAuditEntry(subfields: (RepoConfigUnlockAnonymousGitAccessAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = RepoConfigUnlockAnonymousGitAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigUnlockAnonymousGitAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoCreateAuditEntry(subfields: (RepoCreateAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = RepoCreateAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoCreateAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoDestroyAuditEntry(subfields: (RepoDestroyAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = RepoDestroyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoDestroyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoRemoveMemberAuditEntry(subfields: (RepoRemoveMemberAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = RepoRemoveMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoRemoveMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoRemoveTopicAuditEntry(subfields: (RepoRemoveTopicAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = RepoRemoveTopicAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoRemoveTopicAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepositoryVisibilityChangeDisableAuditEntry(subfields: (RepositoryVisibilityChangeDisableAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = RepositoryVisibilityChangeDisableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepositoryVisibilityChangeDisableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepositoryVisibilityChangeEnableAuditEntry(subfields: (RepositoryVisibilityChangeEnableAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = RepositoryVisibilityChangeEnableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepositoryVisibilityChangeEnableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamAddMemberAuditEntry(subfields: (TeamAddMemberAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = TeamAddMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamAddMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamAddRepositoryAuditEntry(subfields: (TeamAddRepositoryAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = TeamAddRepositoryAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamAddRepositoryAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamChangeParentTeamAuditEntry(subfields: (TeamChangeParentTeamAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = TeamChangeParentTeamAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamChangeParentTeamAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamRemoveMemberAuditEntry(subfields: (TeamRemoveMemberAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = TeamRemoveMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamRemoveMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamRemoveRepositoryAuditEntry(subfields: (TeamRemoveRepositoryAuditEntryQuery) -> Void) -> OrganizationAuditEntryDataQuery {
			let subquery = TeamRemoveRepositoryAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamRemoveRepositoryAuditEntry", subfields: subquery)
			return self
		}
	}

	open class UnknownOrganizationAuditEntryData: GraphQL.AbstractResponse, GraphQLObject, OrganizationAuditEntryData {
		public typealias Query = OrganizationAuditEntryDataQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "organization":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownOrganizationAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return try Organization(fields: value)

				case "organizationName":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownOrganizationAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				case "organizationResourcePath":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownOrganizationAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				case "organizationUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownOrganizationAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownOrganizationAuditEntryData.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> OrganizationAuditEntryData {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownOrganizationAuditEntryData.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "MembersCanDeleteReposClearAuditEntry":
				return try MembersCanDeleteReposClearAuditEntry.init(fields: fields)

				case "MembersCanDeleteReposDisableAuditEntry":
				return try MembersCanDeleteReposDisableAuditEntry.init(fields: fields)

				case "MembersCanDeleteReposEnableAuditEntry":
				return try MembersCanDeleteReposEnableAuditEntry.init(fields: fields)

				case "OauthApplicationCreateAuditEntry":
				return try OauthApplicationCreateAuditEntry.init(fields: fields)

				case "OrgAddBillingManagerAuditEntry":
				return try OrgAddBillingManagerAuditEntry.init(fields: fields)

				case "OrgAddMemberAuditEntry":
				return try OrgAddMemberAuditEntry.init(fields: fields)

				case "OrgBlockUserAuditEntry":
				return try OrgBlockUserAuditEntry.init(fields: fields)

				case "OrgConfigDisableCollaboratorsOnlyAuditEntry":
				return try OrgConfigDisableCollaboratorsOnlyAuditEntry.init(fields: fields)

				case "OrgConfigEnableCollaboratorsOnlyAuditEntry":
				return try OrgConfigEnableCollaboratorsOnlyAuditEntry.init(fields: fields)

				case "OrgCreateAuditEntry":
				return try OrgCreateAuditEntry.init(fields: fields)

				case "OrgDisableOauthAppRestrictionsAuditEntry":
				return try OrgDisableOauthAppRestrictionsAuditEntry.init(fields: fields)

				case "OrgDisableSamlAuditEntry":
				return try OrgDisableSamlAuditEntry.init(fields: fields)

				case "OrgDisableTwoFactorRequirementAuditEntry":
				return try OrgDisableTwoFactorRequirementAuditEntry.init(fields: fields)

				case "OrgEnableOauthAppRestrictionsAuditEntry":
				return try OrgEnableOauthAppRestrictionsAuditEntry.init(fields: fields)

				case "OrgEnableSamlAuditEntry":
				return try OrgEnableSamlAuditEntry.init(fields: fields)

				case "OrgEnableTwoFactorRequirementAuditEntry":
				return try OrgEnableTwoFactorRequirementAuditEntry.init(fields: fields)

				case "OrgInviteMemberAuditEntry":
				return try OrgInviteMemberAuditEntry.init(fields: fields)

				case "OrgInviteToBusinessAuditEntry":
				return try OrgInviteToBusinessAuditEntry.init(fields: fields)

				case "OrgOauthAppAccessApprovedAuditEntry":
				return try OrgOauthAppAccessApprovedAuditEntry.init(fields: fields)

				case "OrgOauthAppAccessDeniedAuditEntry":
				return try OrgOauthAppAccessDeniedAuditEntry.init(fields: fields)

				case "OrgOauthAppAccessRequestedAuditEntry":
				return try OrgOauthAppAccessRequestedAuditEntry.init(fields: fields)

				case "OrgRemoveBillingManagerAuditEntry":
				return try OrgRemoveBillingManagerAuditEntry.init(fields: fields)

				case "OrgRemoveMemberAuditEntry":
				return try OrgRemoveMemberAuditEntry.init(fields: fields)

				case "OrgRemoveOutsideCollaboratorAuditEntry":
				return try OrgRemoveOutsideCollaboratorAuditEntry.init(fields: fields)

				case "OrgRestoreMemberAuditEntry":
				return try OrgRestoreMemberAuditEntry.init(fields: fields)

				case "OrgRestoreMemberMembershipOrganizationAuditEntryData":
				return try OrgRestoreMemberMembershipOrganizationAuditEntryData.init(fields: fields)

				case "OrgUnblockUserAuditEntry":
				return try OrgUnblockUserAuditEntry.init(fields: fields)

				case "OrgUpdateDefaultRepositoryPermissionAuditEntry":
				return try OrgUpdateDefaultRepositoryPermissionAuditEntry.init(fields: fields)

				case "OrgUpdateMemberAuditEntry":
				return try OrgUpdateMemberAuditEntry.init(fields: fields)

				case "OrgUpdateMemberRepositoryCreationPermissionAuditEntry":
				return try OrgUpdateMemberRepositoryCreationPermissionAuditEntry.init(fields: fields)

				case "OrgUpdateMemberRepositoryInvitationPermissionAuditEntry":
				return try OrgUpdateMemberRepositoryInvitationPermissionAuditEntry.init(fields: fields)

				case "PrivateRepositoryForkingDisableAuditEntry":
				return try PrivateRepositoryForkingDisableAuditEntry.init(fields: fields)

				case "PrivateRepositoryForkingEnableAuditEntry":
				return try PrivateRepositoryForkingEnableAuditEntry.init(fields: fields)

				case "RepoAccessAuditEntry":
				return try RepoAccessAuditEntry.init(fields: fields)

				case "RepoAddMemberAuditEntry":
				return try RepoAddMemberAuditEntry.init(fields: fields)

				case "RepoAddTopicAuditEntry":
				return try RepoAddTopicAuditEntry.init(fields: fields)

				case "RepoArchivedAuditEntry":
				return try RepoArchivedAuditEntry.init(fields: fields)

				case "RepoChangeMergeSettingAuditEntry":
				return try RepoChangeMergeSettingAuditEntry.init(fields: fields)

				case "RepoConfigDisableAnonymousGitAccessAuditEntry":
				return try RepoConfigDisableAnonymousGitAccessAuditEntry.init(fields: fields)

				case "RepoConfigDisableCollaboratorsOnlyAuditEntry":
				return try RepoConfigDisableCollaboratorsOnlyAuditEntry.init(fields: fields)

				case "RepoConfigDisableContributorsOnlyAuditEntry":
				return try RepoConfigDisableContributorsOnlyAuditEntry.init(fields: fields)

				case "RepoConfigDisableSockpuppetDisallowedAuditEntry":
				return try RepoConfigDisableSockpuppetDisallowedAuditEntry.init(fields: fields)

				case "RepoConfigEnableAnonymousGitAccessAuditEntry":
				return try RepoConfigEnableAnonymousGitAccessAuditEntry.init(fields: fields)

				case "RepoConfigEnableCollaboratorsOnlyAuditEntry":
				return try RepoConfigEnableCollaboratorsOnlyAuditEntry.init(fields: fields)

				case "RepoConfigEnableContributorsOnlyAuditEntry":
				return try RepoConfigEnableContributorsOnlyAuditEntry.init(fields: fields)

				case "RepoConfigEnableSockpuppetDisallowedAuditEntry":
				return try RepoConfigEnableSockpuppetDisallowedAuditEntry.init(fields: fields)

				case "RepoConfigLockAnonymousGitAccessAuditEntry":
				return try RepoConfigLockAnonymousGitAccessAuditEntry.init(fields: fields)

				case "RepoConfigUnlockAnonymousGitAccessAuditEntry":
				return try RepoConfigUnlockAnonymousGitAccessAuditEntry.init(fields: fields)

				case "RepoCreateAuditEntry":
				return try RepoCreateAuditEntry.init(fields: fields)

				case "RepoDestroyAuditEntry":
				return try RepoDestroyAuditEntry.init(fields: fields)

				case "RepoRemoveMemberAuditEntry":
				return try RepoRemoveMemberAuditEntry.init(fields: fields)

				case "RepoRemoveTopicAuditEntry":
				return try RepoRemoveTopicAuditEntry.init(fields: fields)

				case "RepositoryVisibilityChangeDisableAuditEntry":
				return try RepositoryVisibilityChangeDisableAuditEntry.init(fields: fields)

				case "RepositoryVisibilityChangeEnableAuditEntry":
				return try RepositoryVisibilityChangeEnableAuditEntry.init(fields: fields)

				case "TeamAddMemberAuditEntry":
				return try TeamAddMemberAuditEntry.init(fields: fields)

				case "TeamAddRepositoryAuditEntry":
				return try TeamAddRepositoryAuditEntry.init(fields: fields)

				case "TeamChangeParentTeamAuditEntry":
				return try TeamChangeParentTeamAuditEntry.init(fields: fields)

				case "TeamRemoveMemberAuditEntry":
				return try TeamRemoveMemberAuditEntry.init(fields: fields)

				case "TeamRemoveRepositoryAuditEntry":
				return try TeamRemoveRepositoryAuditEntry.init(fields: fields)

				default:
				return try UnknownOrganizationAuditEntryData.init(fields: fields)
			}
		}

		open var organization: ExampleSchema.Organization? {
			return internalGetOrganization()
		}

		func internalGetOrganization(aliasSuffix: String? = nil) -> ExampleSchema.Organization? {
			return field(field: "organization", aliasSuffix: aliasSuffix) as! ExampleSchema.Organization?
		}

		open var organizationName: String? {
			return internalGetOrganizationName()
		}

		func internalGetOrganizationName(aliasSuffix: String? = nil) -> String? {
			return field(field: "organizationName", aliasSuffix: aliasSuffix) as! String?
		}

		open var organizationResourcePath: String? {
			return internalGetOrganizationResourcePath()
		}

		func internalGetOrganizationResourcePath(aliasSuffix: String? = nil) -> String? {
			return field(field: "organizationResourcePath", aliasSuffix: aliasSuffix) as! String?
		}

		open var organizationUrl: String? {
			return internalGetOrganizationUrl()
		}

		func internalGetOrganizationUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "organizationUrl", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "organization":

				return .object

				case "organizationName":

				return .scalar

				case "organizationResourcePath":

				return .scalar

				case "organizationUrl":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "organization":
				return internalGetOrganization()

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
					case "organization":
					if let value = internalGetOrganization() {
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
