// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class MutationQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Mutation

		open override var description: String {
			return "mutation" + super.description
		}

		@discardableResult
		open func acceptEnterpriseAdministratorInvitation(aliasSuffix: String? = nil, input: AcceptEnterpriseAdministratorInvitationInput, _ subfields: (AcceptEnterpriseAdministratorInvitationPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = AcceptEnterpriseAdministratorInvitationPayloadQuery()
			subfields(subquery)

			addField(field: "acceptEnterpriseAdministratorInvitation", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func acceptTopicSuggestion(aliasSuffix: String? = nil, input: AcceptTopicSuggestionInput, _ subfields: (AcceptTopicSuggestionPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = AcceptTopicSuggestionPayloadQuery()
			subfields(subquery)

			addField(field: "acceptTopicSuggestion", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func addAssigneesToAssignable(aliasSuffix: String? = nil, input: AddAssigneesToAssignableInput, _ subfields: (AddAssigneesToAssignablePayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = AddAssigneesToAssignablePayloadQuery()
			subfields(subquery)

			addField(field: "addAssigneesToAssignable", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func addComment(aliasSuffix: String? = nil, input: AddCommentInput, _ subfields: (AddCommentPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = AddCommentPayloadQuery()
			subfields(subquery)

			addField(field: "addComment", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func addLabelsToLabelable(aliasSuffix: String? = nil, input: AddLabelsToLabelableInput, _ subfields: (AddLabelsToLabelablePayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = AddLabelsToLabelablePayloadQuery()
			subfields(subquery)

			addField(field: "addLabelsToLabelable", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func addProjectCard(aliasSuffix: String? = nil, input: AddProjectCardInput, _ subfields: (AddProjectCardPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = AddProjectCardPayloadQuery()
			subfields(subquery)

			addField(field: "addProjectCard", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func addProjectColumn(aliasSuffix: String? = nil, input: AddProjectColumnInput, _ subfields: (AddProjectColumnPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = AddProjectColumnPayloadQuery()
			subfields(subquery)

			addField(field: "addProjectColumn", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func addPullRequestReview(aliasSuffix: String? = nil, input: AddPullRequestReviewInput, _ subfields: (AddPullRequestReviewPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = AddPullRequestReviewPayloadQuery()
			subfields(subquery)

			addField(field: "addPullRequestReview", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func addPullRequestReviewComment(aliasSuffix: String? = nil, input: AddPullRequestReviewCommentInput, _ subfields: (AddPullRequestReviewCommentPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = AddPullRequestReviewCommentPayloadQuery()
			subfields(subquery)

			addField(field: "addPullRequestReviewComment", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func addPullRequestReviewThread(aliasSuffix: String? = nil, input: AddPullRequestReviewThreadInput, _ subfields: (AddPullRequestReviewThreadPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = AddPullRequestReviewThreadPayloadQuery()
			subfields(subquery)

			addField(field: "addPullRequestReviewThread", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func addReaction(aliasSuffix: String? = nil, input: AddReactionInput, _ subfields: (AddReactionPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = AddReactionPayloadQuery()
			subfields(subquery)

			addField(field: "addReaction", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func addStar(aliasSuffix: String? = nil, input: AddStarInput, _ subfields: (AddStarPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = AddStarPayloadQuery()
			subfields(subquery)

			addField(field: "addStar", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func archiveRepository(aliasSuffix: String? = nil, input: ArchiveRepositoryInput, _ subfields: (ArchiveRepositoryPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = ArchiveRepositoryPayloadQuery()
			subfields(subquery)

			addField(field: "archiveRepository", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func cancelEnterpriseAdminInvitation(aliasSuffix: String? = nil, input: CancelEnterpriseAdminInvitationInput, _ subfields: (CancelEnterpriseAdminInvitationPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = CancelEnterpriseAdminInvitationPayloadQuery()
			subfields(subquery)

			addField(field: "cancelEnterpriseAdminInvitation", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func changeUserStatus(aliasSuffix: String? = nil, input: ChangeUserStatusInput, _ subfields: (ChangeUserStatusPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = ChangeUserStatusPayloadQuery()
			subfields(subquery)

			addField(field: "changeUserStatus", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func clearLabelsFromLabelable(aliasSuffix: String? = nil, input: ClearLabelsFromLabelableInput, _ subfields: (ClearLabelsFromLabelablePayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = ClearLabelsFromLabelablePayloadQuery()
			subfields(subquery)

			addField(field: "clearLabelsFromLabelable", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func cloneProject(aliasSuffix: String? = nil, input: CloneProjectInput, _ subfields: (CloneProjectPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = CloneProjectPayloadQuery()
			subfields(subquery)

			addField(field: "cloneProject", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func cloneTemplateRepository(aliasSuffix: String? = nil, input: CloneTemplateRepositoryInput, _ subfields: (CloneTemplateRepositoryPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = CloneTemplateRepositoryPayloadQuery()
			subfields(subquery)

			addField(field: "cloneTemplateRepository", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func closeIssue(aliasSuffix: String? = nil, input: CloseIssueInput, _ subfields: (CloseIssuePayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = CloseIssuePayloadQuery()
			subfields(subquery)

			addField(field: "closeIssue", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func closePullRequest(aliasSuffix: String? = nil, input: ClosePullRequestInput, _ subfields: (ClosePullRequestPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = ClosePullRequestPayloadQuery()
			subfields(subquery)

			addField(field: "closePullRequest", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func convertProjectCardNoteToIssue(aliasSuffix: String? = nil, input: ConvertProjectCardNoteToIssueInput, _ subfields: (ConvertProjectCardNoteToIssuePayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = ConvertProjectCardNoteToIssuePayloadQuery()
			subfields(subquery)

			addField(field: "convertProjectCardNoteToIssue", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func createBranchProtectionRule(aliasSuffix: String? = nil, input: CreateBranchProtectionRuleInput, _ subfields: (CreateBranchProtectionRulePayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = CreateBranchProtectionRulePayloadQuery()
			subfields(subquery)

			addField(field: "createBranchProtectionRule", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func createEnterpriseOrganization(aliasSuffix: String? = nil, input: CreateEnterpriseOrganizationInput, _ subfields: (CreateEnterpriseOrganizationPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = CreateEnterpriseOrganizationPayloadQuery()
			subfields(subquery)

			addField(field: "createEnterpriseOrganization", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func createIpAllowListEntry(aliasSuffix: String? = nil, input: CreateIpAllowListEntryInput, _ subfields: (CreateIpAllowListEntryPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = CreateIpAllowListEntryPayloadQuery()
			subfields(subquery)

			addField(field: "createIpAllowListEntry", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func createIssue(aliasSuffix: String? = nil, input: CreateIssueInput, _ subfields: (CreateIssuePayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = CreateIssuePayloadQuery()
			subfields(subquery)

			addField(field: "createIssue", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func createProject(aliasSuffix: String? = nil, input: CreateProjectInput, _ subfields: (CreateProjectPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = CreateProjectPayloadQuery()
			subfields(subquery)

			addField(field: "createProject", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func createPullRequest(aliasSuffix: String? = nil, input: CreatePullRequestInput, _ subfields: (CreatePullRequestPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = CreatePullRequestPayloadQuery()
			subfields(subquery)

			addField(field: "createPullRequest", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func createRef(aliasSuffix: String? = nil, input: CreateRefInput, _ subfields: (CreateRefPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = CreateRefPayloadQuery()
			subfields(subquery)

			addField(field: "createRef", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func createRepository(aliasSuffix: String? = nil, input: CreateRepositoryInput, _ subfields: (CreateRepositoryPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = CreateRepositoryPayloadQuery()
			subfields(subquery)

			addField(field: "createRepository", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func createTeamDiscussion(aliasSuffix: String? = nil, input: CreateTeamDiscussionInput, _ subfields: (CreateTeamDiscussionPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = CreateTeamDiscussionPayloadQuery()
			subfields(subquery)

			addField(field: "createTeamDiscussion", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func createTeamDiscussionComment(aliasSuffix: String? = nil, input: CreateTeamDiscussionCommentInput, _ subfields: (CreateTeamDiscussionCommentPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = CreateTeamDiscussionCommentPayloadQuery()
			subfields(subquery)

			addField(field: "createTeamDiscussionComment", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func declineTopicSuggestion(aliasSuffix: String? = nil, input: DeclineTopicSuggestionInput, _ subfields: (DeclineTopicSuggestionPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = DeclineTopicSuggestionPayloadQuery()
			subfields(subquery)

			addField(field: "declineTopicSuggestion", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func deleteBranchProtectionRule(aliasSuffix: String? = nil, input: DeleteBranchProtectionRuleInput, _ subfields: (DeleteBranchProtectionRulePayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = DeleteBranchProtectionRulePayloadQuery()
			subfields(subquery)

			addField(field: "deleteBranchProtectionRule", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func deleteDeployment(aliasSuffix: String? = nil, input: DeleteDeploymentInput, _ subfields: (DeleteDeploymentPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = DeleteDeploymentPayloadQuery()
			subfields(subquery)

			addField(field: "deleteDeployment", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func deleteIpAllowListEntry(aliasSuffix: String? = nil, input: DeleteIpAllowListEntryInput, _ subfields: (DeleteIpAllowListEntryPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = DeleteIpAllowListEntryPayloadQuery()
			subfields(subquery)

			addField(field: "deleteIpAllowListEntry", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func deleteIssue(aliasSuffix: String? = nil, input: DeleteIssueInput, _ subfields: (DeleteIssuePayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = DeleteIssuePayloadQuery()
			subfields(subquery)

			addField(field: "deleteIssue", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func deleteIssueComment(aliasSuffix: String? = nil, input: DeleteIssueCommentInput, _ subfields: (DeleteIssueCommentPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = DeleteIssueCommentPayloadQuery()
			subfields(subquery)

			addField(field: "deleteIssueComment", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func deleteProject(aliasSuffix: String? = nil, input: DeleteProjectInput, _ subfields: (DeleteProjectPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = DeleteProjectPayloadQuery()
			subfields(subquery)

			addField(field: "deleteProject", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func deleteProjectCard(aliasSuffix: String? = nil, input: DeleteProjectCardInput, _ subfields: (DeleteProjectCardPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = DeleteProjectCardPayloadQuery()
			subfields(subquery)

			addField(field: "deleteProjectCard", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func deleteProjectColumn(aliasSuffix: String? = nil, input: DeleteProjectColumnInput, _ subfields: (DeleteProjectColumnPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = DeleteProjectColumnPayloadQuery()
			subfields(subquery)

			addField(field: "deleteProjectColumn", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func deletePullRequestReview(aliasSuffix: String? = nil, input: DeletePullRequestReviewInput, _ subfields: (DeletePullRequestReviewPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = DeletePullRequestReviewPayloadQuery()
			subfields(subquery)

			addField(field: "deletePullRequestReview", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func deletePullRequestReviewComment(aliasSuffix: String? = nil, input: DeletePullRequestReviewCommentInput, _ subfields: (DeletePullRequestReviewCommentPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = DeletePullRequestReviewCommentPayloadQuery()
			subfields(subquery)

			addField(field: "deletePullRequestReviewComment", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func deleteRef(aliasSuffix: String? = nil, input: DeleteRefInput, _ subfields: (DeleteRefPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = DeleteRefPayloadQuery()
			subfields(subquery)

			addField(field: "deleteRef", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func deleteTeamDiscussion(aliasSuffix: String? = nil, input: DeleteTeamDiscussionInput, _ subfields: (DeleteTeamDiscussionPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = DeleteTeamDiscussionPayloadQuery()
			subfields(subquery)

			addField(field: "deleteTeamDiscussion", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func deleteTeamDiscussionComment(aliasSuffix: String? = nil, input: DeleteTeamDiscussionCommentInput, _ subfields: (DeleteTeamDiscussionCommentPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = DeleteTeamDiscussionCommentPayloadQuery()
			subfields(subquery)

			addField(field: "deleteTeamDiscussionComment", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func dismissPullRequestReview(aliasSuffix: String? = nil, input: DismissPullRequestReviewInput, _ subfields: (DismissPullRequestReviewPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = DismissPullRequestReviewPayloadQuery()
			subfields(subquery)

			addField(field: "dismissPullRequestReview", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func followUser(aliasSuffix: String? = nil, input: FollowUserInput, _ subfields: (FollowUserPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = FollowUserPayloadQuery()
			subfields(subquery)

			addField(field: "followUser", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func inviteEnterpriseAdmin(aliasSuffix: String? = nil, input: InviteEnterpriseAdminInput, _ subfields: (InviteEnterpriseAdminPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = InviteEnterpriseAdminPayloadQuery()
			subfields(subquery)

			addField(field: "inviteEnterpriseAdmin", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func linkRepositoryToProject(aliasSuffix: String? = nil, input: LinkRepositoryToProjectInput, _ subfields: (LinkRepositoryToProjectPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = LinkRepositoryToProjectPayloadQuery()
			subfields(subquery)

			addField(field: "linkRepositoryToProject", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func lockLockable(aliasSuffix: String? = nil, input: LockLockableInput, _ subfields: (LockLockablePayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = LockLockablePayloadQuery()
			subfields(subquery)

			addField(field: "lockLockable", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func markPullRequestReadyForReview(aliasSuffix: String? = nil, input: MarkPullRequestReadyForReviewInput, _ subfields: (MarkPullRequestReadyForReviewPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = MarkPullRequestReadyForReviewPayloadQuery()
			subfields(subquery)

			addField(field: "markPullRequestReadyForReview", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func mergeBranch(aliasSuffix: String? = nil, input: MergeBranchInput, _ subfields: (MergeBranchPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = MergeBranchPayloadQuery()
			subfields(subquery)

			addField(field: "mergeBranch", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func mergePullRequest(aliasSuffix: String? = nil, input: MergePullRequestInput, _ subfields: (MergePullRequestPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = MergePullRequestPayloadQuery()
			subfields(subquery)

			addField(field: "mergePullRequest", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func minimizeComment(aliasSuffix: String? = nil, input: MinimizeCommentInput, _ subfields: (MinimizeCommentPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = MinimizeCommentPayloadQuery()
			subfields(subquery)

			addField(field: "minimizeComment", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func moveProjectCard(aliasSuffix: String? = nil, input: MoveProjectCardInput, _ subfields: (MoveProjectCardPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = MoveProjectCardPayloadQuery()
			subfields(subquery)

			addField(field: "moveProjectCard", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func moveProjectColumn(aliasSuffix: String? = nil, input: MoveProjectColumnInput, _ subfields: (MoveProjectColumnPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = MoveProjectColumnPayloadQuery()
			subfields(subquery)

			addField(field: "moveProjectColumn", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func regenerateEnterpriseIdentityProviderRecoveryCodes(aliasSuffix: String? = nil, input: RegenerateEnterpriseIdentityProviderRecoveryCodesInput, _ subfields: (RegenerateEnterpriseIdentityProviderRecoveryCodesPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RegenerateEnterpriseIdentityProviderRecoveryCodesPayloadQuery()
			subfields(subquery)

			addField(field: "regenerateEnterpriseIdentityProviderRecoveryCodes", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func removeAssigneesFromAssignable(aliasSuffix: String? = nil, input: RemoveAssigneesFromAssignableInput, _ subfields: (RemoveAssigneesFromAssignablePayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RemoveAssigneesFromAssignablePayloadQuery()
			subfields(subquery)

			addField(field: "removeAssigneesFromAssignable", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func removeEnterpriseAdmin(aliasSuffix: String? = nil, input: RemoveEnterpriseAdminInput, _ subfields: (RemoveEnterpriseAdminPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RemoveEnterpriseAdminPayloadQuery()
			subfields(subquery)

			addField(field: "removeEnterpriseAdmin", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func removeEnterpriseIdentityProvider(aliasSuffix: String? = nil, input: RemoveEnterpriseIdentityProviderInput, _ subfields: (RemoveEnterpriseIdentityProviderPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RemoveEnterpriseIdentityProviderPayloadQuery()
			subfields(subquery)

			addField(field: "removeEnterpriseIdentityProvider", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func removeEnterpriseOrganization(aliasSuffix: String? = nil, input: RemoveEnterpriseOrganizationInput, _ subfields: (RemoveEnterpriseOrganizationPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RemoveEnterpriseOrganizationPayloadQuery()
			subfields(subquery)

			addField(field: "removeEnterpriseOrganization", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func removeLabelsFromLabelable(aliasSuffix: String? = nil, input: RemoveLabelsFromLabelableInput, _ subfields: (RemoveLabelsFromLabelablePayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RemoveLabelsFromLabelablePayloadQuery()
			subfields(subquery)

			addField(field: "removeLabelsFromLabelable", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func removeOutsideCollaborator(aliasSuffix: String? = nil, input: RemoveOutsideCollaboratorInput, _ subfields: (RemoveOutsideCollaboratorPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RemoveOutsideCollaboratorPayloadQuery()
			subfields(subquery)

			addField(field: "removeOutsideCollaborator", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func removeReaction(aliasSuffix: String? = nil, input: RemoveReactionInput, _ subfields: (RemoveReactionPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RemoveReactionPayloadQuery()
			subfields(subquery)

			addField(field: "removeReaction", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func removeStar(aliasSuffix: String? = nil, input: RemoveStarInput, _ subfields: (RemoveStarPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RemoveStarPayloadQuery()
			subfields(subquery)

			addField(field: "removeStar", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func reopenIssue(aliasSuffix: String? = nil, input: ReopenIssueInput, _ subfields: (ReopenIssuePayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = ReopenIssuePayloadQuery()
			subfields(subquery)

			addField(field: "reopenIssue", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func reopenPullRequest(aliasSuffix: String? = nil, input: ReopenPullRequestInput, _ subfields: (ReopenPullRequestPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = ReopenPullRequestPayloadQuery()
			subfields(subquery)

			addField(field: "reopenPullRequest", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func requestReviews(aliasSuffix: String? = nil, input: RequestReviewsInput, _ subfields: (RequestReviewsPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RequestReviewsPayloadQuery()
			subfields(subquery)

			addField(field: "requestReviews", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func resolveReviewThread(aliasSuffix: String? = nil, input: ResolveReviewThreadInput, _ subfields: (ResolveReviewThreadPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = ResolveReviewThreadPayloadQuery()
			subfields(subquery)

			addField(field: "resolveReviewThread", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func setEnterpriseIdentityProvider(aliasSuffix: String? = nil, input: SetEnterpriseIdentityProviderInput, _ subfields: (SetEnterpriseIdentityProviderPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = SetEnterpriseIdentityProviderPayloadQuery()
			subfields(subquery)

			addField(field: "setEnterpriseIdentityProvider", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func submitPullRequestReview(aliasSuffix: String? = nil, input: SubmitPullRequestReviewInput, _ subfields: (SubmitPullRequestReviewPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = SubmitPullRequestReviewPayloadQuery()
			subfields(subquery)

			addField(field: "submitPullRequestReview", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func transferIssue(aliasSuffix: String? = nil, input: TransferIssueInput, _ subfields: (TransferIssuePayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = TransferIssuePayloadQuery()
			subfields(subquery)

			addField(field: "transferIssue", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func unarchiveRepository(aliasSuffix: String? = nil, input: UnarchiveRepositoryInput, _ subfields: (UnarchiveRepositoryPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UnarchiveRepositoryPayloadQuery()
			subfields(subquery)

			addField(field: "unarchiveRepository", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func unfollowUser(aliasSuffix: String? = nil, input: UnfollowUserInput, _ subfields: (UnfollowUserPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UnfollowUserPayloadQuery()
			subfields(subquery)

			addField(field: "unfollowUser", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func unlinkRepositoryFromProject(aliasSuffix: String? = nil, input: UnlinkRepositoryFromProjectInput, _ subfields: (UnlinkRepositoryFromProjectPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UnlinkRepositoryFromProjectPayloadQuery()
			subfields(subquery)

			addField(field: "unlinkRepositoryFromProject", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func unlockLockable(aliasSuffix: String? = nil, input: UnlockLockableInput, _ subfields: (UnlockLockablePayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UnlockLockablePayloadQuery()
			subfields(subquery)

			addField(field: "unlockLockable", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func unmarkIssueAsDuplicate(aliasSuffix: String? = nil, input: UnmarkIssueAsDuplicateInput, _ subfields: (UnmarkIssueAsDuplicatePayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UnmarkIssueAsDuplicatePayloadQuery()
			subfields(subquery)

			addField(field: "unmarkIssueAsDuplicate", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func unminimizeComment(aliasSuffix: String? = nil, input: UnminimizeCommentInput, _ subfields: (UnminimizeCommentPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UnminimizeCommentPayloadQuery()
			subfields(subquery)

			addField(field: "unminimizeComment", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func unresolveReviewThread(aliasSuffix: String? = nil, input: UnresolveReviewThreadInput, _ subfields: (UnresolveReviewThreadPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UnresolveReviewThreadPayloadQuery()
			subfields(subquery)

			addField(field: "unresolveReviewThread", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateBranchProtectionRule(aliasSuffix: String? = nil, input: UpdateBranchProtectionRuleInput, _ subfields: (UpdateBranchProtectionRulePayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateBranchProtectionRulePayloadQuery()
			subfields(subquery)

			addField(field: "updateBranchProtectionRule", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateEnterpriseActionExecutionCapabilitySetting(aliasSuffix: String? = nil, input: UpdateEnterpriseActionExecutionCapabilitySettingInput, _ subfields: (UpdateEnterpriseActionExecutionCapabilitySettingPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateEnterpriseActionExecutionCapabilitySettingPayloadQuery()
			subfields(subquery)

			addField(field: "updateEnterpriseActionExecutionCapabilitySetting", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateEnterpriseAdministratorRole(aliasSuffix: String? = nil, input: UpdateEnterpriseAdministratorRoleInput, _ subfields: (UpdateEnterpriseAdministratorRolePayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateEnterpriseAdministratorRolePayloadQuery()
			subfields(subquery)

			addField(field: "updateEnterpriseAdministratorRole", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateEnterpriseAllowPrivateRepositoryForkingSetting(aliasSuffix: String? = nil, input: UpdateEnterpriseAllowPrivateRepositoryForkingSettingInput, _ subfields: (UpdateEnterpriseAllowPrivateRepositoryForkingSettingPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateEnterpriseAllowPrivateRepositoryForkingSettingPayloadQuery()
			subfields(subquery)

			addField(field: "updateEnterpriseAllowPrivateRepositoryForkingSetting", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateEnterpriseDefaultRepositoryPermissionSetting(aliasSuffix: String? = nil, input: UpdateEnterpriseDefaultRepositoryPermissionSettingInput, _ subfields: (UpdateEnterpriseDefaultRepositoryPermissionSettingPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateEnterpriseDefaultRepositoryPermissionSettingPayloadQuery()
			subfields(subquery)

			addField(field: "updateEnterpriseDefaultRepositoryPermissionSetting", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateEnterpriseMembersCanChangeRepositoryVisibilitySetting(aliasSuffix: String? = nil, input: UpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingInput, _ subfields: (UpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingPayloadQuery()
			subfields(subquery)

			addField(field: "updateEnterpriseMembersCanChangeRepositoryVisibilitySetting", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateEnterpriseMembersCanCreateRepositoriesSetting(aliasSuffix: String? = nil, input: UpdateEnterpriseMembersCanCreateRepositoriesSettingInput, _ subfields: (UpdateEnterpriseMembersCanCreateRepositoriesSettingPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateEnterpriseMembersCanCreateRepositoriesSettingPayloadQuery()
			subfields(subquery)

			addField(field: "updateEnterpriseMembersCanCreateRepositoriesSetting", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateEnterpriseMembersCanDeleteIssuesSetting(aliasSuffix: String? = nil, input: UpdateEnterpriseMembersCanDeleteIssuesSettingInput, _ subfields: (UpdateEnterpriseMembersCanDeleteIssuesSettingPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateEnterpriseMembersCanDeleteIssuesSettingPayloadQuery()
			subfields(subquery)

			addField(field: "updateEnterpriseMembersCanDeleteIssuesSetting", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateEnterpriseMembersCanDeleteRepositoriesSetting(aliasSuffix: String? = nil, input: UpdateEnterpriseMembersCanDeleteRepositoriesSettingInput, _ subfields: (UpdateEnterpriseMembersCanDeleteRepositoriesSettingPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateEnterpriseMembersCanDeleteRepositoriesSettingPayloadQuery()
			subfields(subquery)

			addField(field: "updateEnterpriseMembersCanDeleteRepositoriesSetting", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateEnterpriseMembersCanInviteCollaboratorsSetting(aliasSuffix: String? = nil, input: UpdateEnterpriseMembersCanInviteCollaboratorsSettingInput, _ subfields: (UpdateEnterpriseMembersCanInviteCollaboratorsSettingPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateEnterpriseMembersCanInviteCollaboratorsSettingPayloadQuery()
			subfields(subquery)

			addField(field: "updateEnterpriseMembersCanInviteCollaboratorsSetting", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateEnterpriseMembersCanMakePurchasesSetting(aliasSuffix: String? = nil, input: UpdateEnterpriseMembersCanMakePurchasesSettingInput, _ subfields: (UpdateEnterpriseMembersCanMakePurchasesSettingPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateEnterpriseMembersCanMakePurchasesSettingPayloadQuery()
			subfields(subquery)

			addField(field: "updateEnterpriseMembersCanMakePurchasesSetting", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateEnterpriseMembersCanUpdateProtectedBranchesSetting(aliasSuffix: String? = nil, input: UpdateEnterpriseMembersCanUpdateProtectedBranchesSettingInput, _ subfields: (UpdateEnterpriseMembersCanUpdateProtectedBranchesSettingPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateEnterpriseMembersCanUpdateProtectedBranchesSettingPayloadQuery()
			subfields(subquery)

			addField(field: "updateEnterpriseMembersCanUpdateProtectedBranchesSetting", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateEnterpriseMembersCanViewDependencyInsightsSetting(aliasSuffix: String? = nil, input: UpdateEnterpriseMembersCanViewDependencyInsightsSettingInput, _ subfields: (UpdateEnterpriseMembersCanViewDependencyInsightsSettingPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateEnterpriseMembersCanViewDependencyInsightsSettingPayloadQuery()
			subfields(subquery)

			addField(field: "updateEnterpriseMembersCanViewDependencyInsightsSetting", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateEnterpriseOrganizationProjectsSetting(aliasSuffix: String? = nil, input: UpdateEnterpriseOrganizationProjectsSettingInput, _ subfields: (UpdateEnterpriseOrganizationProjectsSettingPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateEnterpriseOrganizationProjectsSettingPayloadQuery()
			subfields(subquery)

			addField(field: "updateEnterpriseOrganizationProjectsSetting", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateEnterpriseProfile(aliasSuffix: String? = nil, input: UpdateEnterpriseProfileInput, _ subfields: (UpdateEnterpriseProfilePayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateEnterpriseProfilePayloadQuery()
			subfields(subquery)

			addField(field: "updateEnterpriseProfile", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateEnterpriseRepositoryProjectsSetting(aliasSuffix: String? = nil, input: UpdateEnterpriseRepositoryProjectsSettingInput, _ subfields: (UpdateEnterpriseRepositoryProjectsSettingPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateEnterpriseRepositoryProjectsSettingPayloadQuery()
			subfields(subquery)

			addField(field: "updateEnterpriseRepositoryProjectsSetting", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateEnterpriseTeamDiscussionsSetting(aliasSuffix: String? = nil, input: UpdateEnterpriseTeamDiscussionsSettingInput, _ subfields: (UpdateEnterpriseTeamDiscussionsSettingPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateEnterpriseTeamDiscussionsSettingPayloadQuery()
			subfields(subquery)

			addField(field: "updateEnterpriseTeamDiscussionsSetting", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateEnterpriseTwoFactorAuthenticationRequiredSetting(aliasSuffix: String? = nil, input: UpdateEnterpriseTwoFactorAuthenticationRequiredSettingInput, _ subfields: (UpdateEnterpriseTwoFactorAuthenticationRequiredSettingPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateEnterpriseTwoFactorAuthenticationRequiredSettingPayloadQuery()
			subfields(subquery)

			addField(field: "updateEnterpriseTwoFactorAuthenticationRequiredSetting", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateIpAllowListEnabledSetting(aliasSuffix: String? = nil, input: UpdateIpAllowListEnabledSettingInput, _ subfields: (UpdateIpAllowListEnabledSettingPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateIpAllowListEnabledSettingPayloadQuery()
			subfields(subquery)

			addField(field: "updateIpAllowListEnabledSetting", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateIpAllowListEntry(aliasSuffix: String? = nil, input: UpdateIpAllowListEntryInput, _ subfields: (UpdateIpAllowListEntryPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateIpAllowListEntryPayloadQuery()
			subfields(subquery)

			addField(field: "updateIpAllowListEntry", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateIssue(aliasSuffix: String? = nil, input: UpdateIssueInput, _ subfields: (UpdateIssuePayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateIssuePayloadQuery()
			subfields(subquery)

			addField(field: "updateIssue", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateIssueComment(aliasSuffix: String? = nil, input: UpdateIssueCommentInput, _ subfields: (UpdateIssueCommentPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateIssueCommentPayloadQuery()
			subfields(subquery)

			addField(field: "updateIssueComment", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateProject(aliasSuffix: String? = nil, input: UpdateProjectInput, _ subfields: (UpdateProjectPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateProjectPayloadQuery()
			subfields(subquery)

			addField(field: "updateProject", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateProjectCard(aliasSuffix: String? = nil, input: UpdateProjectCardInput, _ subfields: (UpdateProjectCardPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateProjectCardPayloadQuery()
			subfields(subquery)

			addField(field: "updateProjectCard", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateProjectColumn(aliasSuffix: String? = nil, input: UpdateProjectColumnInput, _ subfields: (UpdateProjectColumnPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateProjectColumnPayloadQuery()
			subfields(subquery)

			addField(field: "updateProjectColumn", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updatePullRequest(aliasSuffix: String? = nil, input: UpdatePullRequestInput, _ subfields: (UpdatePullRequestPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdatePullRequestPayloadQuery()
			subfields(subquery)

			addField(field: "updatePullRequest", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updatePullRequestReview(aliasSuffix: String? = nil, input: UpdatePullRequestReviewInput, _ subfields: (UpdatePullRequestReviewPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdatePullRequestReviewPayloadQuery()
			subfields(subquery)

			addField(field: "updatePullRequestReview", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updatePullRequestReviewComment(aliasSuffix: String? = nil, input: UpdatePullRequestReviewCommentInput, _ subfields: (UpdatePullRequestReviewCommentPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdatePullRequestReviewCommentPayloadQuery()
			subfields(subquery)

			addField(field: "updatePullRequestReviewComment", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateRef(aliasSuffix: String? = nil, input: UpdateRefInput, _ subfields: (UpdateRefPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateRefPayloadQuery()
			subfields(subquery)

			addField(field: "updateRef", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateRepository(aliasSuffix: String? = nil, input: UpdateRepositoryInput, _ subfields: (UpdateRepositoryPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateRepositoryPayloadQuery()
			subfields(subquery)

			addField(field: "updateRepository", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateSubscription(aliasSuffix: String? = nil, input: UpdateSubscriptionInput, _ subfields: (UpdateSubscriptionPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateSubscriptionPayloadQuery()
			subfields(subquery)

			addField(field: "updateSubscription", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateTeamDiscussion(aliasSuffix: String? = nil, input: UpdateTeamDiscussionInput, _ subfields: (UpdateTeamDiscussionPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateTeamDiscussionPayloadQuery()
			subfields(subquery)

			addField(field: "updateTeamDiscussion", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateTeamDiscussionComment(aliasSuffix: String? = nil, input: UpdateTeamDiscussionCommentInput, _ subfields: (UpdateTeamDiscussionCommentPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateTeamDiscussionCommentPayloadQuery()
			subfields(subquery)

			addField(field: "updateTeamDiscussionComment", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updateTopics(aliasSuffix: String? = nil, input: UpdateTopicsInput, _ subfields: (UpdateTopicsPayloadQuery) -> Void) -> MutationQuery {
			var args: [String] = []

			args.append("input:\(input.serialize())")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UpdateTopicsPayloadQuery()
			subfields(subquery)

			addField(field: "updateTopics", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}
	}

	open class Mutation: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = MutationQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "acceptEnterpriseAdministratorInvitation":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try AcceptEnterpriseAdministratorInvitationPayload(fields: value)

				case "acceptTopicSuggestion":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try AcceptTopicSuggestionPayload(fields: value)

				case "addAssigneesToAssignable":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try AddAssigneesToAssignablePayload(fields: value)

				case "addComment":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try AddCommentPayload(fields: value)

				case "addLabelsToLabelable":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try AddLabelsToLabelablePayload(fields: value)

				case "addProjectCard":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try AddProjectCardPayload(fields: value)

				case "addProjectColumn":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try AddProjectColumnPayload(fields: value)

				case "addPullRequestReview":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try AddPullRequestReviewPayload(fields: value)

				case "addPullRequestReviewComment":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try AddPullRequestReviewCommentPayload(fields: value)

				case "addPullRequestReviewThread":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try AddPullRequestReviewThreadPayload(fields: value)

				case "addReaction":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try AddReactionPayload(fields: value)

				case "addStar":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try AddStarPayload(fields: value)

				case "archiveRepository":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try ArchiveRepositoryPayload(fields: value)

				case "cancelEnterpriseAdminInvitation":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try CancelEnterpriseAdminInvitationPayload(fields: value)

				case "changeUserStatus":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try ChangeUserStatusPayload(fields: value)

				case "clearLabelsFromLabelable":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try ClearLabelsFromLabelablePayload(fields: value)

				case "cloneProject":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try CloneProjectPayload(fields: value)

				case "cloneTemplateRepository":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try CloneTemplateRepositoryPayload(fields: value)

				case "closeIssue":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try CloseIssuePayload(fields: value)

				case "closePullRequest":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try ClosePullRequestPayload(fields: value)

				case "convertProjectCardNoteToIssue":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try ConvertProjectCardNoteToIssuePayload(fields: value)

				case "createBranchProtectionRule":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try CreateBranchProtectionRulePayload(fields: value)

				case "createEnterpriseOrganization":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try CreateEnterpriseOrganizationPayload(fields: value)

				case "createIpAllowListEntry":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try CreateIpAllowListEntryPayload(fields: value)

				case "createIssue":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try CreateIssuePayload(fields: value)

				case "createProject":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try CreateProjectPayload(fields: value)

				case "createPullRequest":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try CreatePullRequestPayload(fields: value)

				case "createRef":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try CreateRefPayload(fields: value)

				case "createRepository":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try CreateRepositoryPayload(fields: value)

				case "createTeamDiscussion":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try CreateTeamDiscussionPayload(fields: value)

				case "createTeamDiscussionComment":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try CreateTeamDiscussionCommentPayload(fields: value)

				case "declineTopicSuggestion":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try DeclineTopicSuggestionPayload(fields: value)

				case "deleteBranchProtectionRule":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try DeleteBranchProtectionRulePayload(fields: value)

				case "deleteDeployment":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try DeleteDeploymentPayload(fields: value)

				case "deleteIpAllowListEntry":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try DeleteIpAllowListEntryPayload(fields: value)

				case "deleteIssue":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try DeleteIssuePayload(fields: value)

				case "deleteIssueComment":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try DeleteIssueCommentPayload(fields: value)

				case "deleteProject":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try DeleteProjectPayload(fields: value)

				case "deleteProjectCard":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try DeleteProjectCardPayload(fields: value)

				case "deleteProjectColumn":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try DeleteProjectColumnPayload(fields: value)

				case "deletePullRequestReview":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try DeletePullRequestReviewPayload(fields: value)

				case "deletePullRequestReviewComment":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try DeletePullRequestReviewCommentPayload(fields: value)

				case "deleteRef":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try DeleteRefPayload(fields: value)

				case "deleteTeamDiscussion":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try DeleteTeamDiscussionPayload(fields: value)

				case "deleteTeamDiscussionComment":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try DeleteTeamDiscussionCommentPayload(fields: value)

				case "dismissPullRequestReview":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try DismissPullRequestReviewPayload(fields: value)

				case "followUser":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try FollowUserPayload(fields: value)

				case "inviteEnterpriseAdmin":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try InviteEnterpriseAdminPayload(fields: value)

				case "linkRepositoryToProject":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try LinkRepositoryToProjectPayload(fields: value)

				case "lockLockable":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try LockLockablePayload(fields: value)

				case "markPullRequestReadyForReview":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try MarkPullRequestReadyForReviewPayload(fields: value)

				case "mergeBranch":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try MergeBranchPayload(fields: value)

				case "mergePullRequest":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try MergePullRequestPayload(fields: value)

				case "minimizeComment":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try MinimizeCommentPayload(fields: value)

				case "moveProjectCard":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try MoveProjectCardPayload(fields: value)

				case "moveProjectColumn":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try MoveProjectColumnPayload(fields: value)

				case "regenerateEnterpriseIdentityProviderRecoveryCodes":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try RegenerateEnterpriseIdentityProviderRecoveryCodesPayload(fields: value)

				case "removeAssigneesFromAssignable":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try RemoveAssigneesFromAssignablePayload(fields: value)

				case "removeEnterpriseAdmin":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try RemoveEnterpriseAdminPayload(fields: value)

				case "removeEnterpriseIdentityProvider":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try RemoveEnterpriseIdentityProviderPayload(fields: value)

				case "removeEnterpriseOrganization":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try RemoveEnterpriseOrganizationPayload(fields: value)

				case "removeLabelsFromLabelable":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try RemoveLabelsFromLabelablePayload(fields: value)

				case "removeOutsideCollaborator":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try RemoveOutsideCollaboratorPayload(fields: value)

				case "removeReaction":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try RemoveReactionPayload(fields: value)

				case "removeStar":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try RemoveStarPayload(fields: value)

				case "reopenIssue":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try ReopenIssuePayload(fields: value)

				case "reopenPullRequest":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try ReopenPullRequestPayload(fields: value)

				case "requestReviews":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try RequestReviewsPayload(fields: value)

				case "resolveReviewThread":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try ResolveReviewThreadPayload(fields: value)

				case "setEnterpriseIdentityProvider":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try SetEnterpriseIdentityProviderPayload(fields: value)

				case "submitPullRequestReview":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try SubmitPullRequestReviewPayload(fields: value)

				case "transferIssue":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try TransferIssuePayload(fields: value)

				case "unarchiveRepository":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UnarchiveRepositoryPayload(fields: value)

				case "unfollowUser":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UnfollowUserPayload(fields: value)

				case "unlinkRepositoryFromProject":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UnlinkRepositoryFromProjectPayload(fields: value)

				case "unlockLockable":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UnlockLockablePayload(fields: value)

				case "unmarkIssueAsDuplicate":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UnmarkIssueAsDuplicatePayload(fields: value)

				case "unminimizeComment":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UnminimizeCommentPayload(fields: value)

				case "unresolveReviewThread":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UnresolveReviewThreadPayload(fields: value)

				case "updateBranchProtectionRule":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateBranchProtectionRulePayload(fields: value)

				case "updateEnterpriseActionExecutionCapabilitySetting":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateEnterpriseActionExecutionCapabilitySettingPayload(fields: value)

				case "updateEnterpriseAdministratorRole":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateEnterpriseAdministratorRolePayload(fields: value)

				case "updateEnterpriseAllowPrivateRepositoryForkingSetting":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateEnterpriseAllowPrivateRepositoryForkingSettingPayload(fields: value)

				case "updateEnterpriseDefaultRepositoryPermissionSetting":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateEnterpriseDefaultRepositoryPermissionSettingPayload(fields: value)

				case "updateEnterpriseMembersCanChangeRepositoryVisibilitySetting":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingPayload(fields: value)

				case "updateEnterpriseMembersCanCreateRepositoriesSetting":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateEnterpriseMembersCanCreateRepositoriesSettingPayload(fields: value)

				case "updateEnterpriseMembersCanDeleteIssuesSetting":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateEnterpriseMembersCanDeleteIssuesSettingPayload(fields: value)

				case "updateEnterpriseMembersCanDeleteRepositoriesSetting":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateEnterpriseMembersCanDeleteRepositoriesSettingPayload(fields: value)

				case "updateEnterpriseMembersCanInviteCollaboratorsSetting":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateEnterpriseMembersCanInviteCollaboratorsSettingPayload(fields: value)

				case "updateEnterpriseMembersCanMakePurchasesSetting":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateEnterpriseMembersCanMakePurchasesSettingPayload(fields: value)

				case "updateEnterpriseMembersCanUpdateProtectedBranchesSetting":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateEnterpriseMembersCanUpdateProtectedBranchesSettingPayload(fields: value)

				case "updateEnterpriseMembersCanViewDependencyInsightsSetting":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateEnterpriseMembersCanViewDependencyInsightsSettingPayload(fields: value)

				case "updateEnterpriseOrganizationProjectsSetting":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateEnterpriseOrganizationProjectsSettingPayload(fields: value)

				case "updateEnterpriseProfile":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateEnterpriseProfilePayload(fields: value)

				case "updateEnterpriseRepositoryProjectsSetting":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateEnterpriseRepositoryProjectsSettingPayload(fields: value)

				case "updateEnterpriseTeamDiscussionsSetting":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateEnterpriseTeamDiscussionsSettingPayload(fields: value)

				case "updateEnterpriseTwoFactorAuthenticationRequiredSetting":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateEnterpriseTwoFactorAuthenticationRequiredSettingPayload(fields: value)

				case "updateIpAllowListEnabledSetting":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateIpAllowListEnabledSettingPayload(fields: value)

				case "updateIpAllowListEntry":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateIpAllowListEntryPayload(fields: value)

				case "updateIssue":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateIssuePayload(fields: value)

				case "updateIssueComment":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateIssueCommentPayload(fields: value)

				case "updateProject":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateProjectPayload(fields: value)

				case "updateProjectCard":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateProjectCardPayload(fields: value)

				case "updateProjectColumn":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateProjectColumnPayload(fields: value)

				case "updatePullRequest":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdatePullRequestPayload(fields: value)

				case "updatePullRequestReview":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdatePullRequestReviewPayload(fields: value)

				case "updatePullRequestReviewComment":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdatePullRequestReviewCommentPayload(fields: value)

				case "updateRef":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateRefPayload(fields: value)

				case "updateRepository":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateRepositoryPayload(fields: value)

				case "updateSubscription":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateSubscriptionPayload(fields: value)

				case "updateTeamDiscussion":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateTeamDiscussionPayload(fields: value)

				case "updateTeamDiscussionComment":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateTeamDiscussionCommentPayload(fields: value)

				case "updateTopics":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
				}
				return try UpdateTopicsPayload(fields: value)

				default:
				throw SchemaViolationError(type: Mutation.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Mutation" }

		open var acceptEnterpriseAdministratorInvitation: ExampleSchema.AcceptEnterpriseAdministratorInvitationPayload? {
			return internalGetAcceptEnterpriseAdministratorInvitation()
		}

		open func aliasedAcceptEnterpriseAdministratorInvitation(aliasSuffix: String) -> ExampleSchema.AcceptEnterpriseAdministratorInvitationPayload? {
			return internalGetAcceptEnterpriseAdministratorInvitation(aliasSuffix: aliasSuffix)
		}

		func internalGetAcceptEnterpriseAdministratorInvitation(aliasSuffix: String? = nil) -> ExampleSchema.AcceptEnterpriseAdministratorInvitationPayload? {
			return field(field: "acceptEnterpriseAdministratorInvitation", aliasSuffix: aliasSuffix) as! ExampleSchema.AcceptEnterpriseAdministratorInvitationPayload?
		}

		open var acceptTopicSuggestion: ExampleSchema.AcceptTopicSuggestionPayload? {
			return internalGetAcceptTopicSuggestion()
		}

		open func aliasedAcceptTopicSuggestion(aliasSuffix: String) -> ExampleSchema.AcceptTopicSuggestionPayload? {
			return internalGetAcceptTopicSuggestion(aliasSuffix: aliasSuffix)
		}

		func internalGetAcceptTopicSuggestion(aliasSuffix: String? = nil) -> ExampleSchema.AcceptTopicSuggestionPayload? {
			return field(field: "acceptTopicSuggestion", aliasSuffix: aliasSuffix) as! ExampleSchema.AcceptTopicSuggestionPayload?
		}

		open var addAssigneesToAssignable: ExampleSchema.AddAssigneesToAssignablePayload? {
			return internalGetAddAssigneesToAssignable()
		}

		open func aliasedAddAssigneesToAssignable(aliasSuffix: String) -> ExampleSchema.AddAssigneesToAssignablePayload? {
			return internalGetAddAssigneesToAssignable(aliasSuffix: aliasSuffix)
		}

		func internalGetAddAssigneesToAssignable(aliasSuffix: String? = nil) -> ExampleSchema.AddAssigneesToAssignablePayload? {
			return field(field: "addAssigneesToAssignable", aliasSuffix: aliasSuffix) as! ExampleSchema.AddAssigneesToAssignablePayload?
		}

		open var addComment: ExampleSchema.AddCommentPayload? {
			return internalGetAddComment()
		}

		open func aliasedAddComment(aliasSuffix: String) -> ExampleSchema.AddCommentPayload? {
			return internalGetAddComment(aliasSuffix: aliasSuffix)
		}

		func internalGetAddComment(aliasSuffix: String? = nil) -> ExampleSchema.AddCommentPayload? {
			return field(field: "addComment", aliasSuffix: aliasSuffix) as! ExampleSchema.AddCommentPayload?
		}

		open var addLabelsToLabelable: ExampleSchema.AddLabelsToLabelablePayload? {
			return internalGetAddLabelsToLabelable()
		}

		open func aliasedAddLabelsToLabelable(aliasSuffix: String) -> ExampleSchema.AddLabelsToLabelablePayload? {
			return internalGetAddLabelsToLabelable(aliasSuffix: aliasSuffix)
		}

		func internalGetAddLabelsToLabelable(aliasSuffix: String? = nil) -> ExampleSchema.AddLabelsToLabelablePayload? {
			return field(field: "addLabelsToLabelable", aliasSuffix: aliasSuffix) as! ExampleSchema.AddLabelsToLabelablePayload?
		}

		open var addProjectCard: ExampleSchema.AddProjectCardPayload? {
			return internalGetAddProjectCard()
		}

		open func aliasedAddProjectCard(aliasSuffix: String) -> ExampleSchema.AddProjectCardPayload? {
			return internalGetAddProjectCard(aliasSuffix: aliasSuffix)
		}

		func internalGetAddProjectCard(aliasSuffix: String? = nil) -> ExampleSchema.AddProjectCardPayload? {
			return field(field: "addProjectCard", aliasSuffix: aliasSuffix) as! ExampleSchema.AddProjectCardPayload?
		}

		open var addProjectColumn: ExampleSchema.AddProjectColumnPayload? {
			return internalGetAddProjectColumn()
		}

		open func aliasedAddProjectColumn(aliasSuffix: String) -> ExampleSchema.AddProjectColumnPayload? {
			return internalGetAddProjectColumn(aliasSuffix: aliasSuffix)
		}

		func internalGetAddProjectColumn(aliasSuffix: String? = nil) -> ExampleSchema.AddProjectColumnPayload? {
			return field(field: "addProjectColumn", aliasSuffix: aliasSuffix) as! ExampleSchema.AddProjectColumnPayload?
		}

		open var addPullRequestReview: ExampleSchema.AddPullRequestReviewPayload? {
			return internalGetAddPullRequestReview()
		}

		open func aliasedAddPullRequestReview(aliasSuffix: String) -> ExampleSchema.AddPullRequestReviewPayload? {
			return internalGetAddPullRequestReview(aliasSuffix: aliasSuffix)
		}

		func internalGetAddPullRequestReview(aliasSuffix: String? = nil) -> ExampleSchema.AddPullRequestReviewPayload? {
			return field(field: "addPullRequestReview", aliasSuffix: aliasSuffix) as! ExampleSchema.AddPullRequestReviewPayload?
		}

		open var addPullRequestReviewComment: ExampleSchema.AddPullRequestReviewCommentPayload? {
			return internalGetAddPullRequestReviewComment()
		}

		open func aliasedAddPullRequestReviewComment(aliasSuffix: String) -> ExampleSchema.AddPullRequestReviewCommentPayload? {
			return internalGetAddPullRequestReviewComment(aliasSuffix: aliasSuffix)
		}

		func internalGetAddPullRequestReviewComment(aliasSuffix: String? = nil) -> ExampleSchema.AddPullRequestReviewCommentPayload? {
			return field(field: "addPullRequestReviewComment", aliasSuffix: aliasSuffix) as! ExampleSchema.AddPullRequestReviewCommentPayload?
		}

		open var addPullRequestReviewThread: ExampleSchema.AddPullRequestReviewThreadPayload? {
			return internalGetAddPullRequestReviewThread()
		}

		open func aliasedAddPullRequestReviewThread(aliasSuffix: String) -> ExampleSchema.AddPullRequestReviewThreadPayload? {
			return internalGetAddPullRequestReviewThread(aliasSuffix: aliasSuffix)
		}

		func internalGetAddPullRequestReviewThread(aliasSuffix: String? = nil) -> ExampleSchema.AddPullRequestReviewThreadPayload? {
			return field(field: "addPullRequestReviewThread", aliasSuffix: aliasSuffix) as! ExampleSchema.AddPullRequestReviewThreadPayload?
		}

		open var addReaction: ExampleSchema.AddReactionPayload? {
			return internalGetAddReaction()
		}

		open func aliasedAddReaction(aliasSuffix: String) -> ExampleSchema.AddReactionPayload? {
			return internalGetAddReaction(aliasSuffix: aliasSuffix)
		}

		func internalGetAddReaction(aliasSuffix: String? = nil) -> ExampleSchema.AddReactionPayload? {
			return field(field: "addReaction", aliasSuffix: aliasSuffix) as! ExampleSchema.AddReactionPayload?
		}

		open var addStar: ExampleSchema.AddStarPayload? {
			return internalGetAddStar()
		}

		open func aliasedAddStar(aliasSuffix: String) -> ExampleSchema.AddStarPayload? {
			return internalGetAddStar(aliasSuffix: aliasSuffix)
		}

		func internalGetAddStar(aliasSuffix: String? = nil) -> ExampleSchema.AddStarPayload? {
			return field(field: "addStar", aliasSuffix: aliasSuffix) as! ExampleSchema.AddStarPayload?
		}

		open var archiveRepository: ExampleSchema.ArchiveRepositoryPayload? {
			return internalGetArchiveRepository()
		}

		open func aliasedArchiveRepository(aliasSuffix: String) -> ExampleSchema.ArchiveRepositoryPayload? {
			return internalGetArchiveRepository(aliasSuffix: aliasSuffix)
		}

		func internalGetArchiveRepository(aliasSuffix: String? = nil) -> ExampleSchema.ArchiveRepositoryPayload? {
			return field(field: "archiveRepository", aliasSuffix: aliasSuffix) as! ExampleSchema.ArchiveRepositoryPayload?
		}

		open var cancelEnterpriseAdminInvitation: ExampleSchema.CancelEnterpriseAdminInvitationPayload? {
			return internalGetCancelEnterpriseAdminInvitation()
		}

		open func aliasedCancelEnterpriseAdminInvitation(aliasSuffix: String) -> ExampleSchema.CancelEnterpriseAdminInvitationPayload? {
			return internalGetCancelEnterpriseAdminInvitation(aliasSuffix: aliasSuffix)
		}

		func internalGetCancelEnterpriseAdminInvitation(aliasSuffix: String? = nil) -> ExampleSchema.CancelEnterpriseAdminInvitationPayload? {
			return field(field: "cancelEnterpriseAdminInvitation", aliasSuffix: aliasSuffix) as! ExampleSchema.CancelEnterpriseAdminInvitationPayload?
		}

		open var changeUserStatus: ExampleSchema.ChangeUserStatusPayload? {
			return internalGetChangeUserStatus()
		}

		open func aliasedChangeUserStatus(aliasSuffix: String) -> ExampleSchema.ChangeUserStatusPayload? {
			return internalGetChangeUserStatus(aliasSuffix: aliasSuffix)
		}

		func internalGetChangeUserStatus(aliasSuffix: String? = nil) -> ExampleSchema.ChangeUserStatusPayload? {
			return field(field: "changeUserStatus", aliasSuffix: aliasSuffix) as! ExampleSchema.ChangeUserStatusPayload?
		}

		open var clearLabelsFromLabelable: ExampleSchema.ClearLabelsFromLabelablePayload? {
			return internalGetClearLabelsFromLabelable()
		}

		open func aliasedClearLabelsFromLabelable(aliasSuffix: String) -> ExampleSchema.ClearLabelsFromLabelablePayload? {
			return internalGetClearLabelsFromLabelable(aliasSuffix: aliasSuffix)
		}

		func internalGetClearLabelsFromLabelable(aliasSuffix: String? = nil) -> ExampleSchema.ClearLabelsFromLabelablePayload? {
			return field(field: "clearLabelsFromLabelable", aliasSuffix: aliasSuffix) as! ExampleSchema.ClearLabelsFromLabelablePayload?
		}

		open var cloneProject: ExampleSchema.CloneProjectPayload? {
			return internalGetCloneProject()
		}

		open func aliasedCloneProject(aliasSuffix: String) -> ExampleSchema.CloneProjectPayload? {
			return internalGetCloneProject(aliasSuffix: aliasSuffix)
		}

		func internalGetCloneProject(aliasSuffix: String? = nil) -> ExampleSchema.CloneProjectPayload? {
			return field(field: "cloneProject", aliasSuffix: aliasSuffix) as! ExampleSchema.CloneProjectPayload?
		}

		open var cloneTemplateRepository: ExampleSchema.CloneTemplateRepositoryPayload? {
			return internalGetCloneTemplateRepository()
		}

		open func aliasedCloneTemplateRepository(aliasSuffix: String) -> ExampleSchema.CloneTemplateRepositoryPayload? {
			return internalGetCloneTemplateRepository(aliasSuffix: aliasSuffix)
		}

		func internalGetCloneTemplateRepository(aliasSuffix: String? = nil) -> ExampleSchema.CloneTemplateRepositoryPayload? {
			return field(field: "cloneTemplateRepository", aliasSuffix: aliasSuffix) as! ExampleSchema.CloneTemplateRepositoryPayload?
		}

		open var closeIssue: ExampleSchema.CloseIssuePayload? {
			return internalGetCloseIssue()
		}

		open func aliasedCloseIssue(aliasSuffix: String) -> ExampleSchema.CloseIssuePayload? {
			return internalGetCloseIssue(aliasSuffix: aliasSuffix)
		}

		func internalGetCloseIssue(aliasSuffix: String? = nil) -> ExampleSchema.CloseIssuePayload? {
			return field(field: "closeIssue", aliasSuffix: aliasSuffix) as! ExampleSchema.CloseIssuePayload?
		}

		open var closePullRequest: ExampleSchema.ClosePullRequestPayload? {
			return internalGetClosePullRequest()
		}

		open func aliasedClosePullRequest(aliasSuffix: String) -> ExampleSchema.ClosePullRequestPayload? {
			return internalGetClosePullRequest(aliasSuffix: aliasSuffix)
		}

		func internalGetClosePullRequest(aliasSuffix: String? = nil) -> ExampleSchema.ClosePullRequestPayload? {
			return field(field: "closePullRequest", aliasSuffix: aliasSuffix) as! ExampleSchema.ClosePullRequestPayload?
		}

		open var convertProjectCardNoteToIssue: ExampleSchema.ConvertProjectCardNoteToIssuePayload? {
			return internalGetConvertProjectCardNoteToIssue()
		}

		open func aliasedConvertProjectCardNoteToIssue(aliasSuffix: String) -> ExampleSchema.ConvertProjectCardNoteToIssuePayload? {
			return internalGetConvertProjectCardNoteToIssue(aliasSuffix: aliasSuffix)
		}

		func internalGetConvertProjectCardNoteToIssue(aliasSuffix: String? = nil) -> ExampleSchema.ConvertProjectCardNoteToIssuePayload? {
			return field(field: "convertProjectCardNoteToIssue", aliasSuffix: aliasSuffix) as! ExampleSchema.ConvertProjectCardNoteToIssuePayload?
		}

		open var createBranchProtectionRule: ExampleSchema.CreateBranchProtectionRulePayload? {
			return internalGetCreateBranchProtectionRule()
		}

		open func aliasedCreateBranchProtectionRule(aliasSuffix: String) -> ExampleSchema.CreateBranchProtectionRulePayload? {
			return internalGetCreateBranchProtectionRule(aliasSuffix: aliasSuffix)
		}

		func internalGetCreateBranchProtectionRule(aliasSuffix: String? = nil) -> ExampleSchema.CreateBranchProtectionRulePayload? {
			return field(field: "createBranchProtectionRule", aliasSuffix: aliasSuffix) as! ExampleSchema.CreateBranchProtectionRulePayload?
		}

		open var createEnterpriseOrganization: ExampleSchema.CreateEnterpriseOrganizationPayload? {
			return internalGetCreateEnterpriseOrganization()
		}

		open func aliasedCreateEnterpriseOrganization(aliasSuffix: String) -> ExampleSchema.CreateEnterpriseOrganizationPayload? {
			return internalGetCreateEnterpriseOrganization(aliasSuffix: aliasSuffix)
		}

		func internalGetCreateEnterpriseOrganization(aliasSuffix: String? = nil) -> ExampleSchema.CreateEnterpriseOrganizationPayload? {
			return field(field: "createEnterpriseOrganization", aliasSuffix: aliasSuffix) as! ExampleSchema.CreateEnterpriseOrganizationPayload?
		}

		open var createIpAllowListEntry: ExampleSchema.CreateIpAllowListEntryPayload? {
			return internalGetCreateIpAllowListEntry()
		}

		open func aliasedCreateIpAllowListEntry(aliasSuffix: String) -> ExampleSchema.CreateIpAllowListEntryPayload? {
			return internalGetCreateIpAllowListEntry(aliasSuffix: aliasSuffix)
		}

		func internalGetCreateIpAllowListEntry(aliasSuffix: String? = nil) -> ExampleSchema.CreateIpAllowListEntryPayload? {
			return field(field: "createIpAllowListEntry", aliasSuffix: aliasSuffix) as! ExampleSchema.CreateIpAllowListEntryPayload?
		}

		open var createIssue: ExampleSchema.CreateIssuePayload? {
			return internalGetCreateIssue()
		}

		open func aliasedCreateIssue(aliasSuffix: String) -> ExampleSchema.CreateIssuePayload? {
			return internalGetCreateIssue(aliasSuffix: aliasSuffix)
		}

		func internalGetCreateIssue(aliasSuffix: String? = nil) -> ExampleSchema.CreateIssuePayload? {
			return field(field: "createIssue", aliasSuffix: aliasSuffix) as! ExampleSchema.CreateIssuePayload?
		}

		open var createProject: ExampleSchema.CreateProjectPayload? {
			return internalGetCreateProject()
		}

		open func aliasedCreateProject(aliasSuffix: String) -> ExampleSchema.CreateProjectPayload? {
			return internalGetCreateProject(aliasSuffix: aliasSuffix)
		}

		func internalGetCreateProject(aliasSuffix: String? = nil) -> ExampleSchema.CreateProjectPayload? {
			return field(field: "createProject", aliasSuffix: aliasSuffix) as! ExampleSchema.CreateProjectPayload?
		}

		open var createPullRequest: ExampleSchema.CreatePullRequestPayload? {
			return internalGetCreatePullRequest()
		}

		open func aliasedCreatePullRequest(aliasSuffix: String) -> ExampleSchema.CreatePullRequestPayload? {
			return internalGetCreatePullRequest(aliasSuffix: aliasSuffix)
		}

		func internalGetCreatePullRequest(aliasSuffix: String? = nil) -> ExampleSchema.CreatePullRequestPayload? {
			return field(field: "createPullRequest", aliasSuffix: aliasSuffix) as! ExampleSchema.CreatePullRequestPayload?
		}

		open var createRef: ExampleSchema.CreateRefPayload? {
			return internalGetCreateRef()
		}

		open func aliasedCreateRef(aliasSuffix: String) -> ExampleSchema.CreateRefPayload? {
			return internalGetCreateRef(aliasSuffix: aliasSuffix)
		}

		func internalGetCreateRef(aliasSuffix: String? = nil) -> ExampleSchema.CreateRefPayload? {
			return field(field: "createRef", aliasSuffix: aliasSuffix) as! ExampleSchema.CreateRefPayload?
		}

		open var createRepository: ExampleSchema.CreateRepositoryPayload? {
			return internalGetCreateRepository()
		}

		open func aliasedCreateRepository(aliasSuffix: String) -> ExampleSchema.CreateRepositoryPayload? {
			return internalGetCreateRepository(aliasSuffix: aliasSuffix)
		}

		func internalGetCreateRepository(aliasSuffix: String? = nil) -> ExampleSchema.CreateRepositoryPayload? {
			return field(field: "createRepository", aliasSuffix: aliasSuffix) as! ExampleSchema.CreateRepositoryPayload?
		}

		open var createTeamDiscussion: ExampleSchema.CreateTeamDiscussionPayload? {
			return internalGetCreateTeamDiscussion()
		}

		open func aliasedCreateTeamDiscussion(aliasSuffix: String) -> ExampleSchema.CreateTeamDiscussionPayload? {
			return internalGetCreateTeamDiscussion(aliasSuffix: aliasSuffix)
		}

		func internalGetCreateTeamDiscussion(aliasSuffix: String? = nil) -> ExampleSchema.CreateTeamDiscussionPayload? {
			return field(field: "createTeamDiscussion", aliasSuffix: aliasSuffix) as! ExampleSchema.CreateTeamDiscussionPayload?
		}

		open var createTeamDiscussionComment: ExampleSchema.CreateTeamDiscussionCommentPayload? {
			return internalGetCreateTeamDiscussionComment()
		}

		open func aliasedCreateTeamDiscussionComment(aliasSuffix: String) -> ExampleSchema.CreateTeamDiscussionCommentPayload? {
			return internalGetCreateTeamDiscussionComment(aliasSuffix: aliasSuffix)
		}

		func internalGetCreateTeamDiscussionComment(aliasSuffix: String? = nil) -> ExampleSchema.CreateTeamDiscussionCommentPayload? {
			return field(field: "createTeamDiscussionComment", aliasSuffix: aliasSuffix) as! ExampleSchema.CreateTeamDiscussionCommentPayload?
		}

		open var declineTopicSuggestion: ExampleSchema.DeclineTopicSuggestionPayload? {
			return internalGetDeclineTopicSuggestion()
		}

		open func aliasedDeclineTopicSuggestion(aliasSuffix: String) -> ExampleSchema.DeclineTopicSuggestionPayload? {
			return internalGetDeclineTopicSuggestion(aliasSuffix: aliasSuffix)
		}

		func internalGetDeclineTopicSuggestion(aliasSuffix: String? = nil) -> ExampleSchema.DeclineTopicSuggestionPayload? {
			return field(field: "declineTopicSuggestion", aliasSuffix: aliasSuffix) as! ExampleSchema.DeclineTopicSuggestionPayload?
		}

		open var deleteBranchProtectionRule: ExampleSchema.DeleteBranchProtectionRulePayload? {
			return internalGetDeleteBranchProtectionRule()
		}

		open func aliasedDeleteBranchProtectionRule(aliasSuffix: String) -> ExampleSchema.DeleteBranchProtectionRulePayload? {
			return internalGetDeleteBranchProtectionRule(aliasSuffix: aliasSuffix)
		}

		func internalGetDeleteBranchProtectionRule(aliasSuffix: String? = nil) -> ExampleSchema.DeleteBranchProtectionRulePayload? {
			return field(field: "deleteBranchProtectionRule", aliasSuffix: aliasSuffix) as! ExampleSchema.DeleteBranchProtectionRulePayload?
		}

		open var deleteDeployment: ExampleSchema.DeleteDeploymentPayload? {
			return internalGetDeleteDeployment()
		}

		open func aliasedDeleteDeployment(aliasSuffix: String) -> ExampleSchema.DeleteDeploymentPayload? {
			return internalGetDeleteDeployment(aliasSuffix: aliasSuffix)
		}

		func internalGetDeleteDeployment(aliasSuffix: String? = nil) -> ExampleSchema.DeleteDeploymentPayload? {
			return field(field: "deleteDeployment", aliasSuffix: aliasSuffix) as! ExampleSchema.DeleteDeploymentPayload?
		}

		open var deleteIpAllowListEntry: ExampleSchema.DeleteIpAllowListEntryPayload? {
			return internalGetDeleteIpAllowListEntry()
		}

		open func aliasedDeleteIpAllowListEntry(aliasSuffix: String) -> ExampleSchema.DeleteIpAllowListEntryPayload? {
			return internalGetDeleteIpAllowListEntry(aliasSuffix: aliasSuffix)
		}

		func internalGetDeleteIpAllowListEntry(aliasSuffix: String? = nil) -> ExampleSchema.DeleteIpAllowListEntryPayload? {
			return field(field: "deleteIpAllowListEntry", aliasSuffix: aliasSuffix) as! ExampleSchema.DeleteIpAllowListEntryPayload?
		}

		open var deleteIssue: ExampleSchema.DeleteIssuePayload? {
			return internalGetDeleteIssue()
		}

		open func aliasedDeleteIssue(aliasSuffix: String) -> ExampleSchema.DeleteIssuePayload? {
			return internalGetDeleteIssue(aliasSuffix: aliasSuffix)
		}

		func internalGetDeleteIssue(aliasSuffix: String? = nil) -> ExampleSchema.DeleteIssuePayload? {
			return field(field: "deleteIssue", aliasSuffix: aliasSuffix) as! ExampleSchema.DeleteIssuePayload?
		}

		open var deleteIssueComment: ExampleSchema.DeleteIssueCommentPayload? {
			return internalGetDeleteIssueComment()
		}

		open func aliasedDeleteIssueComment(aliasSuffix: String) -> ExampleSchema.DeleteIssueCommentPayload? {
			return internalGetDeleteIssueComment(aliasSuffix: aliasSuffix)
		}

		func internalGetDeleteIssueComment(aliasSuffix: String? = nil) -> ExampleSchema.DeleteIssueCommentPayload? {
			return field(field: "deleteIssueComment", aliasSuffix: aliasSuffix) as! ExampleSchema.DeleteIssueCommentPayload?
		}

		open var deleteProject: ExampleSchema.DeleteProjectPayload? {
			return internalGetDeleteProject()
		}

		open func aliasedDeleteProject(aliasSuffix: String) -> ExampleSchema.DeleteProjectPayload? {
			return internalGetDeleteProject(aliasSuffix: aliasSuffix)
		}

		func internalGetDeleteProject(aliasSuffix: String? = nil) -> ExampleSchema.DeleteProjectPayload? {
			return field(field: "deleteProject", aliasSuffix: aliasSuffix) as! ExampleSchema.DeleteProjectPayload?
		}

		open var deleteProjectCard: ExampleSchema.DeleteProjectCardPayload? {
			return internalGetDeleteProjectCard()
		}

		open func aliasedDeleteProjectCard(aliasSuffix: String) -> ExampleSchema.DeleteProjectCardPayload? {
			return internalGetDeleteProjectCard(aliasSuffix: aliasSuffix)
		}

		func internalGetDeleteProjectCard(aliasSuffix: String? = nil) -> ExampleSchema.DeleteProjectCardPayload? {
			return field(field: "deleteProjectCard", aliasSuffix: aliasSuffix) as! ExampleSchema.DeleteProjectCardPayload?
		}

		open var deleteProjectColumn: ExampleSchema.DeleteProjectColumnPayload? {
			return internalGetDeleteProjectColumn()
		}

		open func aliasedDeleteProjectColumn(aliasSuffix: String) -> ExampleSchema.DeleteProjectColumnPayload? {
			return internalGetDeleteProjectColumn(aliasSuffix: aliasSuffix)
		}

		func internalGetDeleteProjectColumn(aliasSuffix: String? = nil) -> ExampleSchema.DeleteProjectColumnPayload? {
			return field(field: "deleteProjectColumn", aliasSuffix: aliasSuffix) as! ExampleSchema.DeleteProjectColumnPayload?
		}

		open var deletePullRequestReview: ExampleSchema.DeletePullRequestReviewPayload? {
			return internalGetDeletePullRequestReview()
		}

		open func aliasedDeletePullRequestReview(aliasSuffix: String) -> ExampleSchema.DeletePullRequestReviewPayload? {
			return internalGetDeletePullRequestReview(aliasSuffix: aliasSuffix)
		}

		func internalGetDeletePullRequestReview(aliasSuffix: String? = nil) -> ExampleSchema.DeletePullRequestReviewPayload? {
			return field(field: "deletePullRequestReview", aliasSuffix: aliasSuffix) as! ExampleSchema.DeletePullRequestReviewPayload?
		}

		open var deletePullRequestReviewComment: ExampleSchema.DeletePullRequestReviewCommentPayload? {
			return internalGetDeletePullRequestReviewComment()
		}

		open func aliasedDeletePullRequestReviewComment(aliasSuffix: String) -> ExampleSchema.DeletePullRequestReviewCommentPayload? {
			return internalGetDeletePullRequestReviewComment(aliasSuffix: aliasSuffix)
		}

		func internalGetDeletePullRequestReviewComment(aliasSuffix: String? = nil) -> ExampleSchema.DeletePullRequestReviewCommentPayload? {
			return field(field: "deletePullRequestReviewComment", aliasSuffix: aliasSuffix) as! ExampleSchema.DeletePullRequestReviewCommentPayload?
		}

		open var deleteRef: ExampleSchema.DeleteRefPayload? {
			return internalGetDeleteRef()
		}

		open func aliasedDeleteRef(aliasSuffix: String) -> ExampleSchema.DeleteRefPayload? {
			return internalGetDeleteRef(aliasSuffix: aliasSuffix)
		}

		func internalGetDeleteRef(aliasSuffix: String? = nil) -> ExampleSchema.DeleteRefPayload? {
			return field(field: "deleteRef", aliasSuffix: aliasSuffix) as! ExampleSchema.DeleteRefPayload?
		}

		open var deleteTeamDiscussion: ExampleSchema.DeleteTeamDiscussionPayload? {
			return internalGetDeleteTeamDiscussion()
		}

		open func aliasedDeleteTeamDiscussion(aliasSuffix: String) -> ExampleSchema.DeleteTeamDiscussionPayload? {
			return internalGetDeleteTeamDiscussion(aliasSuffix: aliasSuffix)
		}

		func internalGetDeleteTeamDiscussion(aliasSuffix: String? = nil) -> ExampleSchema.DeleteTeamDiscussionPayload? {
			return field(field: "deleteTeamDiscussion", aliasSuffix: aliasSuffix) as! ExampleSchema.DeleteTeamDiscussionPayload?
		}

		open var deleteTeamDiscussionComment: ExampleSchema.DeleteTeamDiscussionCommentPayload? {
			return internalGetDeleteTeamDiscussionComment()
		}

		open func aliasedDeleteTeamDiscussionComment(aliasSuffix: String) -> ExampleSchema.DeleteTeamDiscussionCommentPayload? {
			return internalGetDeleteTeamDiscussionComment(aliasSuffix: aliasSuffix)
		}

		func internalGetDeleteTeamDiscussionComment(aliasSuffix: String? = nil) -> ExampleSchema.DeleteTeamDiscussionCommentPayload? {
			return field(field: "deleteTeamDiscussionComment", aliasSuffix: aliasSuffix) as! ExampleSchema.DeleteTeamDiscussionCommentPayload?
		}

		open var dismissPullRequestReview: ExampleSchema.DismissPullRequestReviewPayload? {
			return internalGetDismissPullRequestReview()
		}

		open func aliasedDismissPullRequestReview(aliasSuffix: String) -> ExampleSchema.DismissPullRequestReviewPayload? {
			return internalGetDismissPullRequestReview(aliasSuffix: aliasSuffix)
		}

		func internalGetDismissPullRequestReview(aliasSuffix: String? = nil) -> ExampleSchema.DismissPullRequestReviewPayload? {
			return field(field: "dismissPullRequestReview", aliasSuffix: aliasSuffix) as! ExampleSchema.DismissPullRequestReviewPayload?
		}

		open var followUser: ExampleSchema.FollowUserPayload? {
			return internalGetFollowUser()
		}

		open func aliasedFollowUser(aliasSuffix: String) -> ExampleSchema.FollowUserPayload? {
			return internalGetFollowUser(aliasSuffix: aliasSuffix)
		}

		func internalGetFollowUser(aliasSuffix: String? = nil) -> ExampleSchema.FollowUserPayload? {
			return field(field: "followUser", aliasSuffix: aliasSuffix) as! ExampleSchema.FollowUserPayload?
		}

		open var inviteEnterpriseAdmin: ExampleSchema.InviteEnterpriseAdminPayload? {
			return internalGetInviteEnterpriseAdmin()
		}

		open func aliasedInviteEnterpriseAdmin(aliasSuffix: String) -> ExampleSchema.InviteEnterpriseAdminPayload? {
			return internalGetInviteEnterpriseAdmin(aliasSuffix: aliasSuffix)
		}

		func internalGetInviteEnterpriseAdmin(aliasSuffix: String? = nil) -> ExampleSchema.InviteEnterpriseAdminPayload? {
			return field(field: "inviteEnterpriseAdmin", aliasSuffix: aliasSuffix) as! ExampleSchema.InviteEnterpriseAdminPayload?
		}

		open var linkRepositoryToProject: ExampleSchema.LinkRepositoryToProjectPayload? {
			return internalGetLinkRepositoryToProject()
		}

		open func aliasedLinkRepositoryToProject(aliasSuffix: String) -> ExampleSchema.LinkRepositoryToProjectPayload? {
			return internalGetLinkRepositoryToProject(aliasSuffix: aliasSuffix)
		}

		func internalGetLinkRepositoryToProject(aliasSuffix: String? = nil) -> ExampleSchema.LinkRepositoryToProjectPayload? {
			return field(field: "linkRepositoryToProject", aliasSuffix: aliasSuffix) as! ExampleSchema.LinkRepositoryToProjectPayload?
		}

		open var lockLockable: ExampleSchema.LockLockablePayload? {
			return internalGetLockLockable()
		}

		open func aliasedLockLockable(aliasSuffix: String) -> ExampleSchema.LockLockablePayload? {
			return internalGetLockLockable(aliasSuffix: aliasSuffix)
		}

		func internalGetLockLockable(aliasSuffix: String? = nil) -> ExampleSchema.LockLockablePayload? {
			return field(field: "lockLockable", aliasSuffix: aliasSuffix) as! ExampleSchema.LockLockablePayload?
		}

		open var markPullRequestReadyForReview: ExampleSchema.MarkPullRequestReadyForReviewPayload? {
			return internalGetMarkPullRequestReadyForReview()
		}

		open func aliasedMarkPullRequestReadyForReview(aliasSuffix: String) -> ExampleSchema.MarkPullRequestReadyForReviewPayload? {
			return internalGetMarkPullRequestReadyForReview(aliasSuffix: aliasSuffix)
		}

		func internalGetMarkPullRequestReadyForReview(aliasSuffix: String? = nil) -> ExampleSchema.MarkPullRequestReadyForReviewPayload? {
			return field(field: "markPullRequestReadyForReview", aliasSuffix: aliasSuffix) as! ExampleSchema.MarkPullRequestReadyForReviewPayload?
		}

		open var mergeBranch: ExampleSchema.MergeBranchPayload? {
			return internalGetMergeBranch()
		}

		open func aliasedMergeBranch(aliasSuffix: String) -> ExampleSchema.MergeBranchPayload? {
			return internalGetMergeBranch(aliasSuffix: aliasSuffix)
		}

		func internalGetMergeBranch(aliasSuffix: String? = nil) -> ExampleSchema.MergeBranchPayload? {
			return field(field: "mergeBranch", aliasSuffix: aliasSuffix) as! ExampleSchema.MergeBranchPayload?
		}

		open var mergePullRequest: ExampleSchema.MergePullRequestPayload? {
			return internalGetMergePullRequest()
		}

		open func aliasedMergePullRequest(aliasSuffix: String) -> ExampleSchema.MergePullRequestPayload? {
			return internalGetMergePullRequest(aliasSuffix: aliasSuffix)
		}

		func internalGetMergePullRequest(aliasSuffix: String? = nil) -> ExampleSchema.MergePullRequestPayload? {
			return field(field: "mergePullRequest", aliasSuffix: aliasSuffix) as! ExampleSchema.MergePullRequestPayload?
		}

		open var minimizeComment: ExampleSchema.MinimizeCommentPayload? {
			return internalGetMinimizeComment()
		}

		open func aliasedMinimizeComment(aliasSuffix: String) -> ExampleSchema.MinimizeCommentPayload? {
			return internalGetMinimizeComment(aliasSuffix: aliasSuffix)
		}

		func internalGetMinimizeComment(aliasSuffix: String? = nil) -> ExampleSchema.MinimizeCommentPayload? {
			return field(field: "minimizeComment", aliasSuffix: aliasSuffix) as! ExampleSchema.MinimizeCommentPayload?
		}

		open var moveProjectCard: ExampleSchema.MoveProjectCardPayload? {
			return internalGetMoveProjectCard()
		}

		open func aliasedMoveProjectCard(aliasSuffix: String) -> ExampleSchema.MoveProjectCardPayload? {
			return internalGetMoveProjectCard(aliasSuffix: aliasSuffix)
		}

		func internalGetMoveProjectCard(aliasSuffix: String? = nil) -> ExampleSchema.MoveProjectCardPayload? {
			return field(field: "moveProjectCard", aliasSuffix: aliasSuffix) as! ExampleSchema.MoveProjectCardPayload?
		}

		open var moveProjectColumn: ExampleSchema.MoveProjectColumnPayload? {
			return internalGetMoveProjectColumn()
		}

		open func aliasedMoveProjectColumn(aliasSuffix: String) -> ExampleSchema.MoveProjectColumnPayload? {
			return internalGetMoveProjectColumn(aliasSuffix: aliasSuffix)
		}

		func internalGetMoveProjectColumn(aliasSuffix: String? = nil) -> ExampleSchema.MoveProjectColumnPayload? {
			return field(field: "moveProjectColumn", aliasSuffix: aliasSuffix) as! ExampleSchema.MoveProjectColumnPayload?
		}

		open var regenerateEnterpriseIdentityProviderRecoveryCodes: ExampleSchema.RegenerateEnterpriseIdentityProviderRecoveryCodesPayload? {
			return internalGetRegenerateEnterpriseIdentityProviderRecoveryCodes()
		}

		open func aliasedRegenerateEnterpriseIdentityProviderRecoveryCodes(aliasSuffix: String) -> ExampleSchema.RegenerateEnterpriseIdentityProviderRecoveryCodesPayload? {
			return internalGetRegenerateEnterpriseIdentityProviderRecoveryCodes(aliasSuffix: aliasSuffix)
		}

		func internalGetRegenerateEnterpriseIdentityProviderRecoveryCodes(aliasSuffix: String? = nil) -> ExampleSchema.RegenerateEnterpriseIdentityProviderRecoveryCodesPayload? {
			return field(field: "regenerateEnterpriseIdentityProviderRecoveryCodes", aliasSuffix: aliasSuffix) as! ExampleSchema.RegenerateEnterpriseIdentityProviderRecoveryCodesPayload?
		}

		open var removeAssigneesFromAssignable: ExampleSchema.RemoveAssigneesFromAssignablePayload? {
			return internalGetRemoveAssigneesFromAssignable()
		}

		open func aliasedRemoveAssigneesFromAssignable(aliasSuffix: String) -> ExampleSchema.RemoveAssigneesFromAssignablePayload? {
			return internalGetRemoveAssigneesFromAssignable(aliasSuffix: aliasSuffix)
		}

		func internalGetRemoveAssigneesFromAssignable(aliasSuffix: String? = nil) -> ExampleSchema.RemoveAssigneesFromAssignablePayload? {
			return field(field: "removeAssigneesFromAssignable", aliasSuffix: aliasSuffix) as! ExampleSchema.RemoveAssigneesFromAssignablePayload?
		}

		open var removeEnterpriseAdmin: ExampleSchema.RemoveEnterpriseAdminPayload? {
			return internalGetRemoveEnterpriseAdmin()
		}

		open func aliasedRemoveEnterpriseAdmin(aliasSuffix: String) -> ExampleSchema.RemoveEnterpriseAdminPayload? {
			return internalGetRemoveEnterpriseAdmin(aliasSuffix: aliasSuffix)
		}

		func internalGetRemoveEnterpriseAdmin(aliasSuffix: String? = nil) -> ExampleSchema.RemoveEnterpriseAdminPayload? {
			return field(field: "removeEnterpriseAdmin", aliasSuffix: aliasSuffix) as! ExampleSchema.RemoveEnterpriseAdminPayload?
		}

		open var removeEnterpriseIdentityProvider: ExampleSchema.RemoveEnterpriseIdentityProviderPayload? {
			return internalGetRemoveEnterpriseIdentityProvider()
		}

		open func aliasedRemoveEnterpriseIdentityProvider(aliasSuffix: String) -> ExampleSchema.RemoveEnterpriseIdentityProviderPayload? {
			return internalGetRemoveEnterpriseIdentityProvider(aliasSuffix: aliasSuffix)
		}

		func internalGetRemoveEnterpriseIdentityProvider(aliasSuffix: String? = nil) -> ExampleSchema.RemoveEnterpriseIdentityProviderPayload? {
			return field(field: "removeEnterpriseIdentityProvider", aliasSuffix: aliasSuffix) as! ExampleSchema.RemoveEnterpriseIdentityProviderPayload?
		}

		open var removeEnterpriseOrganization: ExampleSchema.RemoveEnterpriseOrganizationPayload? {
			return internalGetRemoveEnterpriseOrganization()
		}

		open func aliasedRemoveEnterpriseOrganization(aliasSuffix: String) -> ExampleSchema.RemoveEnterpriseOrganizationPayload? {
			return internalGetRemoveEnterpriseOrganization(aliasSuffix: aliasSuffix)
		}

		func internalGetRemoveEnterpriseOrganization(aliasSuffix: String? = nil) -> ExampleSchema.RemoveEnterpriseOrganizationPayload? {
			return field(field: "removeEnterpriseOrganization", aliasSuffix: aliasSuffix) as! ExampleSchema.RemoveEnterpriseOrganizationPayload?
		}

		open var removeLabelsFromLabelable: ExampleSchema.RemoveLabelsFromLabelablePayload? {
			return internalGetRemoveLabelsFromLabelable()
		}

		open func aliasedRemoveLabelsFromLabelable(aliasSuffix: String) -> ExampleSchema.RemoveLabelsFromLabelablePayload? {
			return internalGetRemoveLabelsFromLabelable(aliasSuffix: aliasSuffix)
		}

		func internalGetRemoveLabelsFromLabelable(aliasSuffix: String? = nil) -> ExampleSchema.RemoveLabelsFromLabelablePayload? {
			return field(field: "removeLabelsFromLabelable", aliasSuffix: aliasSuffix) as! ExampleSchema.RemoveLabelsFromLabelablePayload?
		}

		open var removeOutsideCollaborator: ExampleSchema.RemoveOutsideCollaboratorPayload? {
			return internalGetRemoveOutsideCollaborator()
		}

		open func aliasedRemoveOutsideCollaborator(aliasSuffix: String) -> ExampleSchema.RemoveOutsideCollaboratorPayload? {
			return internalGetRemoveOutsideCollaborator(aliasSuffix: aliasSuffix)
		}

		func internalGetRemoveOutsideCollaborator(aliasSuffix: String? = nil) -> ExampleSchema.RemoveOutsideCollaboratorPayload? {
			return field(field: "removeOutsideCollaborator", aliasSuffix: aliasSuffix) as! ExampleSchema.RemoveOutsideCollaboratorPayload?
		}

		open var removeReaction: ExampleSchema.RemoveReactionPayload? {
			return internalGetRemoveReaction()
		}

		open func aliasedRemoveReaction(aliasSuffix: String) -> ExampleSchema.RemoveReactionPayload? {
			return internalGetRemoveReaction(aliasSuffix: aliasSuffix)
		}

		func internalGetRemoveReaction(aliasSuffix: String? = nil) -> ExampleSchema.RemoveReactionPayload? {
			return field(field: "removeReaction", aliasSuffix: aliasSuffix) as! ExampleSchema.RemoveReactionPayload?
		}

		open var removeStar: ExampleSchema.RemoveStarPayload? {
			return internalGetRemoveStar()
		}

		open func aliasedRemoveStar(aliasSuffix: String) -> ExampleSchema.RemoveStarPayload? {
			return internalGetRemoveStar(aliasSuffix: aliasSuffix)
		}

		func internalGetRemoveStar(aliasSuffix: String? = nil) -> ExampleSchema.RemoveStarPayload? {
			return field(field: "removeStar", aliasSuffix: aliasSuffix) as! ExampleSchema.RemoveStarPayload?
		}

		open var reopenIssue: ExampleSchema.ReopenIssuePayload? {
			return internalGetReopenIssue()
		}

		open func aliasedReopenIssue(aliasSuffix: String) -> ExampleSchema.ReopenIssuePayload? {
			return internalGetReopenIssue(aliasSuffix: aliasSuffix)
		}

		func internalGetReopenIssue(aliasSuffix: String? = nil) -> ExampleSchema.ReopenIssuePayload? {
			return field(field: "reopenIssue", aliasSuffix: aliasSuffix) as! ExampleSchema.ReopenIssuePayload?
		}

		open var reopenPullRequest: ExampleSchema.ReopenPullRequestPayload? {
			return internalGetReopenPullRequest()
		}

		open func aliasedReopenPullRequest(aliasSuffix: String) -> ExampleSchema.ReopenPullRequestPayload? {
			return internalGetReopenPullRequest(aliasSuffix: aliasSuffix)
		}

		func internalGetReopenPullRequest(aliasSuffix: String? = nil) -> ExampleSchema.ReopenPullRequestPayload? {
			return field(field: "reopenPullRequest", aliasSuffix: aliasSuffix) as! ExampleSchema.ReopenPullRequestPayload?
		}

		open var requestReviews: ExampleSchema.RequestReviewsPayload? {
			return internalGetRequestReviews()
		}

		open func aliasedRequestReviews(aliasSuffix: String) -> ExampleSchema.RequestReviewsPayload? {
			return internalGetRequestReviews(aliasSuffix: aliasSuffix)
		}

		func internalGetRequestReviews(aliasSuffix: String? = nil) -> ExampleSchema.RequestReviewsPayload? {
			return field(field: "requestReviews", aliasSuffix: aliasSuffix) as! ExampleSchema.RequestReviewsPayload?
		}

		open var resolveReviewThread: ExampleSchema.ResolveReviewThreadPayload? {
			return internalGetResolveReviewThread()
		}

		open func aliasedResolveReviewThread(aliasSuffix: String) -> ExampleSchema.ResolveReviewThreadPayload? {
			return internalGetResolveReviewThread(aliasSuffix: aliasSuffix)
		}

		func internalGetResolveReviewThread(aliasSuffix: String? = nil) -> ExampleSchema.ResolveReviewThreadPayload? {
			return field(field: "resolveReviewThread", aliasSuffix: aliasSuffix) as! ExampleSchema.ResolveReviewThreadPayload?
		}

		open var setEnterpriseIdentityProvider: ExampleSchema.SetEnterpriseIdentityProviderPayload? {
			return internalGetSetEnterpriseIdentityProvider()
		}

		open func aliasedSetEnterpriseIdentityProvider(aliasSuffix: String) -> ExampleSchema.SetEnterpriseIdentityProviderPayload? {
			return internalGetSetEnterpriseIdentityProvider(aliasSuffix: aliasSuffix)
		}

		func internalGetSetEnterpriseIdentityProvider(aliasSuffix: String? = nil) -> ExampleSchema.SetEnterpriseIdentityProviderPayload? {
			return field(field: "setEnterpriseIdentityProvider", aliasSuffix: aliasSuffix) as! ExampleSchema.SetEnterpriseIdentityProviderPayload?
		}

		open var submitPullRequestReview: ExampleSchema.SubmitPullRequestReviewPayload? {
			return internalGetSubmitPullRequestReview()
		}

		open func aliasedSubmitPullRequestReview(aliasSuffix: String) -> ExampleSchema.SubmitPullRequestReviewPayload? {
			return internalGetSubmitPullRequestReview(aliasSuffix: aliasSuffix)
		}

		func internalGetSubmitPullRequestReview(aliasSuffix: String? = nil) -> ExampleSchema.SubmitPullRequestReviewPayload? {
			return field(field: "submitPullRequestReview", aliasSuffix: aliasSuffix) as! ExampleSchema.SubmitPullRequestReviewPayload?
		}

		open var transferIssue: ExampleSchema.TransferIssuePayload? {
			return internalGetTransferIssue()
		}

		open func aliasedTransferIssue(aliasSuffix: String) -> ExampleSchema.TransferIssuePayload? {
			return internalGetTransferIssue(aliasSuffix: aliasSuffix)
		}

		func internalGetTransferIssue(aliasSuffix: String? = nil) -> ExampleSchema.TransferIssuePayload? {
			return field(field: "transferIssue", aliasSuffix: aliasSuffix) as! ExampleSchema.TransferIssuePayload?
		}

		open var unarchiveRepository: ExampleSchema.UnarchiveRepositoryPayload? {
			return internalGetUnarchiveRepository()
		}

		open func aliasedUnarchiveRepository(aliasSuffix: String) -> ExampleSchema.UnarchiveRepositoryPayload? {
			return internalGetUnarchiveRepository(aliasSuffix: aliasSuffix)
		}

		func internalGetUnarchiveRepository(aliasSuffix: String? = nil) -> ExampleSchema.UnarchiveRepositoryPayload? {
			return field(field: "unarchiveRepository", aliasSuffix: aliasSuffix) as! ExampleSchema.UnarchiveRepositoryPayload?
		}

		open var unfollowUser: ExampleSchema.UnfollowUserPayload? {
			return internalGetUnfollowUser()
		}

		open func aliasedUnfollowUser(aliasSuffix: String) -> ExampleSchema.UnfollowUserPayload? {
			return internalGetUnfollowUser(aliasSuffix: aliasSuffix)
		}

		func internalGetUnfollowUser(aliasSuffix: String? = nil) -> ExampleSchema.UnfollowUserPayload? {
			return field(field: "unfollowUser", aliasSuffix: aliasSuffix) as! ExampleSchema.UnfollowUserPayload?
		}

		open var unlinkRepositoryFromProject: ExampleSchema.UnlinkRepositoryFromProjectPayload? {
			return internalGetUnlinkRepositoryFromProject()
		}

		open func aliasedUnlinkRepositoryFromProject(aliasSuffix: String) -> ExampleSchema.UnlinkRepositoryFromProjectPayload? {
			return internalGetUnlinkRepositoryFromProject(aliasSuffix: aliasSuffix)
		}

		func internalGetUnlinkRepositoryFromProject(aliasSuffix: String? = nil) -> ExampleSchema.UnlinkRepositoryFromProjectPayload? {
			return field(field: "unlinkRepositoryFromProject", aliasSuffix: aliasSuffix) as! ExampleSchema.UnlinkRepositoryFromProjectPayload?
		}

		open var unlockLockable: ExampleSchema.UnlockLockablePayload? {
			return internalGetUnlockLockable()
		}

		open func aliasedUnlockLockable(aliasSuffix: String) -> ExampleSchema.UnlockLockablePayload? {
			return internalGetUnlockLockable(aliasSuffix: aliasSuffix)
		}

		func internalGetUnlockLockable(aliasSuffix: String? = nil) -> ExampleSchema.UnlockLockablePayload? {
			return field(field: "unlockLockable", aliasSuffix: aliasSuffix) as! ExampleSchema.UnlockLockablePayload?
		}

		open var unmarkIssueAsDuplicate: ExampleSchema.UnmarkIssueAsDuplicatePayload? {
			return internalGetUnmarkIssueAsDuplicate()
		}

		open func aliasedUnmarkIssueAsDuplicate(aliasSuffix: String) -> ExampleSchema.UnmarkIssueAsDuplicatePayload? {
			return internalGetUnmarkIssueAsDuplicate(aliasSuffix: aliasSuffix)
		}

		func internalGetUnmarkIssueAsDuplicate(aliasSuffix: String? = nil) -> ExampleSchema.UnmarkIssueAsDuplicatePayload? {
			return field(field: "unmarkIssueAsDuplicate", aliasSuffix: aliasSuffix) as! ExampleSchema.UnmarkIssueAsDuplicatePayload?
		}

		open var unminimizeComment: ExampleSchema.UnminimizeCommentPayload? {
			return internalGetUnminimizeComment()
		}

		open func aliasedUnminimizeComment(aliasSuffix: String) -> ExampleSchema.UnminimizeCommentPayload? {
			return internalGetUnminimizeComment(aliasSuffix: aliasSuffix)
		}

		func internalGetUnminimizeComment(aliasSuffix: String? = nil) -> ExampleSchema.UnminimizeCommentPayload? {
			return field(field: "unminimizeComment", aliasSuffix: aliasSuffix) as! ExampleSchema.UnminimizeCommentPayload?
		}

		open var unresolveReviewThread: ExampleSchema.UnresolveReviewThreadPayload? {
			return internalGetUnresolveReviewThread()
		}

		open func aliasedUnresolveReviewThread(aliasSuffix: String) -> ExampleSchema.UnresolveReviewThreadPayload? {
			return internalGetUnresolveReviewThread(aliasSuffix: aliasSuffix)
		}

		func internalGetUnresolveReviewThread(aliasSuffix: String? = nil) -> ExampleSchema.UnresolveReviewThreadPayload? {
			return field(field: "unresolveReviewThread", aliasSuffix: aliasSuffix) as! ExampleSchema.UnresolveReviewThreadPayload?
		}

		open var updateBranchProtectionRule: ExampleSchema.UpdateBranchProtectionRulePayload? {
			return internalGetUpdateBranchProtectionRule()
		}

		open func aliasedUpdateBranchProtectionRule(aliasSuffix: String) -> ExampleSchema.UpdateBranchProtectionRulePayload? {
			return internalGetUpdateBranchProtectionRule(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateBranchProtectionRule(aliasSuffix: String? = nil) -> ExampleSchema.UpdateBranchProtectionRulePayload? {
			return field(field: "updateBranchProtectionRule", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateBranchProtectionRulePayload?
		}

		open var updateEnterpriseActionExecutionCapabilitySetting: ExampleSchema.UpdateEnterpriseActionExecutionCapabilitySettingPayload? {
			return internalGetUpdateEnterpriseActionExecutionCapabilitySetting()
		}

		open func aliasedUpdateEnterpriseActionExecutionCapabilitySetting(aliasSuffix: String) -> ExampleSchema.UpdateEnterpriseActionExecutionCapabilitySettingPayload? {
			return internalGetUpdateEnterpriseActionExecutionCapabilitySetting(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateEnterpriseActionExecutionCapabilitySetting(aliasSuffix: String? = nil) -> ExampleSchema.UpdateEnterpriseActionExecutionCapabilitySettingPayload? {
			return field(field: "updateEnterpriseActionExecutionCapabilitySetting", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateEnterpriseActionExecutionCapabilitySettingPayload?
		}

		open var updateEnterpriseAdministratorRole: ExampleSchema.UpdateEnterpriseAdministratorRolePayload? {
			return internalGetUpdateEnterpriseAdministratorRole()
		}

		open func aliasedUpdateEnterpriseAdministratorRole(aliasSuffix: String) -> ExampleSchema.UpdateEnterpriseAdministratorRolePayload? {
			return internalGetUpdateEnterpriseAdministratorRole(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateEnterpriseAdministratorRole(aliasSuffix: String? = nil) -> ExampleSchema.UpdateEnterpriseAdministratorRolePayload? {
			return field(field: "updateEnterpriseAdministratorRole", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateEnterpriseAdministratorRolePayload?
		}

		open var updateEnterpriseAllowPrivateRepositoryForkingSetting: ExampleSchema.UpdateEnterpriseAllowPrivateRepositoryForkingSettingPayload? {
			return internalGetUpdateEnterpriseAllowPrivateRepositoryForkingSetting()
		}

		open func aliasedUpdateEnterpriseAllowPrivateRepositoryForkingSetting(aliasSuffix: String) -> ExampleSchema.UpdateEnterpriseAllowPrivateRepositoryForkingSettingPayload? {
			return internalGetUpdateEnterpriseAllowPrivateRepositoryForkingSetting(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateEnterpriseAllowPrivateRepositoryForkingSetting(aliasSuffix: String? = nil) -> ExampleSchema.UpdateEnterpriseAllowPrivateRepositoryForkingSettingPayload? {
			return field(field: "updateEnterpriseAllowPrivateRepositoryForkingSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateEnterpriseAllowPrivateRepositoryForkingSettingPayload?
		}

		open var updateEnterpriseDefaultRepositoryPermissionSetting: ExampleSchema.UpdateEnterpriseDefaultRepositoryPermissionSettingPayload? {
			return internalGetUpdateEnterpriseDefaultRepositoryPermissionSetting()
		}

		open func aliasedUpdateEnterpriseDefaultRepositoryPermissionSetting(aliasSuffix: String) -> ExampleSchema.UpdateEnterpriseDefaultRepositoryPermissionSettingPayload? {
			return internalGetUpdateEnterpriseDefaultRepositoryPermissionSetting(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateEnterpriseDefaultRepositoryPermissionSetting(aliasSuffix: String? = nil) -> ExampleSchema.UpdateEnterpriseDefaultRepositoryPermissionSettingPayload? {
			return field(field: "updateEnterpriseDefaultRepositoryPermissionSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateEnterpriseDefaultRepositoryPermissionSettingPayload?
		}

		open var updateEnterpriseMembersCanChangeRepositoryVisibilitySetting: ExampleSchema.UpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingPayload? {
			return internalGetUpdateEnterpriseMembersCanChangeRepositoryVisibilitySetting()
		}

		open func aliasedUpdateEnterpriseMembersCanChangeRepositoryVisibilitySetting(aliasSuffix: String) -> ExampleSchema.UpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingPayload? {
			return internalGetUpdateEnterpriseMembersCanChangeRepositoryVisibilitySetting(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateEnterpriseMembersCanChangeRepositoryVisibilitySetting(aliasSuffix: String? = nil) -> ExampleSchema.UpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingPayload? {
			return field(field: "updateEnterpriseMembersCanChangeRepositoryVisibilitySetting", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingPayload?
		}

		open var updateEnterpriseMembersCanCreateRepositoriesSetting: ExampleSchema.UpdateEnterpriseMembersCanCreateRepositoriesSettingPayload? {
			return internalGetUpdateEnterpriseMembersCanCreateRepositoriesSetting()
		}

		open func aliasedUpdateEnterpriseMembersCanCreateRepositoriesSetting(aliasSuffix: String) -> ExampleSchema.UpdateEnterpriseMembersCanCreateRepositoriesSettingPayload? {
			return internalGetUpdateEnterpriseMembersCanCreateRepositoriesSetting(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateEnterpriseMembersCanCreateRepositoriesSetting(aliasSuffix: String? = nil) -> ExampleSchema.UpdateEnterpriseMembersCanCreateRepositoriesSettingPayload? {
			return field(field: "updateEnterpriseMembersCanCreateRepositoriesSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateEnterpriseMembersCanCreateRepositoriesSettingPayload?
		}

		open var updateEnterpriseMembersCanDeleteIssuesSetting: ExampleSchema.UpdateEnterpriseMembersCanDeleteIssuesSettingPayload? {
			return internalGetUpdateEnterpriseMembersCanDeleteIssuesSetting()
		}

		open func aliasedUpdateEnterpriseMembersCanDeleteIssuesSetting(aliasSuffix: String) -> ExampleSchema.UpdateEnterpriseMembersCanDeleteIssuesSettingPayload? {
			return internalGetUpdateEnterpriseMembersCanDeleteIssuesSetting(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateEnterpriseMembersCanDeleteIssuesSetting(aliasSuffix: String? = nil) -> ExampleSchema.UpdateEnterpriseMembersCanDeleteIssuesSettingPayload? {
			return field(field: "updateEnterpriseMembersCanDeleteIssuesSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateEnterpriseMembersCanDeleteIssuesSettingPayload?
		}

		open var updateEnterpriseMembersCanDeleteRepositoriesSetting: ExampleSchema.UpdateEnterpriseMembersCanDeleteRepositoriesSettingPayload? {
			return internalGetUpdateEnterpriseMembersCanDeleteRepositoriesSetting()
		}

		open func aliasedUpdateEnterpriseMembersCanDeleteRepositoriesSetting(aliasSuffix: String) -> ExampleSchema.UpdateEnterpriseMembersCanDeleteRepositoriesSettingPayload? {
			return internalGetUpdateEnterpriseMembersCanDeleteRepositoriesSetting(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateEnterpriseMembersCanDeleteRepositoriesSetting(aliasSuffix: String? = nil) -> ExampleSchema.UpdateEnterpriseMembersCanDeleteRepositoriesSettingPayload? {
			return field(field: "updateEnterpriseMembersCanDeleteRepositoriesSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateEnterpriseMembersCanDeleteRepositoriesSettingPayload?
		}

		open var updateEnterpriseMembersCanInviteCollaboratorsSetting: ExampleSchema.UpdateEnterpriseMembersCanInviteCollaboratorsSettingPayload? {
			return internalGetUpdateEnterpriseMembersCanInviteCollaboratorsSetting()
		}

		open func aliasedUpdateEnterpriseMembersCanInviteCollaboratorsSetting(aliasSuffix: String) -> ExampleSchema.UpdateEnterpriseMembersCanInviteCollaboratorsSettingPayload? {
			return internalGetUpdateEnterpriseMembersCanInviteCollaboratorsSetting(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateEnterpriseMembersCanInviteCollaboratorsSetting(aliasSuffix: String? = nil) -> ExampleSchema.UpdateEnterpriseMembersCanInviteCollaboratorsSettingPayload? {
			return field(field: "updateEnterpriseMembersCanInviteCollaboratorsSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateEnterpriseMembersCanInviteCollaboratorsSettingPayload?
		}

		open var updateEnterpriseMembersCanMakePurchasesSetting: ExampleSchema.UpdateEnterpriseMembersCanMakePurchasesSettingPayload? {
			return internalGetUpdateEnterpriseMembersCanMakePurchasesSetting()
		}

		open func aliasedUpdateEnterpriseMembersCanMakePurchasesSetting(aliasSuffix: String) -> ExampleSchema.UpdateEnterpriseMembersCanMakePurchasesSettingPayload? {
			return internalGetUpdateEnterpriseMembersCanMakePurchasesSetting(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateEnterpriseMembersCanMakePurchasesSetting(aliasSuffix: String? = nil) -> ExampleSchema.UpdateEnterpriseMembersCanMakePurchasesSettingPayload? {
			return field(field: "updateEnterpriseMembersCanMakePurchasesSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateEnterpriseMembersCanMakePurchasesSettingPayload?
		}

		open var updateEnterpriseMembersCanUpdateProtectedBranchesSetting: ExampleSchema.UpdateEnterpriseMembersCanUpdateProtectedBranchesSettingPayload? {
			return internalGetUpdateEnterpriseMembersCanUpdateProtectedBranchesSetting()
		}

		open func aliasedUpdateEnterpriseMembersCanUpdateProtectedBranchesSetting(aliasSuffix: String) -> ExampleSchema.UpdateEnterpriseMembersCanUpdateProtectedBranchesSettingPayload? {
			return internalGetUpdateEnterpriseMembersCanUpdateProtectedBranchesSetting(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateEnterpriseMembersCanUpdateProtectedBranchesSetting(aliasSuffix: String? = nil) -> ExampleSchema.UpdateEnterpriseMembersCanUpdateProtectedBranchesSettingPayload? {
			return field(field: "updateEnterpriseMembersCanUpdateProtectedBranchesSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateEnterpriseMembersCanUpdateProtectedBranchesSettingPayload?
		}

		open var updateEnterpriseMembersCanViewDependencyInsightsSetting: ExampleSchema.UpdateEnterpriseMembersCanViewDependencyInsightsSettingPayload? {
			return internalGetUpdateEnterpriseMembersCanViewDependencyInsightsSetting()
		}

		open func aliasedUpdateEnterpriseMembersCanViewDependencyInsightsSetting(aliasSuffix: String) -> ExampleSchema.UpdateEnterpriseMembersCanViewDependencyInsightsSettingPayload? {
			return internalGetUpdateEnterpriseMembersCanViewDependencyInsightsSetting(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateEnterpriseMembersCanViewDependencyInsightsSetting(aliasSuffix: String? = nil) -> ExampleSchema.UpdateEnterpriseMembersCanViewDependencyInsightsSettingPayload? {
			return field(field: "updateEnterpriseMembersCanViewDependencyInsightsSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateEnterpriseMembersCanViewDependencyInsightsSettingPayload?
		}

		open var updateEnterpriseOrganizationProjectsSetting: ExampleSchema.UpdateEnterpriseOrganizationProjectsSettingPayload? {
			return internalGetUpdateEnterpriseOrganizationProjectsSetting()
		}

		open func aliasedUpdateEnterpriseOrganizationProjectsSetting(aliasSuffix: String) -> ExampleSchema.UpdateEnterpriseOrganizationProjectsSettingPayload? {
			return internalGetUpdateEnterpriseOrganizationProjectsSetting(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateEnterpriseOrganizationProjectsSetting(aliasSuffix: String? = nil) -> ExampleSchema.UpdateEnterpriseOrganizationProjectsSettingPayload? {
			return field(field: "updateEnterpriseOrganizationProjectsSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateEnterpriseOrganizationProjectsSettingPayload?
		}

		open var updateEnterpriseProfile: ExampleSchema.UpdateEnterpriseProfilePayload? {
			return internalGetUpdateEnterpriseProfile()
		}

		open func aliasedUpdateEnterpriseProfile(aliasSuffix: String) -> ExampleSchema.UpdateEnterpriseProfilePayload? {
			return internalGetUpdateEnterpriseProfile(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateEnterpriseProfile(aliasSuffix: String? = nil) -> ExampleSchema.UpdateEnterpriseProfilePayload? {
			return field(field: "updateEnterpriseProfile", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateEnterpriseProfilePayload?
		}

		open var updateEnterpriseRepositoryProjectsSetting: ExampleSchema.UpdateEnterpriseRepositoryProjectsSettingPayload? {
			return internalGetUpdateEnterpriseRepositoryProjectsSetting()
		}

		open func aliasedUpdateEnterpriseRepositoryProjectsSetting(aliasSuffix: String) -> ExampleSchema.UpdateEnterpriseRepositoryProjectsSettingPayload? {
			return internalGetUpdateEnterpriseRepositoryProjectsSetting(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateEnterpriseRepositoryProjectsSetting(aliasSuffix: String? = nil) -> ExampleSchema.UpdateEnterpriseRepositoryProjectsSettingPayload? {
			return field(field: "updateEnterpriseRepositoryProjectsSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateEnterpriseRepositoryProjectsSettingPayload?
		}

		open var updateEnterpriseTeamDiscussionsSetting: ExampleSchema.UpdateEnterpriseTeamDiscussionsSettingPayload? {
			return internalGetUpdateEnterpriseTeamDiscussionsSetting()
		}

		open func aliasedUpdateEnterpriseTeamDiscussionsSetting(aliasSuffix: String) -> ExampleSchema.UpdateEnterpriseTeamDiscussionsSettingPayload? {
			return internalGetUpdateEnterpriseTeamDiscussionsSetting(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateEnterpriseTeamDiscussionsSetting(aliasSuffix: String? = nil) -> ExampleSchema.UpdateEnterpriseTeamDiscussionsSettingPayload? {
			return field(field: "updateEnterpriseTeamDiscussionsSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateEnterpriseTeamDiscussionsSettingPayload?
		}

		open var updateEnterpriseTwoFactorAuthenticationRequiredSetting: ExampleSchema.UpdateEnterpriseTwoFactorAuthenticationRequiredSettingPayload? {
			return internalGetUpdateEnterpriseTwoFactorAuthenticationRequiredSetting()
		}

		open func aliasedUpdateEnterpriseTwoFactorAuthenticationRequiredSetting(aliasSuffix: String) -> ExampleSchema.UpdateEnterpriseTwoFactorAuthenticationRequiredSettingPayload? {
			return internalGetUpdateEnterpriseTwoFactorAuthenticationRequiredSetting(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateEnterpriseTwoFactorAuthenticationRequiredSetting(aliasSuffix: String? = nil) -> ExampleSchema.UpdateEnterpriseTwoFactorAuthenticationRequiredSettingPayload? {
			return field(field: "updateEnterpriseTwoFactorAuthenticationRequiredSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateEnterpriseTwoFactorAuthenticationRequiredSettingPayload?
		}

		open var updateIpAllowListEnabledSetting: ExampleSchema.UpdateIpAllowListEnabledSettingPayload? {
			return internalGetUpdateIpAllowListEnabledSetting()
		}

		open func aliasedUpdateIpAllowListEnabledSetting(aliasSuffix: String) -> ExampleSchema.UpdateIpAllowListEnabledSettingPayload? {
			return internalGetUpdateIpAllowListEnabledSetting(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateIpAllowListEnabledSetting(aliasSuffix: String? = nil) -> ExampleSchema.UpdateIpAllowListEnabledSettingPayload? {
			return field(field: "updateIpAllowListEnabledSetting", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateIpAllowListEnabledSettingPayload?
		}

		open var updateIpAllowListEntry: ExampleSchema.UpdateIpAllowListEntryPayload? {
			return internalGetUpdateIpAllowListEntry()
		}

		open func aliasedUpdateIpAllowListEntry(aliasSuffix: String) -> ExampleSchema.UpdateIpAllowListEntryPayload? {
			return internalGetUpdateIpAllowListEntry(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateIpAllowListEntry(aliasSuffix: String? = nil) -> ExampleSchema.UpdateIpAllowListEntryPayload? {
			return field(field: "updateIpAllowListEntry", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateIpAllowListEntryPayload?
		}

		open var updateIssue: ExampleSchema.UpdateIssuePayload? {
			return internalGetUpdateIssue()
		}

		open func aliasedUpdateIssue(aliasSuffix: String) -> ExampleSchema.UpdateIssuePayload? {
			return internalGetUpdateIssue(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateIssue(aliasSuffix: String? = nil) -> ExampleSchema.UpdateIssuePayload? {
			return field(field: "updateIssue", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateIssuePayload?
		}

		open var updateIssueComment: ExampleSchema.UpdateIssueCommentPayload? {
			return internalGetUpdateIssueComment()
		}

		open func aliasedUpdateIssueComment(aliasSuffix: String) -> ExampleSchema.UpdateIssueCommentPayload? {
			return internalGetUpdateIssueComment(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateIssueComment(aliasSuffix: String? = nil) -> ExampleSchema.UpdateIssueCommentPayload? {
			return field(field: "updateIssueComment", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateIssueCommentPayload?
		}

		open var updateProject: ExampleSchema.UpdateProjectPayload? {
			return internalGetUpdateProject()
		}

		open func aliasedUpdateProject(aliasSuffix: String) -> ExampleSchema.UpdateProjectPayload? {
			return internalGetUpdateProject(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateProject(aliasSuffix: String? = nil) -> ExampleSchema.UpdateProjectPayload? {
			return field(field: "updateProject", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateProjectPayload?
		}

		open var updateProjectCard: ExampleSchema.UpdateProjectCardPayload? {
			return internalGetUpdateProjectCard()
		}

		open func aliasedUpdateProjectCard(aliasSuffix: String) -> ExampleSchema.UpdateProjectCardPayload? {
			return internalGetUpdateProjectCard(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateProjectCard(aliasSuffix: String? = nil) -> ExampleSchema.UpdateProjectCardPayload? {
			return field(field: "updateProjectCard", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateProjectCardPayload?
		}

		open var updateProjectColumn: ExampleSchema.UpdateProjectColumnPayload? {
			return internalGetUpdateProjectColumn()
		}

		open func aliasedUpdateProjectColumn(aliasSuffix: String) -> ExampleSchema.UpdateProjectColumnPayload? {
			return internalGetUpdateProjectColumn(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateProjectColumn(aliasSuffix: String? = nil) -> ExampleSchema.UpdateProjectColumnPayload? {
			return field(field: "updateProjectColumn", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateProjectColumnPayload?
		}

		open var updatePullRequest: ExampleSchema.UpdatePullRequestPayload? {
			return internalGetUpdatePullRequest()
		}

		open func aliasedUpdatePullRequest(aliasSuffix: String) -> ExampleSchema.UpdatePullRequestPayload? {
			return internalGetUpdatePullRequest(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdatePullRequest(aliasSuffix: String? = nil) -> ExampleSchema.UpdatePullRequestPayload? {
			return field(field: "updatePullRequest", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdatePullRequestPayload?
		}

		open var updatePullRequestReview: ExampleSchema.UpdatePullRequestReviewPayload? {
			return internalGetUpdatePullRequestReview()
		}

		open func aliasedUpdatePullRequestReview(aliasSuffix: String) -> ExampleSchema.UpdatePullRequestReviewPayload? {
			return internalGetUpdatePullRequestReview(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdatePullRequestReview(aliasSuffix: String? = nil) -> ExampleSchema.UpdatePullRequestReviewPayload? {
			return field(field: "updatePullRequestReview", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdatePullRequestReviewPayload?
		}

		open var updatePullRequestReviewComment: ExampleSchema.UpdatePullRequestReviewCommentPayload? {
			return internalGetUpdatePullRequestReviewComment()
		}

		open func aliasedUpdatePullRequestReviewComment(aliasSuffix: String) -> ExampleSchema.UpdatePullRequestReviewCommentPayload? {
			return internalGetUpdatePullRequestReviewComment(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdatePullRequestReviewComment(aliasSuffix: String? = nil) -> ExampleSchema.UpdatePullRequestReviewCommentPayload? {
			return field(field: "updatePullRequestReviewComment", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdatePullRequestReviewCommentPayload?
		}

		open var updateRef: ExampleSchema.UpdateRefPayload? {
			return internalGetUpdateRef()
		}

		open func aliasedUpdateRef(aliasSuffix: String) -> ExampleSchema.UpdateRefPayload? {
			return internalGetUpdateRef(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateRef(aliasSuffix: String? = nil) -> ExampleSchema.UpdateRefPayload? {
			return field(field: "updateRef", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateRefPayload?
		}

		open var updateRepository: ExampleSchema.UpdateRepositoryPayload? {
			return internalGetUpdateRepository()
		}

		open func aliasedUpdateRepository(aliasSuffix: String) -> ExampleSchema.UpdateRepositoryPayload? {
			return internalGetUpdateRepository(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateRepository(aliasSuffix: String? = nil) -> ExampleSchema.UpdateRepositoryPayload? {
			return field(field: "updateRepository", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateRepositoryPayload?
		}

		open var updateSubscription: ExampleSchema.UpdateSubscriptionPayload? {
			return internalGetUpdateSubscription()
		}

		open func aliasedUpdateSubscription(aliasSuffix: String) -> ExampleSchema.UpdateSubscriptionPayload? {
			return internalGetUpdateSubscription(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateSubscription(aliasSuffix: String? = nil) -> ExampleSchema.UpdateSubscriptionPayload? {
			return field(field: "updateSubscription", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateSubscriptionPayload?
		}

		open var updateTeamDiscussion: ExampleSchema.UpdateTeamDiscussionPayload? {
			return internalGetUpdateTeamDiscussion()
		}

		open func aliasedUpdateTeamDiscussion(aliasSuffix: String) -> ExampleSchema.UpdateTeamDiscussionPayload? {
			return internalGetUpdateTeamDiscussion(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateTeamDiscussion(aliasSuffix: String? = nil) -> ExampleSchema.UpdateTeamDiscussionPayload? {
			return field(field: "updateTeamDiscussion", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateTeamDiscussionPayload?
		}

		open var updateTeamDiscussionComment: ExampleSchema.UpdateTeamDiscussionCommentPayload? {
			return internalGetUpdateTeamDiscussionComment()
		}

		open func aliasedUpdateTeamDiscussionComment(aliasSuffix: String) -> ExampleSchema.UpdateTeamDiscussionCommentPayload? {
			return internalGetUpdateTeamDiscussionComment(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateTeamDiscussionComment(aliasSuffix: String? = nil) -> ExampleSchema.UpdateTeamDiscussionCommentPayload? {
			return field(field: "updateTeamDiscussionComment", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateTeamDiscussionCommentPayload?
		}

		open var updateTopics: ExampleSchema.UpdateTopicsPayload? {
			return internalGetUpdateTopics()
		}

		open func aliasedUpdateTopics(aliasSuffix: String) -> ExampleSchema.UpdateTopicsPayload? {
			return internalGetUpdateTopics(aliasSuffix: aliasSuffix)
		}

		func internalGetUpdateTopics(aliasSuffix: String? = nil) -> ExampleSchema.UpdateTopicsPayload? {
			return field(field: "updateTopics", aliasSuffix: aliasSuffix) as! ExampleSchema.UpdateTopicsPayload?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "acceptEnterpriseAdministratorInvitation":

				return .object

				case "acceptTopicSuggestion":

				return .object

				case "addAssigneesToAssignable":

				return .object

				case "addComment":

				return .object

				case "addLabelsToLabelable":

				return .object

				case "addProjectCard":

				return .object

				case "addProjectColumn":

				return .object

				case "addPullRequestReview":

				return .object

				case "addPullRequestReviewComment":

				return .object

				case "addPullRequestReviewThread":

				return .object

				case "addReaction":

				return .object

				case "addStar":

				return .object

				case "archiveRepository":

				return .object

				case "cancelEnterpriseAdminInvitation":

				return .object

				case "changeUserStatus":

				return .object

				case "clearLabelsFromLabelable":

				return .object

				case "cloneProject":

				return .object

				case "cloneTemplateRepository":

				return .object

				case "closeIssue":

				return .object

				case "closePullRequest":

				return .object

				case "convertProjectCardNoteToIssue":

				return .object

				case "createBranchProtectionRule":

				return .object

				case "createEnterpriseOrganization":

				return .object

				case "createIpAllowListEntry":

				return .object

				case "createIssue":

				return .object

				case "createProject":

				return .object

				case "createPullRequest":

				return .object

				case "createRef":

				return .object

				case "createRepository":

				return .object

				case "createTeamDiscussion":

				return .object

				case "createTeamDiscussionComment":

				return .object

				case "declineTopicSuggestion":

				return .object

				case "deleteBranchProtectionRule":

				return .object

				case "deleteDeployment":

				return .object

				case "deleteIpAllowListEntry":

				return .object

				case "deleteIssue":

				return .object

				case "deleteIssueComment":

				return .object

				case "deleteProject":

				return .object

				case "deleteProjectCard":

				return .object

				case "deleteProjectColumn":

				return .object

				case "deletePullRequestReview":

				return .object

				case "deletePullRequestReviewComment":

				return .object

				case "deleteRef":

				return .object

				case "deleteTeamDiscussion":

				return .object

				case "deleteTeamDiscussionComment":

				return .object

				case "dismissPullRequestReview":

				return .object

				case "followUser":

				return .object

				case "inviteEnterpriseAdmin":

				return .object

				case "linkRepositoryToProject":

				return .object

				case "lockLockable":

				return .object

				case "markPullRequestReadyForReview":

				return .object

				case "mergeBranch":

				return .object

				case "mergePullRequest":

				return .object

				case "minimizeComment":

				return .object

				case "moveProjectCard":

				return .object

				case "moveProjectColumn":

				return .object

				case "regenerateEnterpriseIdentityProviderRecoveryCodes":

				return .object

				case "removeAssigneesFromAssignable":

				return .object

				case "removeEnterpriseAdmin":

				return .object

				case "removeEnterpriseIdentityProvider":

				return .object

				case "removeEnterpriseOrganization":

				return .object

				case "removeLabelsFromLabelable":

				return .object

				case "removeOutsideCollaborator":

				return .object

				case "removeReaction":

				return .object

				case "removeStar":

				return .object

				case "reopenIssue":

				return .object

				case "reopenPullRequest":

				return .object

				case "requestReviews":

				return .object

				case "resolveReviewThread":

				return .object

				case "setEnterpriseIdentityProvider":

				return .object

				case "submitPullRequestReview":

				return .object

				case "transferIssue":

				return .object

				case "unarchiveRepository":

				return .object

				case "unfollowUser":

				return .object

				case "unlinkRepositoryFromProject":

				return .object

				case "unlockLockable":

				return .object

				case "unmarkIssueAsDuplicate":

				return .object

				case "unminimizeComment":

				return .object

				case "unresolveReviewThread":

				return .object

				case "updateBranchProtectionRule":

				return .object

				case "updateEnterpriseActionExecutionCapabilitySetting":

				return .object

				case "updateEnterpriseAdministratorRole":

				return .object

				case "updateEnterpriseAllowPrivateRepositoryForkingSetting":

				return .object

				case "updateEnterpriseDefaultRepositoryPermissionSetting":

				return .object

				case "updateEnterpriseMembersCanChangeRepositoryVisibilitySetting":

				return .object

				case "updateEnterpriseMembersCanCreateRepositoriesSetting":

				return .object

				case "updateEnterpriseMembersCanDeleteIssuesSetting":

				return .object

				case "updateEnterpriseMembersCanDeleteRepositoriesSetting":

				return .object

				case "updateEnterpriseMembersCanInviteCollaboratorsSetting":

				return .object

				case "updateEnterpriseMembersCanMakePurchasesSetting":

				return .object

				case "updateEnterpriseMembersCanUpdateProtectedBranchesSetting":

				return .object

				case "updateEnterpriseMembersCanViewDependencyInsightsSetting":

				return .object

				case "updateEnterpriseOrganizationProjectsSetting":

				return .object

				case "updateEnterpriseProfile":

				return .object

				case "updateEnterpriseRepositoryProjectsSetting":

				return .object

				case "updateEnterpriseTeamDiscussionsSetting":

				return .object

				case "updateEnterpriseTwoFactorAuthenticationRequiredSetting":

				return .object

				case "updateIpAllowListEnabledSetting":

				return .object

				case "updateIpAllowListEntry":

				return .object

				case "updateIssue":

				return .object

				case "updateIssueComment":

				return .object

				case "updateProject":

				return .object

				case "updateProjectCard":

				return .object

				case "updateProjectColumn":

				return .object

				case "updatePullRequest":

				return .object

				case "updatePullRequestReview":

				return .object

				case "updatePullRequestReviewComment":

				return .object

				case "updateRef":

				return .object

				case "updateRepository":

				return .object

				case "updateSubscription":

				return .object

				case "updateTeamDiscussion":

				return .object

				case "updateTeamDiscussionComment":

				return .object

				case "updateTopics":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "acceptEnterpriseAdministratorInvitation":
				return internalGetAcceptEnterpriseAdministratorInvitation()

				case "acceptTopicSuggestion":
				return internalGetAcceptTopicSuggestion()

				case "addAssigneesToAssignable":
				return internalGetAddAssigneesToAssignable()

				case "addComment":
				return internalGetAddComment()

				case "addLabelsToLabelable":
				return internalGetAddLabelsToLabelable()

				case "addProjectCard":
				return internalGetAddProjectCard()

				case "addProjectColumn":
				return internalGetAddProjectColumn()

				case "addPullRequestReview":
				return internalGetAddPullRequestReview()

				case "addPullRequestReviewComment":
				return internalGetAddPullRequestReviewComment()

				case "addPullRequestReviewThread":
				return internalGetAddPullRequestReviewThread()

				case "addReaction":
				return internalGetAddReaction()

				case "addStar":
				return internalGetAddStar()

				case "archiveRepository":
				return internalGetArchiveRepository()

				case "cancelEnterpriseAdminInvitation":
				return internalGetCancelEnterpriseAdminInvitation()

				case "changeUserStatus":
				return internalGetChangeUserStatus()

				case "clearLabelsFromLabelable":
				return internalGetClearLabelsFromLabelable()

				case "cloneProject":
				return internalGetCloneProject()

				case "cloneTemplateRepository":
				return internalGetCloneTemplateRepository()

				case "closeIssue":
				return internalGetCloseIssue()

				case "closePullRequest":
				return internalGetClosePullRequest()

				case "convertProjectCardNoteToIssue":
				return internalGetConvertProjectCardNoteToIssue()

				case "createBranchProtectionRule":
				return internalGetCreateBranchProtectionRule()

				case "createEnterpriseOrganization":
				return internalGetCreateEnterpriseOrganization()

				case "createIpAllowListEntry":
				return internalGetCreateIpAllowListEntry()

				case "createIssue":
				return internalGetCreateIssue()

				case "createProject":
				return internalGetCreateProject()

				case "createPullRequest":
				return internalGetCreatePullRequest()

				case "createRef":
				return internalGetCreateRef()

				case "createRepository":
				return internalGetCreateRepository()

				case "createTeamDiscussion":
				return internalGetCreateTeamDiscussion()

				case "createTeamDiscussionComment":
				return internalGetCreateTeamDiscussionComment()

				case "declineTopicSuggestion":
				return internalGetDeclineTopicSuggestion()

				case "deleteBranchProtectionRule":
				return internalGetDeleteBranchProtectionRule()

				case "deleteDeployment":
				return internalGetDeleteDeployment()

				case "deleteIpAllowListEntry":
				return internalGetDeleteIpAllowListEntry()

				case "deleteIssue":
				return internalGetDeleteIssue()

				case "deleteIssueComment":
				return internalGetDeleteIssueComment()

				case "deleteProject":
				return internalGetDeleteProject()

				case "deleteProjectCard":
				return internalGetDeleteProjectCard()

				case "deleteProjectColumn":
				return internalGetDeleteProjectColumn()

				case "deletePullRequestReview":
				return internalGetDeletePullRequestReview()

				case "deletePullRequestReviewComment":
				return internalGetDeletePullRequestReviewComment()

				case "deleteRef":
				return internalGetDeleteRef()

				case "deleteTeamDiscussion":
				return internalGetDeleteTeamDiscussion()

				case "deleteTeamDiscussionComment":
				return internalGetDeleteTeamDiscussionComment()

				case "dismissPullRequestReview":
				return internalGetDismissPullRequestReview()

				case "followUser":
				return internalGetFollowUser()

				case "inviteEnterpriseAdmin":
				return internalGetInviteEnterpriseAdmin()

				case "linkRepositoryToProject":
				return internalGetLinkRepositoryToProject()

				case "lockLockable":
				return internalGetLockLockable()

				case "markPullRequestReadyForReview":
				return internalGetMarkPullRequestReadyForReview()

				case "mergeBranch":
				return internalGetMergeBranch()

				case "mergePullRequest":
				return internalGetMergePullRequest()

				case "minimizeComment":
				return internalGetMinimizeComment()

				case "moveProjectCard":
				return internalGetMoveProjectCard()

				case "moveProjectColumn":
				return internalGetMoveProjectColumn()

				case "regenerateEnterpriseIdentityProviderRecoveryCodes":
				return internalGetRegenerateEnterpriseIdentityProviderRecoveryCodes()

				case "removeAssigneesFromAssignable":
				return internalGetRemoveAssigneesFromAssignable()

				case "removeEnterpriseAdmin":
				return internalGetRemoveEnterpriseAdmin()

				case "removeEnterpriseIdentityProvider":
				return internalGetRemoveEnterpriseIdentityProvider()

				case "removeEnterpriseOrganization":
				return internalGetRemoveEnterpriseOrganization()

				case "removeLabelsFromLabelable":
				return internalGetRemoveLabelsFromLabelable()

				case "removeOutsideCollaborator":
				return internalGetRemoveOutsideCollaborator()

				case "removeReaction":
				return internalGetRemoveReaction()

				case "removeStar":
				return internalGetRemoveStar()

				case "reopenIssue":
				return internalGetReopenIssue()

				case "reopenPullRequest":
				return internalGetReopenPullRequest()

				case "requestReviews":
				return internalGetRequestReviews()

				case "resolveReviewThread":
				return internalGetResolveReviewThread()

				case "setEnterpriseIdentityProvider":
				return internalGetSetEnterpriseIdentityProvider()

				case "submitPullRequestReview":
				return internalGetSubmitPullRequestReview()

				case "transferIssue":
				return internalGetTransferIssue()

				case "unarchiveRepository":
				return internalGetUnarchiveRepository()

				case "unfollowUser":
				return internalGetUnfollowUser()

				case "unlinkRepositoryFromProject":
				return internalGetUnlinkRepositoryFromProject()

				case "unlockLockable":
				return internalGetUnlockLockable()

				case "unmarkIssueAsDuplicate":
				return internalGetUnmarkIssueAsDuplicate()

				case "unminimizeComment":
				return internalGetUnminimizeComment()

				case "unresolveReviewThread":
				return internalGetUnresolveReviewThread()

				case "updateBranchProtectionRule":
				return internalGetUpdateBranchProtectionRule()

				case "updateEnterpriseActionExecutionCapabilitySetting":
				return internalGetUpdateEnterpriseActionExecutionCapabilitySetting()

				case "updateEnterpriseAdministratorRole":
				return internalGetUpdateEnterpriseAdministratorRole()

				case "updateEnterpriseAllowPrivateRepositoryForkingSetting":
				return internalGetUpdateEnterpriseAllowPrivateRepositoryForkingSetting()

				case "updateEnterpriseDefaultRepositoryPermissionSetting":
				return internalGetUpdateEnterpriseDefaultRepositoryPermissionSetting()

				case "updateEnterpriseMembersCanChangeRepositoryVisibilitySetting":
				return internalGetUpdateEnterpriseMembersCanChangeRepositoryVisibilitySetting()

				case "updateEnterpriseMembersCanCreateRepositoriesSetting":
				return internalGetUpdateEnterpriseMembersCanCreateRepositoriesSetting()

				case "updateEnterpriseMembersCanDeleteIssuesSetting":
				return internalGetUpdateEnterpriseMembersCanDeleteIssuesSetting()

				case "updateEnterpriseMembersCanDeleteRepositoriesSetting":
				return internalGetUpdateEnterpriseMembersCanDeleteRepositoriesSetting()

				case "updateEnterpriseMembersCanInviteCollaboratorsSetting":
				return internalGetUpdateEnterpriseMembersCanInviteCollaboratorsSetting()

				case "updateEnterpriseMembersCanMakePurchasesSetting":
				return internalGetUpdateEnterpriseMembersCanMakePurchasesSetting()

				case "updateEnterpriseMembersCanUpdateProtectedBranchesSetting":
				return internalGetUpdateEnterpriseMembersCanUpdateProtectedBranchesSetting()

				case "updateEnterpriseMembersCanViewDependencyInsightsSetting":
				return internalGetUpdateEnterpriseMembersCanViewDependencyInsightsSetting()

				case "updateEnterpriseOrganizationProjectsSetting":
				return internalGetUpdateEnterpriseOrganizationProjectsSetting()

				case "updateEnterpriseProfile":
				return internalGetUpdateEnterpriseProfile()

				case "updateEnterpriseRepositoryProjectsSetting":
				return internalGetUpdateEnterpriseRepositoryProjectsSetting()

				case "updateEnterpriseTeamDiscussionsSetting":
				return internalGetUpdateEnterpriseTeamDiscussionsSetting()

				case "updateEnterpriseTwoFactorAuthenticationRequiredSetting":
				return internalGetUpdateEnterpriseTwoFactorAuthenticationRequiredSetting()

				case "updateIpAllowListEnabledSetting":
				return internalGetUpdateIpAllowListEnabledSetting()

				case "updateIpAllowListEntry":
				return internalGetUpdateIpAllowListEntry()

				case "updateIssue":
				return internalGetUpdateIssue()

				case "updateIssueComment":
				return internalGetUpdateIssueComment()

				case "updateProject":
				return internalGetUpdateProject()

				case "updateProjectCard":
				return internalGetUpdateProjectCard()

				case "updateProjectColumn":
				return internalGetUpdateProjectColumn()

				case "updatePullRequest":
				return internalGetUpdatePullRequest()

				case "updatePullRequestReview":
				return internalGetUpdatePullRequestReview()

				case "updatePullRequestReviewComment":
				return internalGetUpdatePullRequestReviewComment()

				case "updateRef":
				return internalGetUpdateRef()

				case "updateRepository":
				return internalGetUpdateRepository()

				case "updateSubscription":
				return internalGetUpdateSubscription()

				case "updateTeamDiscussion":
				return internalGetUpdateTeamDiscussion()

				case "updateTeamDiscussionComment":
				return internalGetUpdateTeamDiscussionComment()

				case "updateTopics":
				return internalGetUpdateTopics()

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
					case "acceptEnterpriseAdministratorInvitation":
					if let value = internalGetAcceptEnterpriseAdministratorInvitation() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "acceptTopicSuggestion":
					if let value = internalGetAcceptTopicSuggestion() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "addAssigneesToAssignable":
					if let value = internalGetAddAssigneesToAssignable() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "addComment":
					if let value = internalGetAddComment() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "addLabelsToLabelable":
					if let value = internalGetAddLabelsToLabelable() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "addProjectCard":
					if let value = internalGetAddProjectCard() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "addProjectColumn":
					if let value = internalGetAddProjectColumn() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "addPullRequestReview":
					if let value = internalGetAddPullRequestReview() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "addPullRequestReviewComment":
					if let value = internalGetAddPullRequestReviewComment() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "addPullRequestReviewThread":
					if let value = internalGetAddPullRequestReviewThread() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "addReaction":
					if let value = internalGetAddReaction() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "addStar":
					if let value = internalGetAddStar() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "archiveRepository":
					if let value = internalGetArchiveRepository() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "cancelEnterpriseAdminInvitation":
					if let value = internalGetCancelEnterpriseAdminInvitation() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "changeUserStatus":
					if let value = internalGetChangeUserStatus() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "clearLabelsFromLabelable":
					if let value = internalGetClearLabelsFromLabelable() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "cloneProject":
					if let value = internalGetCloneProject() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "cloneTemplateRepository":
					if let value = internalGetCloneTemplateRepository() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "closeIssue":
					if let value = internalGetCloseIssue() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "closePullRequest":
					if let value = internalGetClosePullRequest() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "convertProjectCardNoteToIssue":
					if let value = internalGetConvertProjectCardNoteToIssue() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "createBranchProtectionRule":
					if let value = internalGetCreateBranchProtectionRule() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "createEnterpriseOrganization":
					if let value = internalGetCreateEnterpriseOrganization() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "createIpAllowListEntry":
					if let value = internalGetCreateIpAllowListEntry() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "createIssue":
					if let value = internalGetCreateIssue() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "createProject":
					if let value = internalGetCreateProject() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "createPullRequest":
					if let value = internalGetCreatePullRequest() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "createRef":
					if let value = internalGetCreateRef() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "createRepository":
					if let value = internalGetCreateRepository() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "createTeamDiscussion":
					if let value = internalGetCreateTeamDiscussion() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "createTeamDiscussionComment":
					if let value = internalGetCreateTeamDiscussionComment() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "declineTopicSuggestion":
					if let value = internalGetDeclineTopicSuggestion() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "deleteBranchProtectionRule":
					if let value = internalGetDeleteBranchProtectionRule() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "deleteDeployment":
					if let value = internalGetDeleteDeployment() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "deleteIpAllowListEntry":
					if let value = internalGetDeleteIpAllowListEntry() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "deleteIssue":
					if let value = internalGetDeleteIssue() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "deleteIssueComment":
					if let value = internalGetDeleteIssueComment() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "deleteProject":
					if let value = internalGetDeleteProject() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "deleteProjectCard":
					if let value = internalGetDeleteProjectCard() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "deleteProjectColumn":
					if let value = internalGetDeleteProjectColumn() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "deletePullRequestReview":
					if let value = internalGetDeletePullRequestReview() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "deletePullRequestReviewComment":
					if let value = internalGetDeletePullRequestReviewComment() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "deleteRef":
					if let value = internalGetDeleteRef() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "deleteTeamDiscussion":
					if let value = internalGetDeleteTeamDiscussion() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "deleteTeamDiscussionComment":
					if let value = internalGetDeleteTeamDiscussionComment() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "dismissPullRequestReview":
					if let value = internalGetDismissPullRequestReview() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "followUser":
					if let value = internalGetFollowUser() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "inviteEnterpriseAdmin":
					if let value = internalGetInviteEnterpriseAdmin() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "linkRepositoryToProject":
					if let value = internalGetLinkRepositoryToProject() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "lockLockable":
					if let value = internalGetLockLockable() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "markPullRequestReadyForReview":
					if let value = internalGetMarkPullRequestReadyForReview() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "mergeBranch":
					if let value = internalGetMergeBranch() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "mergePullRequest":
					if let value = internalGetMergePullRequest() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "minimizeComment":
					if let value = internalGetMinimizeComment() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "moveProjectCard":
					if let value = internalGetMoveProjectCard() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "moveProjectColumn":
					if let value = internalGetMoveProjectColumn() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "regenerateEnterpriseIdentityProviderRecoveryCodes":
					if let value = internalGetRegenerateEnterpriseIdentityProviderRecoveryCodes() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "removeAssigneesFromAssignable":
					if let value = internalGetRemoveAssigneesFromAssignable() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "removeEnterpriseAdmin":
					if let value = internalGetRemoveEnterpriseAdmin() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "removeEnterpriseIdentityProvider":
					if let value = internalGetRemoveEnterpriseIdentityProvider() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "removeEnterpriseOrganization":
					if let value = internalGetRemoveEnterpriseOrganization() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "removeLabelsFromLabelable":
					if let value = internalGetRemoveLabelsFromLabelable() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "removeOutsideCollaborator":
					if let value = internalGetRemoveOutsideCollaborator() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "removeReaction":
					if let value = internalGetRemoveReaction() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "removeStar":
					if let value = internalGetRemoveStar() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "reopenIssue":
					if let value = internalGetReopenIssue() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "reopenPullRequest":
					if let value = internalGetReopenPullRequest() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "requestReviews":
					if let value = internalGetRequestReviews() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "resolveReviewThread":
					if let value = internalGetResolveReviewThread() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "setEnterpriseIdentityProvider":
					if let value = internalGetSetEnterpriseIdentityProvider() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "submitPullRequestReview":
					if let value = internalGetSubmitPullRequestReview() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "transferIssue":
					if let value = internalGetTransferIssue() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "unarchiveRepository":
					if let value = internalGetUnarchiveRepository() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "unfollowUser":
					if let value = internalGetUnfollowUser() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "unlinkRepositoryFromProject":
					if let value = internalGetUnlinkRepositoryFromProject() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "unlockLockable":
					if let value = internalGetUnlockLockable() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "unmarkIssueAsDuplicate":
					if let value = internalGetUnmarkIssueAsDuplicate() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "unminimizeComment":
					if let value = internalGetUnminimizeComment() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "unresolveReviewThread":
					if let value = internalGetUnresolveReviewThread() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateBranchProtectionRule":
					if let value = internalGetUpdateBranchProtectionRule() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateEnterpriseActionExecutionCapabilitySetting":
					if let value = internalGetUpdateEnterpriseActionExecutionCapabilitySetting() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateEnterpriseAdministratorRole":
					if let value = internalGetUpdateEnterpriseAdministratorRole() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateEnterpriseAllowPrivateRepositoryForkingSetting":
					if let value = internalGetUpdateEnterpriseAllowPrivateRepositoryForkingSetting() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateEnterpriseDefaultRepositoryPermissionSetting":
					if let value = internalGetUpdateEnterpriseDefaultRepositoryPermissionSetting() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateEnterpriseMembersCanChangeRepositoryVisibilitySetting":
					if let value = internalGetUpdateEnterpriseMembersCanChangeRepositoryVisibilitySetting() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateEnterpriseMembersCanCreateRepositoriesSetting":
					if let value = internalGetUpdateEnterpriseMembersCanCreateRepositoriesSetting() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateEnterpriseMembersCanDeleteIssuesSetting":
					if let value = internalGetUpdateEnterpriseMembersCanDeleteIssuesSetting() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateEnterpriseMembersCanDeleteRepositoriesSetting":
					if let value = internalGetUpdateEnterpriseMembersCanDeleteRepositoriesSetting() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateEnterpriseMembersCanInviteCollaboratorsSetting":
					if let value = internalGetUpdateEnterpriseMembersCanInviteCollaboratorsSetting() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateEnterpriseMembersCanMakePurchasesSetting":
					if let value = internalGetUpdateEnterpriseMembersCanMakePurchasesSetting() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateEnterpriseMembersCanUpdateProtectedBranchesSetting":
					if let value = internalGetUpdateEnterpriseMembersCanUpdateProtectedBranchesSetting() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateEnterpriseMembersCanViewDependencyInsightsSetting":
					if let value = internalGetUpdateEnterpriseMembersCanViewDependencyInsightsSetting() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateEnterpriseOrganizationProjectsSetting":
					if let value = internalGetUpdateEnterpriseOrganizationProjectsSetting() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateEnterpriseProfile":
					if let value = internalGetUpdateEnterpriseProfile() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateEnterpriseRepositoryProjectsSetting":
					if let value = internalGetUpdateEnterpriseRepositoryProjectsSetting() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateEnterpriseTeamDiscussionsSetting":
					if let value = internalGetUpdateEnterpriseTeamDiscussionsSetting() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateEnterpriseTwoFactorAuthenticationRequiredSetting":
					if let value = internalGetUpdateEnterpriseTwoFactorAuthenticationRequiredSetting() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateIpAllowListEnabledSetting":
					if let value = internalGetUpdateIpAllowListEnabledSetting() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateIpAllowListEntry":
					if let value = internalGetUpdateIpAllowListEntry() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateIssue":
					if let value = internalGetUpdateIssue() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateIssueComment":
					if let value = internalGetUpdateIssueComment() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateProject":
					if let value = internalGetUpdateProject() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateProjectCard":
					if let value = internalGetUpdateProjectCard() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateProjectColumn":
					if let value = internalGetUpdateProjectColumn() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updatePullRequest":
					if let value = internalGetUpdatePullRequest() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updatePullRequestReview":
					if let value = internalGetUpdatePullRequestReview() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updatePullRequestReviewComment":
					if let value = internalGetUpdatePullRequestReviewComment() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateRef":
					if let value = internalGetUpdateRef() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateRepository":
					if let value = internalGetUpdateRepository() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateSubscription":
					if let value = internalGetUpdateSubscription() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateTeamDiscussion":
					if let value = internalGetUpdateTeamDiscussion() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateTeamDiscussionComment":
					if let value = internalGetUpdateTeamDiscussionComment() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "updateTopics":
					if let value = internalGetUpdateTopics() {
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
