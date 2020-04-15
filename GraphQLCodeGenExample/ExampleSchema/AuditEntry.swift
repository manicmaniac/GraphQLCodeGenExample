// Generated from graphql_swift_gen gem
import Foundation

public protocol AuditEntry {
	var typeName: String { get }

	var action: String { get }

	var actor: AuditEntryActor? { get }

	var actorIp: String? { get }

	var actorLocation: ExampleSchema.ActorLocation? { get }

	var actorLogin: String? { get }

	var actorResourcePath: String? { get }

	var actorUrl: String? { get }

	var createdAt: String { get }

	var operationType: ExampleSchema.OperationType? { get }

	var user: ExampleSchema.User? { get }

	var userLogin: String? { get }

	var userResourcePath: String? { get }

	var userUrl: String? { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class AuditEntryQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = AuditEntry

		@discardableResult
		open func action(aliasSuffix: String? = nil) -> AuditEntryQuery {
			addField(field: "action", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (AuditEntryActorQuery) -> Void) -> AuditEntryQuery {
			let subquery = AuditEntryActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func actorIp(aliasSuffix: String? = nil) -> AuditEntryQuery {
			addField(field: "actorIp", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func actorLocation(aliasSuffix: String? = nil, _ subfields: (ActorLocationQuery) -> Void) -> AuditEntryQuery {
			let subquery = ActorLocationQuery()
			subfields(subquery)

			addField(field: "actorLocation", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func actorLogin(aliasSuffix: String? = nil) -> AuditEntryQuery {
			addField(field: "actorLogin", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func actorResourcePath(aliasSuffix: String? = nil) -> AuditEntryQuery {
			addField(field: "actorResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func actorUrl(aliasSuffix: String? = nil) -> AuditEntryQuery {
			addField(field: "actorUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> AuditEntryQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func operationType(aliasSuffix: String? = nil) -> AuditEntryQuery {
			addField(field: "operationType", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func user(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> AuditEntryQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func userLogin(aliasSuffix: String? = nil) -> AuditEntryQuery {
			addField(field: "userLogin", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func userResourcePath(aliasSuffix: String? = nil) -> AuditEntryQuery {
			addField(field: "userResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func userUrl(aliasSuffix: String? = nil) -> AuditEntryQuery {
			addField(field: "userUrl", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onMembersCanDeleteReposClearAuditEntry(subfields: (MembersCanDeleteReposClearAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = MembersCanDeleteReposClearAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "MembersCanDeleteReposClearAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMembersCanDeleteReposDisableAuditEntry(subfields: (MembersCanDeleteReposDisableAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = MembersCanDeleteReposDisableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "MembersCanDeleteReposDisableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMembersCanDeleteReposEnableAuditEntry(subfields: (MembersCanDeleteReposEnableAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = MembersCanDeleteReposEnableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "MembersCanDeleteReposEnableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOauthApplicationCreateAuditEntry(subfields: (OauthApplicationCreateAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OauthApplicationCreateAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OauthApplicationCreateAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgAddBillingManagerAuditEntry(subfields: (OrgAddBillingManagerAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgAddBillingManagerAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgAddBillingManagerAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgAddMemberAuditEntry(subfields: (OrgAddMemberAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgAddMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgAddMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgBlockUserAuditEntry(subfields: (OrgBlockUserAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgBlockUserAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgBlockUserAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgConfigDisableCollaboratorsOnlyAuditEntry(subfields: (OrgConfigDisableCollaboratorsOnlyAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgConfigDisableCollaboratorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgConfigDisableCollaboratorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgConfigEnableCollaboratorsOnlyAuditEntry(subfields: (OrgConfigEnableCollaboratorsOnlyAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgConfigEnableCollaboratorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgConfigEnableCollaboratorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgCreateAuditEntry(subfields: (OrgCreateAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgCreateAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgCreateAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgDisableOauthAppRestrictionsAuditEntry(subfields: (OrgDisableOauthAppRestrictionsAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgDisableOauthAppRestrictionsAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgDisableOauthAppRestrictionsAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgDisableSamlAuditEntry(subfields: (OrgDisableSamlAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgDisableSamlAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgDisableSamlAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgDisableTwoFactorRequirementAuditEntry(subfields: (OrgDisableTwoFactorRequirementAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgDisableTwoFactorRequirementAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgDisableTwoFactorRequirementAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgEnableOauthAppRestrictionsAuditEntry(subfields: (OrgEnableOauthAppRestrictionsAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgEnableOauthAppRestrictionsAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgEnableOauthAppRestrictionsAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgEnableSamlAuditEntry(subfields: (OrgEnableSamlAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgEnableSamlAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgEnableSamlAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgEnableTwoFactorRequirementAuditEntry(subfields: (OrgEnableTwoFactorRequirementAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgEnableTwoFactorRequirementAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgEnableTwoFactorRequirementAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgInviteMemberAuditEntry(subfields: (OrgInviteMemberAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgInviteMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgInviteMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgInviteToBusinessAuditEntry(subfields: (OrgInviteToBusinessAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgInviteToBusinessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgInviteToBusinessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgOauthAppAccessApprovedAuditEntry(subfields: (OrgOauthAppAccessApprovedAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgOauthAppAccessApprovedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgOauthAppAccessApprovedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgOauthAppAccessDeniedAuditEntry(subfields: (OrgOauthAppAccessDeniedAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgOauthAppAccessDeniedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgOauthAppAccessDeniedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgOauthAppAccessRequestedAuditEntry(subfields: (OrgOauthAppAccessRequestedAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgOauthAppAccessRequestedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgOauthAppAccessRequestedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgRemoveBillingManagerAuditEntry(subfields: (OrgRemoveBillingManagerAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgRemoveBillingManagerAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRemoveBillingManagerAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgRemoveMemberAuditEntry(subfields: (OrgRemoveMemberAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgRemoveMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRemoveMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgRemoveOutsideCollaboratorAuditEntry(subfields: (OrgRemoveOutsideCollaboratorAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgRemoveOutsideCollaboratorAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRemoveOutsideCollaboratorAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgRestoreMemberAuditEntry(subfields: (OrgRestoreMemberAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgRestoreMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRestoreMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgUnblockUserAuditEntry(subfields: (OrgUnblockUserAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgUnblockUserAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgUnblockUserAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgUpdateDefaultRepositoryPermissionAuditEntry(subfields: (OrgUpdateDefaultRepositoryPermissionAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgUpdateDefaultRepositoryPermissionAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgUpdateDefaultRepositoryPermissionAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgUpdateMemberAuditEntry(subfields: (OrgUpdateMemberAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgUpdateMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgUpdateMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgUpdateMemberRepositoryCreationPermissionAuditEntry(subfields: (OrgUpdateMemberRepositoryCreationPermissionAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgUpdateMemberRepositoryCreationPermissionAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgUpdateMemberRepositoryCreationPermissionAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgUpdateMemberRepositoryInvitationPermissionAuditEntry(subfields: (OrgUpdateMemberRepositoryInvitationPermissionAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = OrgUpdateMemberRepositoryInvitationPermissionAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgUpdateMemberRepositoryInvitationPermissionAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPrivateRepositoryForkingDisableAuditEntry(subfields: (PrivateRepositoryForkingDisableAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = PrivateRepositoryForkingDisableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "PrivateRepositoryForkingDisableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPrivateRepositoryForkingEnableAuditEntry(subfields: (PrivateRepositoryForkingEnableAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = PrivateRepositoryForkingEnableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "PrivateRepositoryForkingEnableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoAccessAuditEntry(subfields: (RepoAccessAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = RepoAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoAddMemberAuditEntry(subfields: (RepoAddMemberAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = RepoAddMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoAddMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoAddTopicAuditEntry(subfields: (RepoAddTopicAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = RepoAddTopicAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoAddTopicAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoArchivedAuditEntry(subfields: (RepoArchivedAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = RepoArchivedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoArchivedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoChangeMergeSettingAuditEntry(subfields: (RepoChangeMergeSettingAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = RepoChangeMergeSettingAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoChangeMergeSettingAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigDisableAnonymousGitAccessAuditEntry(subfields: (RepoConfigDisableAnonymousGitAccessAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = RepoConfigDisableAnonymousGitAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigDisableAnonymousGitAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigDisableCollaboratorsOnlyAuditEntry(subfields: (RepoConfigDisableCollaboratorsOnlyAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = RepoConfigDisableCollaboratorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigDisableCollaboratorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigDisableContributorsOnlyAuditEntry(subfields: (RepoConfigDisableContributorsOnlyAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = RepoConfigDisableContributorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigDisableContributorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigDisableSockpuppetDisallowedAuditEntry(subfields: (RepoConfigDisableSockpuppetDisallowedAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = RepoConfigDisableSockpuppetDisallowedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigDisableSockpuppetDisallowedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigEnableAnonymousGitAccessAuditEntry(subfields: (RepoConfigEnableAnonymousGitAccessAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = RepoConfigEnableAnonymousGitAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigEnableAnonymousGitAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigEnableCollaboratorsOnlyAuditEntry(subfields: (RepoConfigEnableCollaboratorsOnlyAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = RepoConfigEnableCollaboratorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigEnableCollaboratorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigEnableContributorsOnlyAuditEntry(subfields: (RepoConfigEnableContributorsOnlyAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = RepoConfigEnableContributorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigEnableContributorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigEnableSockpuppetDisallowedAuditEntry(subfields: (RepoConfigEnableSockpuppetDisallowedAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = RepoConfigEnableSockpuppetDisallowedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigEnableSockpuppetDisallowedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigLockAnonymousGitAccessAuditEntry(subfields: (RepoConfigLockAnonymousGitAccessAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = RepoConfigLockAnonymousGitAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigLockAnonymousGitAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigUnlockAnonymousGitAccessAuditEntry(subfields: (RepoConfigUnlockAnonymousGitAccessAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = RepoConfigUnlockAnonymousGitAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigUnlockAnonymousGitAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoCreateAuditEntry(subfields: (RepoCreateAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = RepoCreateAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoCreateAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoDestroyAuditEntry(subfields: (RepoDestroyAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = RepoDestroyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoDestroyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoRemoveMemberAuditEntry(subfields: (RepoRemoveMemberAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = RepoRemoveMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoRemoveMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoRemoveTopicAuditEntry(subfields: (RepoRemoveTopicAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = RepoRemoveTopicAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoRemoveTopicAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepositoryVisibilityChangeDisableAuditEntry(subfields: (RepositoryVisibilityChangeDisableAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = RepositoryVisibilityChangeDisableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepositoryVisibilityChangeDisableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepositoryVisibilityChangeEnableAuditEntry(subfields: (RepositoryVisibilityChangeEnableAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = RepositoryVisibilityChangeEnableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepositoryVisibilityChangeEnableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamAddMemberAuditEntry(subfields: (TeamAddMemberAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = TeamAddMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamAddMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamAddRepositoryAuditEntry(subfields: (TeamAddRepositoryAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = TeamAddRepositoryAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamAddRepositoryAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamChangeParentTeamAuditEntry(subfields: (TeamChangeParentTeamAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = TeamChangeParentTeamAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamChangeParentTeamAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamRemoveMemberAuditEntry(subfields: (TeamRemoveMemberAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = TeamRemoveMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamRemoveMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamRemoveRepositoryAuditEntry(subfields: (TeamRemoveRepositoryAuditEntryQuery) -> Void) -> AuditEntryQuery {
			let subquery = TeamRemoveRepositoryAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamRemoveRepositoryAuditEntry", subfields: subquery)
			return self
		}
	}

	open class UnknownAuditEntry: GraphQL.AbstractResponse, GraphQLObject, AuditEntry {
		public typealias Query = AuditEntryQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "action":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return try UnknownAuditEntryActor.create(fields: value)

				case "actorIp":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "actorLocation":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return try ActorLocation(fields: value)

				case "actorLogin":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "actorResourcePath":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "actorUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "operationType":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return OperationType(rawValue: value) ?? .unknownValue

				case "user":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				case "userLogin":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "userResourcePath":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "userUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownAuditEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownAuditEntry.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> AuditEntry {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownAuditEntry.self, field: "__typename", value: fields["__typename"] ?? NSNull())
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
				return try UnknownAuditEntry.init(fields: fields)
			}
		}

		open var action: String {
			return internalGetAction()
		}

		func internalGetAction(aliasSuffix: String? = nil) -> String {
			return field(field: "action", aliasSuffix: aliasSuffix) as! String
		}

		open var actor: AuditEntryActor? {
			return internalGetActor()
		}

		func internalGetActor(aliasSuffix: String? = nil) -> AuditEntryActor? {
			return field(field: "actor", aliasSuffix: aliasSuffix) as! AuditEntryActor?
		}

		open var actorIp: String? {
			return internalGetActorIp()
		}

		func internalGetActorIp(aliasSuffix: String? = nil) -> String? {
			return field(field: "actorIp", aliasSuffix: aliasSuffix) as! String?
		}

		open var actorLocation: ExampleSchema.ActorLocation? {
			return internalGetActorLocation()
		}

		func internalGetActorLocation(aliasSuffix: String? = nil) -> ExampleSchema.ActorLocation? {
			return field(field: "actorLocation", aliasSuffix: aliasSuffix) as! ExampleSchema.ActorLocation?
		}

		open var actorLogin: String? {
			return internalGetActorLogin()
		}

		func internalGetActorLogin(aliasSuffix: String? = nil) -> String? {
			return field(field: "actorLogin", aliasSuffix: aliasSuffix) as! String?
		}

		open var actorResourcePath: String? {
			return internalGetActorResourcePath()
		}

		func internalGetActorResourcePath(aliasSuffix: String? = nil) -> String? {
			return field(field: "actorResourcePath", aliasSuffix: aliasSuffix) as! String?
		}

		open var actorUrl: String? {
			return internalGetActorUrl()
		}

		func internalGetActorUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "actorUrl", aliasSuffix: aliasSuffix) as! String?
		}

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var operationType: ExampleSchema.OperationType? {
			return internalGetOperationType()
		}

		func internalGetOperationType(aliasSuffix: String? = nil) -> ExampleSchema.OperationType? {
			return field(field: "operationType", aliasSuffix: aliasSuffix) as! ExampleSchema.OperationType?
		}

		open var user: ExampleSchema.User? {
			return internalGetUser()
		}

		func internalGetUser(aliasSuffix: String? = nil) -> ExampleSchema.User? {
			return field(field: "user", aliasSuffix: aliasSuffix) as! ExampleSchema.User?
		}

		open var userLogin: String? {
			return internalGetUserLogin()
		}

		func internalGetUserLogin(aliasSuffix: String? = nil) -> String? {
			return field(field: "userLogin", aliasSuffix: aliasSuffix) as! String?
		}

		open var userResourcePath: String? {
			return internalGetUserResourcePath()
		}

		func internalGetUserResourcePath(aliasSuffix: String? = nil) -> String? {
			return field(field: "userResourcePath", aliasSuffix: aliasSuffix) as! String?
		}

		open var userUrl: String? {
			return internalGetUserUrl()
		}

		func internalGetUserUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "userUrl", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "action":

				return .scalar

				case "actor":

				return .scalar

				case "actorIp":

				return .scalar

				case "actorLocation":

				return .object

				case "actorLogin":

				return .scalar

				case "actorResourcePath":

				return .scalar

				case "actorUrl":

				return .scalar

				case "createdAt":

				return .scalar

				case "operationType":

				return .scalar

				case "user":

				return .object

				case "userLogin":

				return .scalar

				case "userResourcePath":

				return .scalar

				case "userUrl":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "actorLocation":
				return internalGetActorLocation()

				case "user":
				return internalGetUser()

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
					case "actor":
					if let value = internalGetActor() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "actorLocation":
					if let value = internalGetActorLocation() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "user":
					if let value = internalGetUser() {
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
