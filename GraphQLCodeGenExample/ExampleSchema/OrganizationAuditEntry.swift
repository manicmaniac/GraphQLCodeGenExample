// Generated from graphql_swift_gen gem
import Foundation

public protocol OrganizationAuditEntry {
	var typeName: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class OrganizationAuditEntryQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = OrganizationAuditEntry

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onMembersCanDeleteReposClearAuditEntry(subfields: (MembersCanDeleteReposClearAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = MembersCanDeleteReposClearAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "MembersCanDeleteReposClearAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMembersCanDeleteReposDisableAuditEntry(subfields: (MembersCanDeleteReposDisableAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = MembersCanDeleteReposDisableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "MembersCanDeleteReposDisableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMembersCanDeleteReposEnableAuditEntry(subfields: (MembersCanDeleteReposEnableAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = MembersCanDeleteReposEnableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "MembersCanDeleteReposEnableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOauthApplicationCreateAuditEntry(subfields: (OauthApplicationCreateAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OauthApplicationCreateAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OauthApplicationCreateAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgAddBillingManagerAuditEntry(subfields: (OrgAddBillingManagerAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgAddBillingManagerAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgAddBillingManagerAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgAddMemberAuditEntry(subfields: (OrgAddMemberAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgAddMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgAddMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgBlockUserAuditEntry(subfields: (OrgBlockUserAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgBlockUserAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgBlockUserAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgConfigDisableCollaboratorsOnlyAuditEntry(subfields: (OrgConfigDisableCollaboratorsOnlyAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgConfigDisableCollaboratorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgConfigDisableCollaboratorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgConfigEnableCollaboratorsOnlyAuditEntry(subfields: (OrgConfigEnableCollaboratorsOnlyAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgConfigEnableCollaboratorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgConfigEnableCollaboratorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgCreateAuditEntry(subfields: (OrgCreateAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgCreateAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgCreateAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgDisableOauthAppRestrictionsAuditEntry(subfields: (OrgDisableOauthAppRestrictionsAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgDisableOauthAppRestrictionsAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgDisableOauthAppRestrictionsAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgDisableSamlAuditEntry(subfields: (OrgDisableSamlAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgDisableSamlAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgDisableSamlAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgDisableTwoFactorRequirementAuditEntry(subfields: (OrgDisableTwoFactorRequirementAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgDisableTwoFactorRequirementAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgDisableTwoFactorRequirementAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgEnableOauthAppRestrictionsAuditEntry(subfields: (OrgEnableOauthAppRestrictionsAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgEnableOauthAppRestrictionsAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgEnableOauthAppRestrictionsAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgEnableSamlAuditEntry(subfields: (OrgEnableSamlAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgEnableSamlAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgEnableSamlAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgEnableTwoFactorRequirementAuditEntry(subfields: (OrgEnableTwoFactorRequirementAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgEnableTwoFactorRequirementAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgEnableTwoFactorRequirementAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgInviteMemberAuditEntry(subfields: (OrgInviteMemberAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgInviteMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgInviteMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgInviteToBusinessAuditEntry(subfields: (OrgInviteToBusinessAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgInviteToBusinessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgInviteToBusinessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgOauthAppAccessApprovedAuditEntry(subfields: (OrgOauthAppAccessApprovedAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgOauthAppAccessApprovedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgOauthAppAccessApprovedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgOauthAppAccessDeniedAuditEntry(subfields: (OrgOauthAppAccessDeniedAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgOauthAppAccessDeniedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgOauthAppAccessDeniedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgOauthAppAccessRequestedAuditEntry(subfields: (OrgOauthAppAccessRequestedAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgOauthAppAccessRequestedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgOauthAppAccessRequestedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgRemoveBillingManagerAuditEntry(subfields: (OrgRemoveBillingManagerAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgRemoveBillingManagerAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRemoveBillingManagerAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgRemoveMemberAuditEntry(subfields: (OrgRemoveMemberAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgRemoveMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRemoveMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgRemoveOutsideCollaboratorAuditEntry(subfields: (OrgRemoveOutsideCollaboratorAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgRemoveOutsideCollaboratorAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRemoveOutsideCollaboratorAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgRestoreMemberAuditEntry(subfields: (OrgRestoreMemberAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgRestoreMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRestoreMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgUnblockUserAuditEntry(subfields: (OrgUnblockUserAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgUnblockUserAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgUnblockUserAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgUpdateDefaultRepositoryPermissionAuditEntry(subfields: (OrgUpdateDefaultRepositoryPermissionAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgUpdateDefaultRepositoryPermissionAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgUpdateDefaultRepositoryPermissionAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgUpdateMemberAuditEntry(subfields: (OrgUpdateMemberAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgUpdateMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgUpdateMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgUpdateMemberRepositoryCreationPermissionAuditEntry(subfields: (OrgUpdateMemberRepositoryCreationPermissionAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgUpdateMemberRepositoryCreationPermissionAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgUpdateMemberRepositoryCreationPermissionAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgUpdateMemberRepositoryInvitationPermissionAuditEntry(subfields: (OrgUpdateMemberRepositoryInvitationPermissionAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = OrgUpdateMemberRepositoryInvitationPermissionAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgUpdateMemberRepositoryInvitationPermissionAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPrivateRepositoryForkingDisableAuditEntry(subfields: (PrivateRepositoryForkingDisableAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = PrivateRepositoryForkingDisableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "PrivateRepositoryForkingDisableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPrivateRepositoryForkingEnableAuditEntry(subfields: (PrivateRepositoryForkingEnableAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = PrivateRepositoryForkingEnableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "PrivateRepositoryForkingEnableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoAccessAuditEntry(subfields: (RepoAccessAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = RepoAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoAddMemberAuditEntry(subfields: (RepoAddMemberAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = RepoAddMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoAddMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoAddTopicAuditEntry(subfields: (RepoAddTopicAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = RepoAddTopicAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoAddTopicAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoArchivedAuditEntry(subfields: (RepoArchivedAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = RepoArchivedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoArchivedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoChangeMergeSettingAuditEntry(subfields: (RepoChangeMergeSettingAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = RepoChangeMergeSettingAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoChangeMergeSettingAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigDisableAnonymousGitAccessAuditEntry(subfields: (RepoConfigDisableAnonymousGitAccessAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = RepoConfigDisableAnonymousGitAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigDisableAnonymousGitAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigDisableCollaboratorsOnlyAuditEntry(subfields: (RepoConfigDisableCollaboratorsOnlyAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = RepoConfigDisableCollaboratorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigDisableCollaboratorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigDisableContributorsOnlyAuditEntry(subfields: (RepoConfigDisableContributorsOnlyAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = RepoConfigDisableContributorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigDisableContributorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigDisableSockpuppetDisallowedAuditEntry(subfields: (RepoConfigDisableSockpuppetDisallowedAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = RepoConfigDisableSockpuppetDisallowedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigDisableSockpuppetDisallowedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigEnableAnonymousGitAccessAuditEntry(subfields: (RepoConfigEnableAnonymousGitAccessAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = RepoConfigEnableAnonymousGitAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigEnableAnonymousGitAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigEnableCollaboratorsOnlyAuditEntry(subfields: (RepoConfigEnableCollaboratorsOnlyAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = RepoConfigEnableCollaboratorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigEnableCollaboratorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigEnableContributorsOnlyAuditEntry(subfields: (RepoConfigEnableContributorsOnlyAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = RepoConfigEnableContributorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigEnableContributorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigEnableSockpuppetDisallowedAuditEntry(subfields: (RepoConfigEnableSockpuppetDisallowedAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = RepoConfigEnableSockpuppetDisallowedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigEnableSockpuppetDisallowedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigLockAnonymousGitAccessAuditEntry(subfields: (RepoConfigLockAnonymousGitAccessAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = RepoConfigLockAnonymousGitAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigLockAnonymousGitAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigUnlockAnonymousGitAccessAuditEntry(subfields: (RepoConfigUnlockAnonymousGitAccessAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = RepoConfigUnlockAnonymousGitAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigUnlockAnonymousGitAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoCreateAuditEntry(subfields: (RepoCreateAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = RepoCreateAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoCreateAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoDestroyAuditEntry(subfields: (RepoDestroyAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = RepoDestroyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoDestroyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoRemoveMemberAuditEntry(subfields: (RepoRemoveMemberAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = RepoRemoveMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoRemoveMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoRemoveTopicAuditEntry(subfields: (RepoRemoveTopicAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = RepoRemoveTopicAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoRemoveTopicAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepositoryVisibilityChangeDisableAuditEntry(subfields: (RepositoryVisibilityChangeDisableAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = RepositoryVisibilityChangeDisableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepositoryVisibilityChangeDisableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepositoryVisibilityChangeEnableAuditEntry(subfields: (RepositoryVisibilityChangeEnableAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = RepositoryVisibilityChangeEnableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepositoryVisibilityChangeEnableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamAddMemberAuditEntry(subfields: (TeamAddMemberAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = TeamAddMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamAddMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamAddRepositoryAuditEntry(subfields: (TeamAddRepositoryAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = TeamAddRepositoryAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamAddRepositoryAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamChangeParentTeamAuditEntry(subfields: (TeamChangeParentTeamAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = TeamChangeParentTeamAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamChangeParentTeamAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamRemoveMemberAuditEntry(subfields: (TeamRemoveMemberAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = TeamRemoveMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamRemoveMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamRemoveRepositoryAuditEntry(subfields: (TeamRemoveRepositoryAuditEntryQuery) -> Void) -> OrganizationAuditEntryQuery {
			let subquery = TeamRemoveRepositoryAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamRemoveRepositoryAuditEntry", subfields: subquery)
			return self
		}
	}

	open class UnknownOrganizationAuditEntry: GraphQL.AbstractResponse, GraphQLObject, OrganizationAuditEntry {
		public typealias Query = OrganizationAuditEntryQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				default:
				throw SchemaViolationError(type: UnknownOrganizationAuditEntry.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> OrganizationAuditEntry {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownOrganizationAuditEntry.self, field: "__typename", value: fields["__typename"] ?? NSNull())
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
				return try UnknownOrganizationAuditEntry.init(fields: fields)
			}
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
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
			return []
		}

		open func responseObject() -> GraphQL.AbstractResponse {
			return self as GraphQL.AbstractResponse
		}
	}
}
