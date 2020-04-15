// Generated from graphql_swift_gen gem
import Foundation

public protocol Node {
	var typeName: String { get }

	var id: GraphQL.ID { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class NodeQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Node

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> NodeQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onAddedToProjectEvent(subfields: (AddedToProjectEventQuery) -> Void) -> NodeQuery {
			let subquery = AddedToProjectEventQuery()
			subfields(subquery)
			addInlineFragment(on: "AddedToProjectEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onApp(subfields: (AppQuery) -> Void) -> NodeQuery {
			let subquery = AppQuery()
			subfields(subquery)
			addInlineFragment(on: "App", subfields: subquery)
			return self
		}

		@discardableResult
		open func onAssignedEvent(subfields: (AssignedEventQuery) -> Void) -> NodeQuery {
			let subquery = AssignedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "AssignedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onBaseRefChangedEvent(subfields: (BaseRefChangedEventQuery) -> Void) -> NodeQuery {
			let subquery = BaseRefChangedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "BaseRefChangedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onBaseRefForcePushedEvent(subfields: (BaseRefForcePushedEventQuery) -> Void) -> NodeQuery {
			let subquery = BaseRefForcePushedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "BaseRefForcePushedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onBlob(subfields: (BlobQuery) -> Void) -> NodeQuery {
			let subquery = BlobQuery()
			subfields(subquery)
			addInlineFragment(on: "Blob", subfields: subquery)
			return self
		}

		@discardableResult
		open func onBot(subfields: (BotQuery) -> Void) -> NodeQuery {
			let subquery = BotQuery()
			subfields(subquery)
			addInlineFragment(on: "Bot", subfields: subquery)
			return self
		}

		@discardableResult
		open func onBranchProtectionRule(subfields: (BranchProtectionRuleQuery) -> Void) -> NodeQuery {
			let subquery = BranchProtectionRuleQuery()
			subfields(subquery)
			addInlineFragment(on: "BranchProtectionRule", subfields: subquery)
			return self
		}

		@discardableResult
		open func onClosedEvent(subfields: (ClosedEventQuery) -> Void) -> NodeQuery {
			let subquery = ClosedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ClosedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCodeOfConduct(subfields: (CodeOfConductQuery) -> Void) -> NodeQuery {
			let subquery = CodeOfConductQuery()
			subfields(subquery)
			addInlineFragment(on: "CodeOfConduct", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCommentDeletedEvent(subfields: (CommentDeletedEventQuery) -> Void) -> NodeQuery {
			let subquery = CommentDeletedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "CommentDeletedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCommit(subfields: (CommitQuery) -> Void) -> NodeQuery {
			let subquery = CommitQuery()
			subfields(subquery)
			addInlineFragment(on: "Commit", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCommitComment(subfields: (CommitCommentQuery) -> Void) -> NodeQuery {
			let subquery = CommitCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "CommitComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCommitCommentThread(subfields: (CommitCommentThreadQuery) -> Void) -> NodeQuery {
			let subquery = CommitCommentThreadQuery()
			subfields(subquery)
			addInlineFragment(on: "CommitCommentThread", subfields: subquery)
			return self
		}

		@discardableResult
		open func onConnectedEvent(subfields: (ConnectedEventQuery) -> Void) -> NodeQuery {
			let subquery = ConnectedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ConnectedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onConvertToDraftEvent(subfields: (ConvertToDraftEventQuery) -> Void) -> NodeQuery {
			let subquery = ConvertToDraftEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ConvertToDraftEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onConvertedNoteToIssueEvent(subfields: (ConvertedNoteToIssueEventQuery) -> Void) -> NodeQuery {
			let subquery = ConvertedNoteToIssueEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ConvertedNoteToIssueEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCrossReferencedEvent(subfields: (CrossReferencedEventQuery) -> Void) -> NodeQuery {
			let subquery = CrossReferencedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "CrossReferencedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onDemilestonedEvent(subfields: (DemilestonedEventQuery) -> Void) -> NodeQuery {
			let subquery = DemilestonedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "DemilestonedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onDeployKey(subfields: (DeployKeyQuery) -> Void) -> NodeQuery {
			let subquery = DeployKeyQuery()
			subfields(subquery)
			addInlineFragment(on: "DeployKey", subfields: subquery)
			return self
		}

		@discardableResult
		open func onDeployedEvent(subfields: (DeployedEventQuery) -> Void) -> NodeQuery {
			let subquery = DeployedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "DeployedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onDeployment(subfields: (DeploymentQuery) -> Void) -> NodeQuery {
			let subquery = DeploymentQuery()
			subfields(subquery)
			addInlineFragment(on: "Deployment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onDeploymentEnvironmentChangedEvent(subfields: (DeploymentEnvironmentChangedEventQuery) -> Void) -> NodeQuery {
			let subquery = DeploymentEnvironmentChangedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "DeploymentEnvironmentChangedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onDeploymentStatus(subfields: (DeploymentStatusQuery) -> Void) -> NodeQuery {
			let subquery = DeploymentStatusQuery()
			subfields(subquery)
			addInlineFragment(on: "DeploymentStatus", subfields: subquery)
			return self
		}

		@discardableResult
		open func onDisconnectedEvent(subfields: (DisconnectedEventQuery) -> Void) -> NodeQuery {
			let subquery = DisconnectedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "DisconnectedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onEnterprise(subfields: (EnterpriseQuery) -> Void) -> NodeQuery {
			let subquery = EnterpriseQuery()
			subfields(subquery)
			addInlineFragment(on: "Enterprise", subfields: subquery)
			return self
		}

		@discardableResult
		open func onEnterpriseAdministratorInvitation(subfields: (EnterpriseAdministratorInvitationQuery) -> Void) -> NodeQuery {
			let subquery = EnterpriseAdministratorInvitationQuery()
			subfields(subquery)
			addInlineFragment(on: "EnterpriseAdministratorInvitation", subfields: subquery)
			return self
		}

		@discardableResult
		open func onEnterpriseIdentityProvider(subfields: (EnterpriseIdentityProviderQuery) -> Void) -> NodeQuery {
			let subquery = EnterpriseIdentityProviderQuery()
			subfields(subquery)
			addInlineFragment(on: "EnterpriseIdentityProvider", subfields: subquery)
			return self
		}

		@discardableResult
		open func onEnterpriseRepositoryInfo(subfields: (EnterpriseRepositoryInfoQuery) -> Void) -> NodeQuery {
			let subquery = EnterpriseRepositoryInfoQuery()
			subfields(subquery)
			addInlineFragment(on: "EnterpriseRepositoryInfo", subfields: subquery)
			return self
		}

		@discardableResult
		open func onEnterpriseServerInstallation(subfields: (EnterpriseServerInstallationQuery) -> Void) -> NodeQuery {
			let subquery = EnterpriseServerInstallationQuery()
			subfields(subquery)
			addInlineFragment(on: "EnterpriseServerInstallation", subfields: subquery)
			return self
		}

		@discardableResult
		open func onEnterpriseServerUserAccount(subfields: (EnterpriseServerUserAccountQuery) -> Void) -> NodeQuery {
			let subquery = EnterpriseServerUserAccountQuery()
			subfields(subquery)
			addInlineFragment(on: "EnterpriseServerUserAccount", subfields: subquery)
			return self
		}

		@discardableResult
		open func onEnterpriseServerUserAccountEmail(subfields: (EnterpriseServerUserAccountEmailQuery) -> Void) -> NodeQuery {
			let subquery = EnterpriseServerUserAccountEmailQuery()
			subfields(subquery)
			addInlineFragment(on: "EnterpriseServerUserAccountEmail", subfields: subquery)
			return self
		}

		@discardableResult
		open func onEnterpriseServerUserAccountsUpload(subfields: (EnterpriseServerUserAccountsUploadQuery) -> Void) -> NodeQuery {
			let subquery = EnterpriseServerUserAccountsUploadQuery()
			subfields(subquery)
			addInlineFragment(on: "EnterpriseServerUserAccountsUpload", subfields: subquery)
			return self
		}

		@discardableResult
		open func onEnterpriseUserAccount(subfields: (EnterpriseUserAccountQuery) -> Void) -> NodeQuery {
			let subquery = EnterpriseUserAccountQuery()
			subfields(subquery)
			addInlineFragment(on: "EnterpriseUserAccount", subfields: subquery)
			return self
		}

		@discardableResult
		open func onExternalIdentity(subfields: (ExternalIdentityQuery) -> Void) -> NodeQuery {
			let subquery = ExternalIdentityQuery()
			subfields(subquery)
			addInlineFragment(on: "ExternalIdentity", subfields: subquery)
			return self
		}

		@discardableResult
		open func onGist(subfields: (GistQuery) -> Void) -> NodeQuery {
			let subquery = GistQuery()
			subfields(subquery)
			addInlineFragment(on: "Gist", subfields: subquery)
			return self
		}

		@discardableResult
		open func onGistComment(subfields: (GistCommentQuery) -> Void) -> NodeQuery {
			let subquery = GistCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "GistComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onHeadRefDeletedEvent(subfields: (HeadRefDeletedEventQuery) -> Void) -> NodeQuery {
			let subquery = HeadRefDeletedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "HeadRefDeletedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onHeadRefForcePushedEvent(subfields: (HeadRefForcePushedEventQuery) -> Void) -> NodeQuery {
			let subquery = HeadRefForcePushedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "HeadRefForcePushedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onHeadRefRestoredEvent(subfields: (HeadRefRestoredEventQuery) -> Void) -> NodeQuery {
			let subquery = HeadRefRestoredEventQuery()
			subfields(subquery)
			addInlineFragment(on: "HeadRefRestoredEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onIpAllowListEntry(subfields: (IpAllowListEntryQuery) -> Void) -> NodeQuery {
			let subquery = IpAllowListEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "IpAllowListEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onIssue(subfields: (IssueQuery) -> Void) -> NodeQuery {
			let subquery = IssueQuery()
			subfields(subquery)
			addInlineFragment(on: "Issue", subfields: subquery)
			return self
		}

		@discardableResult
		open func onIssueComment(subfields: (IssueCommentQuery) -> Void) -> NodeQuery {
			let subquery = IssueCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "IssueComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onLabel(subfields: (LabelQuery) -> Void) -> NodeQuery {
			let subquery = LabelQuery()
			subfields(subquery)
			addInlineFragment(on: "Label", subfields: subquery)
			return self
		}

		@discardableResult
		open func onLabeledEvent(subfields: (LabeledEventQuery) -> Void) -> NodeQuery {
			let subquery = LabeledEventQuery()
			subfields(subquery)
			addInlineFragment(on: "LabeledEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onLanguage(subfields: (LanguageQuery) -> Void) -> NodeQuery {
			let subquery = LanguageQuery()
			subfields(subquery)
			addInlineFragment(on: "Language", subfields: subquery)
			return self
		}

		@discardableResult
		open func onLicense(subfields: (LicenseQuery) -> Void) -> NodeQuery {
			let subquery = LicenseQuery()
			subfields(subquery)
			addInlineFragment(on: "License", subfields: subquery)
			return self
		}

		@discardableResult
		open func onLockedEvent(subfields: (LockedEventQuery) -> Void) -> NodeQuery {
			let subquery = LockedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "LockedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMannequin(subfields: (MannequinQuery) -> Void) -> NodeQuery {
			let subquery = MannequinQuery()
			subfields(subquery)
			addInlineFragment(on: "Mannequin", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMarkedAsDuplicateEvent(subfields: (MarkedAsDuplicateEventQuery) -> Void) -> NodeQuery {
			let subquery = MarkedAsDuplicateEventQuery()
			subfields(subquery)
			addInlineFragment(on: "MarkedAsDuplicateEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMarketplaceCategory(subfields: (MarketplaceCategoryQuery) -> Void) -> NodeQuery {
			let subquery = MarketplaceCategoryQuery()
			subfields(subquery)
			addInlineFragment(on: "MarketplaceCategory", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMarketplaceListing(subfields: (MarketplaceListingQuery) -> Void) -> NodeQuery {
			let subquery = MarketplaceListingQuery()
			subfields(subquery)
			addInlineFragment(on: "MarketplaceListing", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMembersCanDeleteReposClearAuditEntry(subfields: (MembersCanDeleteReposClearAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = MembersCanDeleteReposClearAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "MembersCanDeleteReposClearAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMembersCanDeleteReposDisableAuditEntry(subfields: (MembersCanDeleteReposDisableAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = MembersCanDeleteReposDisableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "MembersCanDeleteReposDisableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMembersCanDeleteReposEnableAuditEntry(subfields: (MembersCanDeleteReposEnableAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = MembersCanDeleteReposEnableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "MembersCanDeleteReposEnableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMentionedEvent(subfields: (MentionedEventQuery) -> Void) -> NodeQuery {
			let subquery = MentionedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "MentionedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMergedEvent(subfields: (MergedEventQuery) -> Void) -> NodeQuery {
			let subquery = MergedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "MergedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMilestone(subfields: (MilestoneQuery) -> Void) -> NodeQuery {
			let subquery = MilestoneQuery()
			subfields(subquery)
			addInlineFragment(on: "Milestone", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMilestonedEvent(subfields: (MilestonedEventQuery) -> Void) -> NodeQuery {
			let subquery = MilestonedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "MilestonedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMovedColumnsInProjectEvent(subfields: (MovedColumnsInProjectEventQuery) -> Void) -> NodeQuery {
			let subquery = MovedColumnsInProjectEventQuery()
			subfields(subquery)
			addInlineFragment(on: "MovedColumnsInProjectEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOauthApplicationCreateAuditEntry(subfields: (OauthApplicationCreateAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OauthApplicationCreateAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OauthApplicationCreateAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgAddBillingManagerAuditEntry(subfields: (OrgAddBillingManagerAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgAddBillingManagerAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgAddBillingManagerAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgAddMemberAuditEntry(subfields: (OrgAddMemberAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgAddMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgAddMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgBlockUserAuditEntry(subfields: (OrgBlockUserAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgBlockUserAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgBlockUserAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgConfigDisableCollaboratorsOnlyAuditEntry(subfields: (OrgConfigDisableCollaboratorsOnlyAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgConfigDisableCollaboratorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgConfigDisableCollaboratorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgConfigEnableCollaboratorsOnlyAuditEntry(subfields: (OrgConfigEnableCollaboratorsOnlyAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgConfigEnableCollaboratorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgConfigEnableCollaboratorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgCreateAuditEntry(subfields: (OrgCreateAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgCreateAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgCreateAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgDisableOauthAppRestrictionsAuditEntry(subfields: (OrgDisableOauthAppRestrictionsAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgDisableOauthAppRestrictionsAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgDisableOauthAppRestrictionsAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgDisableSamlAuditEntry(subfields: (OrgDisableSamlAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgDisableSamlAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgDisableSamlAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgDisableTwoFactorRequirementAuditEntry(subfields: (OrgDisableTwoFactorRequirementAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgDisableTwoFactorRequirementAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgDisableTwoFactorRequirementAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgEnableOauthAppRestrictionsAuditEntry(subfields: (OrgEnableOauthAppRestrictionsAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgEnableOauthAppRestrictionsAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgEnableOauthAppRestrictionsAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgEnableSamlAuditEntry(subfields: (OrgEnableSamlAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgEnableSamlAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgEnableSamlAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgEnableTwoFactorRequirementAuditEntry(subfields: (OrgEnableTwoFactorRequirementAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgEnableTwoFactorRequirementAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgEnableTwoFactorRequirementAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgInviteMemberAuditEntry(subfields: (OrgInviteMemberAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgInviteMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgInviteMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgInviteToBusinessAuditEntry(subfields: (OrgInviteToBusinessAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgInviteToBusinessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgInviteToBusinessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgOauthAppAccessApprovedAuditEntry(subfields: (OrgOauthAppAccessApprovedAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgOauthAppAccessApprovedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgOauthAppAccessApprovedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgOauthAppAccessDeniedAuditEntry(subfields: (OrgOauthAppAccessDeniedAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgOauthAppAccessDeniedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgOauthAppAccessDeniedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgOauthAppAccessRequestedAuditEntry(subfields: (OrgOauthAppAccessRequestedAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgOauthAppAccessRequestedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgOauthAppAccessRequestedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgRemoveBillingManagerAuditEntry(subfields: (OrgRemoveBillingManagerAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgRemoveBillingManagerAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRemoveBillingManagerAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgRemoveMemberAuditEntry(subfields: (OrgRemoveMemberAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgRemoveMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRemoveMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgRemoveOutsideCollaboratorAuditEntry(subfields: (OrgRemoveOutsideCollaboratorAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgRemoveOutsideCollaboratorAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRemoveOutsideCollaboratorAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgRestoreMemberAuditEntry(subfields: (OrgRestoreMemberAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgRestoreMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRestoreMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgUnblockUserAuditEntry(subfields: (OrgUnblockUserAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgUnblockUserAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgUnblockUserAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgUpdateDefaultRepositoryPermissionAuditEntry(subfields: (OrgUpdateDefaultRepositoryPermissionAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgUpdateDefaultRepositoryPermissionAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgUpdateDefaultRepositoryPermissionAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgUpdateMemberAuditEntry(subfields: (OrgUpdateMemberAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgUpdateMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgUpdateMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgUpdateMemberRepositoryCreationPermissionAuditEntry(subfields: (OrgUpdateMemberRepositoryCreationPermissionAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgUpdateMemberRepositoryCreationPermissionAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgUpdateMemberRepositoryCreationPermissionAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrgUpdateMemberRepositoryInvitationPermissionAuditEntry(subfields: (OrgUpdateMemberRepositoryInvitationPermissionAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = OrgUpdateMemberRepositoryInvitationPermissionAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgUpdateMemberRepositoryInvitationPermissionAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrganization(subfields: (OrganizationQuery) -> Void) -> NodeQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)
			addInlineFragment(on: "Organization", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrganizationIdentityProvider(subfields: (OrganizationIdentityProviderQuery) -> Void) -> NodeQuery {
			let subquery = OrganizationIdentityProviderQuery()
			subfields(subquery)
			addInlineFragment(on: "OrganizationIdentityProvider", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrganizationInvitation(subfields: (OrganizationInvitationQuery) -> Void) -> NodeQuery {
			let subquery = OrganizationInvitationQuery()
			subfields(subquery)
			addInlineFragment(on: "OrganizationInvitation", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPinnedEvent(subfields: (PinnedEventQuery) -> Void) -> NodeQuery {
			let subquery = PinnedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "PinnedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPrivateRepositoryForkingDisableAuditEntry(subfields: (PrivateRepositoryForkingDisableAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = PrivateRepositoryForkingDisableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "PrivateRepositoryForkingDisableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPrivateRepositoryForkingEnableAuditEntry(subfields: (PrivateRepositoryForkingEnableAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = PrivateRepositoryForkingEnableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "PrivateRepositoryForkingEnableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onProject(subfields: (ProjectQuery) -> Void) -> NodeQuery {
			let subquery = ProjectQuery()
			subfields(subquery)
			addInlineFragment(on: "Project", subfields: subquery)
			return self
		}

		@discardableResult
		open func onProjectCard(subfields: (ProjectCardQuery) -> Void) -> NodeQuery {
			let subquery = ProjectCardQuery()
			subfields(subquery)
			addInlineFragment(on: "ProjectCard", subfields: subquery)
			return self
		}

		@discardableResult
		open func onProjectColumn(subfields: (ProjectColumnQuery) -> Void) -> NodeQuery {
			let subquery = ProjectColumnQuery()
			subfields(subquery)
			addInlineFragment(on: "ProjectColumn", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPublicKey(subfields: (PublicKeyQuery) -> Void) -> NodeQuery {
			let subquery = PublicKeyQuery()
			subfields(subquery)
			addInlineFragment(on: "PublicKey", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequest(subfields: (PullRequestQuery) -> Void) -> NodeQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequest", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestCommit(subfields: (PullRequestCommitQuery) -> Void) -> NodeQuery {
			let subquery = PullRequestCommitQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestCommit", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestCommitCommentThread(subfields: (PullRequestCommitCommentThreadQuery) -> Void) -> NodeQuery {
			let subquery = PullRequestCommitCommentThreadQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestCommitCommentThread", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestReview(subfields: (PullRequestReviewQuery) -> Void) -> NodeQuery {
			let subquery = PullRequestReviewQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestReview", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestReviewComment(subfields: (PullRequestReviewCommentQuery) -> Void) -> NodeQuery {
			let subquery = PullRequestReviewCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestReviewComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestReviewThread(subfields: (PullRequestReviewThreadQuery) -> Void) -> NodeQuery {
			let subquery = PullRequestReviewThreadQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestReviewThread", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPushAllowance(subfields: (PushAllowanceQuery) -> Void) -> NodeQuery {
			let subquery = PushAllowanceQuery()
			subfields(subquery)
			addInlineFragment(on: "PushAllowance", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReaction(subfields: (ReactionQuery) -> Void) -> NodeQuery {
			let subquery = ReactionQuery()
			subfields(subquery)
			addInlineFragment(on: "Reaction", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReadyForReviewEvent(subfields: (ReadyForReviewEventQuery) -> Void) -> NodeQuery {
			let subquery = ReadyForReviewEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReadyForReviewEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRef(subfields: (RefQuery) -> Void) -> NodeQuery {
			let subquery = RefQuery()
			subfields(subquery)
			addInlineFragment(on: "Ref", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReferencedEvent(subfields: (ReferencedEventQuery) -> Void) -> NodeQuery {
			let subquery = ReferencedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReferencedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRegistryPackage(subfields: (RegistryPackageQuery) -> Void) -> NodeQuery {
			let subquery = RegistryPackageQuery()
			subfields(subquery)
			addInlineFragment(on: "RegistryPackage", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRegistryPackageDependency(subfields: (RegistryPackageDependencyQuery) -> Void) -> NodeQuery {
			let subquery = RegistryPackageDependencyQuery()
			subfields(subquery)
			addInlineFragment(on: "RegistryPackageDependency", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRegistryPackageFile(subfields: (RegistryPackageFileQuery) -> Void) -> NodeQuery {
			let subquery = RegistryPackageFileQuery()
			subfields(subquery)
			addInlineFragment(on: "RegistryPackageFile", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRegistryPackageTag(subfields: (RegistryPackageTagQuery) -> Void) -> NodeQuery {
			let subquery = RegistryPackageTagQuery()
			subfields(subquery)
			addInlineFragment(on: "RegistryPackageTag", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRegistryPackageVersion(subfields: (RegistryPackageVersionQuery) -> Void) -> NodeQuery {
			let subquery = RegistryPackageVersionQuery()
			subfields(subquery)
			addInlineFragment(on: "RegistryPackageVersion", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRelease(subfields: (ReleaseQuery) -> Void) -> NodeQuery {
			let subquery = ReleaseQuery()
			subfields(subquery)
			addInlineFragment(on: "Release", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReleaseAsset(subfields: (ReleaseAssetQuery) -> Void) -> NodeQuery {
			let subquery = ReleaseAssetQuery()
			subfields(subquery)
			addInlineFragment(on: "ReleaseAsset", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRemovedFromProjectEvent(subfields: (RemovedFromProjectEventQuery) -> Void) -> NodeQuery {
			let subquery = RemovedFromProjectEventQuery()
			subfields(subquery)
			addInlineFragment(on: "RemovedFromProjectEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRenamedTitleEvent(subfields: (RenamedTitleEventQuery) -> Void) -> NodeQuery {
			let subquery = RenamedTitleEventQuery()
			subfields(subquery)
			addInlineFragment(on: "RenamedTitleEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReopenedEvent(subfields: (ReopenedEventQuery) -> Void) -> NodeQuery {
			let subquery = ReopenedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReopenedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoAccessAuditEntry(subfields: (RepoAccessAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = RepoAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoAddMemberAuditEntry(subfields: (RepoAddMemberAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = RepoAddMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoAddMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoAddTopicAuditEntry(subfields: (RepoAddTopicAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = RepoAddTopicAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoAddTopicAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoArchivedAuditEntry(subfields: (RepoArchivedAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = RepoArchivedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoArchivedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoChangeMergeSettingAuditEntry(subfields: (RepoChangeMergeSettingAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = RepoChangeMergeSettingAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoChangeMergeSettingAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigDisableAnonymousGitAccessAuditEntry(subfields: (RepoConfigDisableAnonymousGitAccessAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = RepoConfigDisableAnonymousGitAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigDisableAnonymousGitAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigDisableCollaboratorsOnlyAuditEntry(subfields: (RepoConfigDisableCollaboratorsOnlyAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = RepoConfigDisableCollaboratorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigDisableCollaboratorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigDisableContributorsOnlyAuditEntry(subfields: (RepoConfigDisableContributorsOnlyAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = RepoConfigDisableContributorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigDisableContributorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigDisableSockpuppetDisallowedAuditEntry(subfields: (RepoConfigDisableSockpuppetDisallowedAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = RepoConfigDisableSockpuppetDisallowedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigDisableSockpuppetDisallowedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigEnableAnonymousGitAccessAuditEntry(subfields: (RepoConfigEnableAnonymousGitAccessAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = RepoConfigEnableAnonymousGitAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigEnableAnonymousGitAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigEnableCollaboratorsOnlyAuditEntry(subfields: (RepoConfigEnableCollaboratorsOnlyAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = RepoConfigEnableCollaboratorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigEnableCollaboratorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigEnableContributorsOnlyAuditEntry(subfields: (RepoConfigEnableContributorsOnlyAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = RepoConfigEnableContributorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigEnableContributorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigEnableSockpuppetDisallowedAuditEntry(subfields: (RepoConfigEnableSockpuppetDisallowedAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = RepoConfigEnableSockpuppetDisallowedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigEnableSockpuppetDisallowedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigLockAnonymousGitAccessAuditEntry(subfields: (RepoConfigLockAnonymousGitAccessAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = RepoConfigLockAnonymousGitAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigLockAnonymousGitAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigUnlockAnonymousGitAccessAuditEntry(subfields: (RepoConfigUnlockAnonymousGitAccessAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = RepoConfigUnlockAnonymousGitAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigUnlockAnonymousGitAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoCreateAuditEntry(subfields: (RepoCreateAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = RepoCreateAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoCreateAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoDestroyAuditEntry(subfields: (RepoDestroyAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = RepoDestroyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoDestroyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoRemoveMemberAuditEntry(subfields: (RepoRemoveMemberAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = RepoRemoveMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoRemoveMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoRemoveTopicAuditEntry(subfields: (RepoRemoveTopicAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = RepoRemoveTopicAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoRemoveTopicAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepository(subfields: (RepositoryQuery) -> Void) -> NodeQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)
			addInlineFragment(on: "Repository", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepositoryInvitation(subfields: (RepositoryInvitationQuery) -> Void) -> NodeQuery {
			let subquery = RepositoryInvitationQuery()
			subfields(subquery)
			addInlineFragment(on: "RepositoryInvitation", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepositoryTopic(subfields: (RepositoryTopicQuery) -> Void) -> NodeQuery {
			let subquery = RepositoryTopicQuery()
			subfields(subquery)
			addInlineFragment(on: "RepositoryTopic", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepositoryVisibilityChangeDisableAuditEntry(subfields: (RepositoryVisibilityChangeDisableAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = RepositoryVisibilityChangeDisableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepositoryVisibilityChangeDisableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepositoryVisibilityChangeEnableAuditEntry(subfields: (RepositoryVisibilityChangeEnableAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = RepositoryVisibilityChangeEnableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepositoryVisibilityChangeEnableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepositoryVulnerabilityAlert(subfields: (RepositoryVulnerabilityAlertQuery) -> Void) -> NodeQuery {
			let subquery = RepositoryVulnerabilityAlertQuery()
			subfields(subquery)
			addInlineFragment(on: "RepositoryVulnerabilityAlert", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReviewDismissalAllowance(subfields: (ReviewDismissalAllowanceQuery) -> Void) -> NodeQuery {
			let subquery = ReviewDismissalAllowanceQuery()
			subfields(subquery)
			addInlineFragment(on: "ReviewDismissalAllowance", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReviewDismissedEvent(subfields: (ReviewDismissedEventQuery) -> Void) -> NodeQuery {
			let subquery = ReviewDismissedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReviewDismissedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReviewRequest(subfields: (ReviewRequestQuery) -> Void) -> NodeQuery {
			let subquery = ReviewRequestQuery()
			subfields(subquery)
			addInlineFragment(on: "ReviewRequest", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReviewRequestRemovedEvent(subfields: (ReviewRequestRemovedEventQuery) -> Void) -> NodeQuery {
			let subquery = ReviewRequestRemovedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReviewRequestRemovedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReviewRequestedEvent(subfields: (ReviewRequestedEventQuery) -> Void) -> NodeQuery {
			let subquery = ReviewRequestedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReviewRequestedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSavedReply(subfields: (SavedReplyQuery) -> Void) -> NodeQuery {
			let subquery = SavedReplyQuery()
			subfields(subquery)
			addInlineFragment(on: "SavedReply", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSecurityAdvisory(subfields: (SecurityAdvisoryQuery) -> Void) -> NodeQuery {
			let subquery = SecurityAdvisoryQuery()
			subfields(subquery)
			addInlineFragment(on: "SecurityAdvisory", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSponsorsListing(subfields: (SponsorsListingQuery) -> Void) -> NodeQuery {
			let subquery = SponsorsListingQuery()
			subfields(subquery)
			addInlineFragment(on: "SponsorsListing", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSponsorsTier(subfields: (SponsorsTierQuery) -> Void) -> NodeQuery {
			let subquery = SponsorsTierQuery()
			subfields(subquery)
			addInlineFragment(on: "SponsorsTier", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSponsorship(subfields: (SponsorshipQuery) -> Void) -> NodeQuery {
			let subquery = SponsorshipQuery()
			subfields(subquery)
			addInlineFragment(on: "Sponsorship", subfields: subquery)
			return self
		}

		@discardableResult
		open func onStatus(subfields: (StatusQuery) -> Void) -> NodeQuery {
			let subquery = StatusQuery()
			subfields(subquery)
			addInlineFragment(on: "Status", subfields: subquery)
			return self
		}

		@discardableResult
		open func onStatusCheckRollup(subfields: (StatusCheckRollupQuery) -> Void) -> NodeQuery {
			let subquery = StatusCheckRollupQuery()
			subfields(subquery)
			addInlineFragment(on: "StatusCheckRollup", subfields: subquery)
			return self
		}

		@discardableResult
		open func onStatusContext(subfields: (StatusContextQuery) -> Void) -> NodeQuery {
			let subquery = StatusContextQuery()
			subfields(subquery)
			addInlineFragment(on: "StatusContext", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSubscribedEvent(subfields: (SubscribedEventQuery) -> Void) -> NodeQuery {
			let subquery = SubscribedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "SubscribedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTag(subfields: (TagQuery) -> Void) -> NodeQuery {
			let subquery = TagQuery()
			subfields(subquery)
			addInlineFragment(on: "Tag", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeam(subfields: (TeamQuery) -> Void) -> NodeQuery {
			let subquery = TeamQuery()
			subfields(subquery)
			addInlineFragment(on: "Team", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamAddMemberAuditEntry(subfields: (TeamAddMemberAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = TeamAddMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamAddMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamAddRepositoryAuditEntry(subfields: (TeamAddRepositoryAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = TeamAddRepositoryAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamAddRepositoryAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamChangeParentTeamAuditEntry(subfields: (TeamChangeParentTeamAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = TeamChangeParentTeamAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamChangeParentTeamAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamDiscussion(subfields: (TeamDiscussionQuery) -> Void) -> NodeQuery {
			let subquery = TeamDiscussionQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamDiscussion", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamDiscussionComment(subfields: (TeamDiscussionCommentQuery) -> Void) -> NodeQuery {
			let subquery = TeamDiscussionCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamDiscussionComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamRemoveMemberAuditEntry(subfields: (TeamRemoveMemberAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = TeamRemoveMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamRemoveMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamRemoveRepositoryAuditEntry(subfields: (TeamRemoveRepositoryAuditEntryQuery) -> Void) -> NodeQuery {
			let subquery = TeamRemoveRepositoryAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamRemoveRepositoryAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTopic(subfields: (TopicQuery) -> Void) -> NodeQuery {
			let subquery = TopicQuery()
			subfields(subquery)
			addInlineFragment(on: "Topic", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTransferredEvent(subfields: (TransferredEventQuery) -> Void) -> NodeQuery {
			let subquery = TransferredEventQuery()
			subfields(subquery)
			addInlineFragment(on: "TransferredEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTree(subfields: (TreeQuery) -> Void) -> NodeQuery {
			let subquery = TreeQuery()
			subfields(subquery)
			addInlineFragment(on: "Tree", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnassignedEvent(subfields: (UnassignedEventQuery) -> Void) -> NodeQuery {
			let subquery = UnassignedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnassignedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnlabeledEvent(subfields: (UnlabeledEventQuery) -> Void) -> NodeQuery {
			let subquery = UnlabeledEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnlabeledEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnlockedEvent(subfields: (UnlockedEventQuery) -> Void) -> NodeQuery {
			let subquery = UnlockedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnlockedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnmarkedAsDuplicateEvent(subfields: (UnmarkedAsDuplicateEventQuery) -> Void) -> NodeQuery {
			let subquery = UnmarkedAsDuplicateEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnmarkedAsDuplicateEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnpinnedEvent(subfields: (UnpinnedEventQuery) -> Void) -> NodeQuery {
			let subquery = UnpinnedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnpinnedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnsubscribedEvent(subfields: (UnsubscribedEventQuery) -> Void) -> NodeQuery {
			let subquery = UnsubscribedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnsubscribedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUser(subfields: (UserQuery) -> Void) -> NodeQuery {
			let subquery = UserQuery()
			subfields(subquery)
			addInlineFragment(on: "User", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUserBlockedEvent(subfields: (UserBlockedEventQuery) -> Void) -> NodeQuery {
			let subquery = UserBlockedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UserBlockedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUserContentEdit(subfields: (UserContentEditQuery) -> Void) -> NodeQuery {
			let subquery = UserContentEditQuery()
			subfields(subquery)
			addInlineFragment(on: "UserContentEdit", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUserStatus(subfields: (UserStatusQuery) -> Void) -> NodeQuery {
			let subquery = UserStatusQuery()
			subfields(subquery)
			addInlineFragment(on: "UserStatus", subfields: subquery)
			return self
		}
	}

	open class UnknownNode: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = NodeQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownNode.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				default:
				throw SchemaViolationError(type: UnknownNode.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> Node {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownNode.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "AddedToProjectEvent":
				return try AddedToProjectEvent.init(fields: fields)

				case "App":
				return try App.init(fields: fields)

				case "AssignedEvent":
				return try AssignedEvent.init(fields: fields)

				case "BaseRefChangedEvent":
				return try BaseRefChangedEvent.init(fields: fields)

				case "BaseRefForcePushedEvent":
				return try BaseRefForcePushedEvent.init(fields: fields)

				case "Blob":
				return try Blob.init(fields: fields)

				case "Bot":
				return try Bot.init(fields: fields)

				case "BranchProtectionRule":
				return try BranchProtectionRule.init(fields: fields)

				case "ClosedEvent":
				return try ClosedEvent.init(fields: fields)

				case "CodeOfConduct":
				return try CodeOfConduct.init(fields: fields)

				case "CommentDeletedEvent":
				return try CommentDeletedEvent.init(fields: fields)

				case "Commit":
				return try Commit.init(fields: fields)

				case "CommitComment":
				return try CommitComment.init(fields: fields)

				case "CommitCommentThread":
				return try CommitCommentThread.init(fields: fields)

				case "ConnectedEvent":
				return try ConnectedEvent.init(fields: fields)

				case "ConvertToDraftEvent":
				return try ConvertToDraftEvent.init(fields: fields)

				case "ConvertedNoteToIssueEvent":
				return try ConvertedNoteToIssueEvent.init(fields: fields)

				case "CrossReferencedEvent":
				return try CrossReferencedEvent.init(fields: fields)

				case "DemilestonedEvent":
				return try DemilestonedEvent.init(fields: fields)

				case "DeployKey":
				return try DeployKey.init(fields: fields)

				case "DeployedEvent":
				return try DeployedEvent.init(fields: fields)

				case "Deployment":
				return try Deployment.init(fields: fields)

				case "DeploymentEnvironmentChangedEvent":
				return try DeploymentEnvironmentChangedEvent.init(fields: fields)

				case "DeploymentStatus":
				return try DeploymentStatus.init(fields: fields)

				case "DisconnectedEvent":
				return try DisconnectedEvent.init(fields: fields)

				case "Enterprise":
				return try Enterprise.init(fields: fields)

				case "EnterpriseAdministratorInvitation":
				return try EnterpriseAdministratorInvitation.init(fields: fields)

				case "EnterpriseIdentityProvider":
				return try EnterpriseIdentityProvider.init(fields: fields)

				case "EnterpriseRepositoryInfo":
				return try EnterpriseRepositoryInfo.init(fields: fields)

				case "EnterpriseServerInstallation":
				return try EnterpriseServerInstallation.init(fields: fields)

				case "EnterpriseServerUserAccount":
				return try EnterpriseServerUserAccount.init(fields: fields)

				case "EnterpriseServerUserAccountEmail":
				return try EnterpriseServerUserAccountEmail.init(fields: fields)

				case "EnterpriseServerUserAccountsUpload":
				return try EnterpriseServerUserAccountsUpload.init(fields: fields)

				case "EnterpriseUserAccount":
				return try EnterpriseUserAccount.init(fields: fields)

				case "ExternalIdentity":
				return try ExternalIdentity.init(fields: fields)

				case "Gist":
				return try Gist.init(fields: fields)

				case "GistComment":
				return try GistComment.init(fields: fields)

				case "HeadRefDeletedEvent":
				return try HeadRefDeletedEvent.init(fields: fields)

				case "HeadRefForcePushedEvent":
				return try HeadRefForcePushedEvent.init(fields: fields)

				case "HeadRefRestoredEvent":
				return try HeadRefRestoredEvent.init(fields: fields)

				case "IpAllowListEntry":
				return try IpAllowListEntry.init(fields: fields)

				case "Issue":
				return try Issue.init(fields: fields)

				case "IssueComment":
				return try IssueComment.init(fields: fields)

				case "Label":
				return try Label.init(fields: fields)

				case "LabeledEvent":
				return try LabeledEvent.init(fields: fields)

				case "Language":
				return try Language.init(fields: fields)

				case "License":
				return try License.init(fields: fields)

				case "LockedEvent":
				return try LockedEvent.init(fields: fields)

				case "Mannequin":
				return try Mannequin.init(fields: fields)

				case "MarkedAsDuplicateEvent":
				return try MarkedAsDuplicateEvent.init(fields: fields)

				case "MarketplaceCategory":
				return try MarketplaceCategory.init(fields: fields)

				case "MarketplaceListing":
				return try MarketplaceListing.init(fields: fields)

				case "MembersCanDeleteReposClearAuditEntry":
				return try MembersCanDeleteReposClearAuditEntry.init(fields: fields)

				case "MembersCanDeleteReposDisableAuditEntry":
				return try MembersCanDeleteReposDisableAuditEntry.init(fields: fields)

				case "MembersCanDeleteReposEnableAuditEntry":
				return try MembersCanDeleteReposEnableAuditEntry.init(fields: fields)

				case "MentionedEvent":
				return try MentionedEvent.init(fields: fields)

				case "MergedEvent":
				return try MergedEvent.init(fields: fields)

				case "Milestone":
				return try Milestone.init(fields: fields)

				case "MilestonedEvent":
				return try MilestonedEvent.init(fields: fields)

				case "MovedColumnsInProjectEvent":
				return try MovedColumnsInProjectEvent.init(fields: fields)

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

				case "Organization":
				return try Organization.init(fields: fields)

				case "OrganizationIdentityProvider":
				return try OrganizationIdentityProvider.init(fields: fields)

				case "OrganizationInvitation":
				return try OrganizationInvitation.init(fields: fields)

				case "PinnedEvent":
				return try PinnedEvent.init(fields: fields)

				case "PrivateRepositoryForkingDisableAuditEntry":
				return try PrivateRepositoryForkingDisableAuditEntry.init(fields: fields)

				case "PrivateRepositoryForkingEnableAuditEntry":
				return try PrivateRepositoryForkingEnableAuditEntry.init(fields: fields)

				case "Project":
				return try Project.init(fields: fields)

				case "ProjectCard":
				return try ProjectCard.init(fields: fields)

				case "ProjectColumn":
				return try ProjectColumn.init(fields: fields)

				case "PublicKey":
				return try PublicKey.init(fields: fields)

				case "PullRequest":
				return try PullRequest.init(fields: fields)

				case "PullRequestCommit":
				return try PullRequestCommit.init(fields: fields)

				case "PullRequestCommitCommentThread":
				return try PullRequestCommitCommentThread.init(fields: fields)

				case "PullRequestReview":
				return try PullRequestReview.init(fields: fields)

				case "PullRequestReviewComment":
				return try PullRequestReviewComment.init(fields: fields)

				case "PullRequestReviewThread":
				return try PullRequestReviewThread.init(fields: fields)

				case "PushAllowance":
				return try PushAllowance.init(fields: fields)

				case "Reaction":
				return try Reaction.init(fields: fields)

				case "ReadyForReviewEvent":
				return try ReadyForReviewEvent.init(fields: fields)

				case "Ref":
				return try Ref.init(fields: fields)

				case "ReferencedEvent":
				return try ReferencedEvent.init(fields: fields)

				case "RegistryPackage":
				return try RegistryPackage.init(fields: fields)

				case "RegistryPackageDependency":
				return try RegistryPackageDependency.init(fields: fields)

				case "RegistryPackageFile":
				return try RegistryPackageFile.init(fields: fields)

				case "RegistryPackageTag":
				return try RegistryPackageTag.init(fields: fields)

				case "RegistryPackageVersion":
				return try RegistryPackageVersion.init(fields: fields)

				case "Release":
				return try Release.init(fields: fields)

				case "ReleaseAsset":
				return try ReleaseAsset.init(fields: fields)

				case "RemovedFromProjectEvent":
				return try RemovedFromProjectEvent.init(fields: fields)

				case "RenamedTitleEvent":
				return try RenamedTitleEvent.init(fields: fields)

				case "ReopenedEvent":
				return try ReopenedEvent.init(fields: fields)

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

				case "Repository":
				return try Repository.init(fields: fields)

				case "RepositoryInvitation":
				return try RepositoryInvitation.init(fields: fields)

				case "RepositoryTopic":
				return try RepositoryTopic.init(fields: fields)

				case "RepositoryVisibilityChangeDisableAuditEntry":
				return try RepositoryVisibilityChangeDisableAuditEntry.init(fields: fields)

				case "RepositoryVisibilityChangeEnableAuditEntry":
				return try RepositoryVisibilityChangeEnableAuditEntry.init(fields: fields)

				case "RepositoryVulnerabilityAlert":
				return try RepositoryVulnerabilityAlert.init(fields: fields)

				case "ReviewDismissalAllowance":
				return try ReviewDismissalAllowance.init(fields: fields)

				case "ReviewDismissedEvent":
				return try ReviewDismissedEvent.init(fields: fields)

				case "ReviewRequest":
				return try ReviewRequest.init(fields: fields)

				case "ReviewRequestRemovedEvent":
				return try ReviewRequestRemovedEvent.init(fields: fields)

				case "ReviewRequestedEvent":
				return try ReviewRequestedEvent.init(fields: fields)

				case "SavedReply":
				return try SavedReply.init(fields: fields)

				case "SecurityAdvisory":
				return try SecurityAdvisory.init(fields: fields)

				case "SponsorsListing":
				return try SponsorsListing.init(fields: fields)

				case "SponsorsTier":
				return try SponsorsTier.init(fields: fields)

				case "Sponsorship":
				return try Sponsorship.init(fields: fields)

				case "Status":
				return try Status.init(fields: fields)

				case "StatusCheckRollup":
				return try StatusCheckRollup.init(fields: fields)

				case "StatusContext":
				return try StatusContext.init(fields: fields)

				case "SubscribedEvent":
				return try SubscribedEvent.init(fields: fields)

				case "Tag":
				return try Tag.init(fields: fields)

				case "Team":
				return try Team.init(fields: fields)

				case "TeamAddMemberAuditEntry":
				return try TeamAddMemberAuditEntry.init(fields: fields)

				case "TeamAddRepositoryAuditEntry":
				return try TeamAddRepositoryAuditEntry.init(fields: fields)

				case "TeamChangeParentTeamAuditEntry":
				return try TeamChangeParentTeamAuditEntry.init(fields: fields)

				case "TeamDiscussion":
				return try TeamDiscussion.init(fields: fields)

				case "TeamDiscussionComment":
				return try TeamDiscussionComment.init(fields: fields)

				case "TeamRemoveMemberAuditEntry":
				return try TeamRemoveMemberAuditEntry.init(fields: fields)

				case "TeamRemoveRepositoryAuditEntry":
				return try TeamRemoveRepositoryAuditEntry.init(fields: fields)

				case "Topic":
				return try Topic.init(fields: fields)

				case "TransferredEvent":
				return try TransferredEvent.init(fields: fields)

				case "Tree":
				return try Tree.init(fields: fields)

				case "UnassignedEvent":
				return try UnassignedEvent.init(fields: fields)

				case "UnlabeledEvent":
				return try UnlabeledEvent.init(fields: fields)

				case "UnlockedEvent":
				return try UnlockedEvent.init(fields: fields)

				case "UnmarkedAsDuplicateEvent":
				return try UnmarkedAsDuplicateEvent.init(fields: fields)

				case "UnpinnedEvent":
				return try UnpinnedEvent.init(fields: fields)

				case "UnsubscribedEvent":
				return try UnsubscribedEvent.init(fields: fields)

				case "User":
				return try User.init(fields: fields)

				case "UserBlockedEvent":
				return try UserBlockedEvent.init(fields: fields)

				case "UserContentEdit":
				return try UserContentEdit.init(fields: fields)

				case "UserStatus":
				return try UserStatus.init(fields: fields)

				default:
				return try UnknownNode.init(fields: fields)
			}
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "id":

				return .scalar

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
