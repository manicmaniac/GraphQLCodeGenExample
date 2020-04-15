// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CreateBranchProtectionRuleInput {
		open var repositoryId: GraphQL.ID

		open var pattern: String

		open var requiresApprovingReviews: Input<Bool>

		open var requiredApprovingReviewCount: Input<Int32>

		open var requiresCommitSignatures: Input<Bool>

		open var isAdminEnforced: Input<Bool>

		open var requiresStatusChecks: Input<Bool>

		open var requiresStrictStatusChecks: Input<Bool>

		open var requiresCodeOwnerReviews: Input<Bool>

		open var dismissesStaleReviews: Input<Bool>

		open var restrictsReviewDismissals: Input<Bool>

		open var reviewDismissalActorIds: Input<[GraphQL.ID]>

		open var restrictsPushes: Input<Bool>

		open var pushActorIds: Input<[GraphQL.ID]>

		open var requiredStatusCheckContexts: Input<[String]>

		open var clientMutationId: Input<String>

		public init(
			repositoryId: GraphQL.ID,

			pattern: String,

			requiresApprovingReviews: Input<Bool> = .undefined,

			requiredApprovingReviewCount: Input<Int32> = .undefined,

			requiresCommitSignatures: Input<Bool> = .undefined,

			isAdminEnforced: Input<Bool> = .undefined,

			requiresStatusChecks: Input<Bool> = .undefined,

			requiresStrictStatusChecks: Input<Bool> = .undefined,

			requiresCodeOwnerReviews: Input<Bool> = .undefined,

			dismissesStaleReviews: Input<Bool> = .undefined,

			restrictsReviewDismissals: Input<Bool> = .undefined,

			reviewDismissalActorIds: Input<[GraphQL.ID]> = .undefined,

			restrictsPushes: Input<Bool> = .undefined,

			pushActorIds: Input<[GraphQL.ID]> = .undefined,

			requiredStatusCheckContexts: Input<[String]> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.repositoryId = repositoryId

			self.pattern = pattern

			self.requiresApprovingReviews = requiresApprovingReviews

			self.requiredApprovingReviewCount = requiredApprovingReviewCount

			self.requiresCommitSignatures = requiresCommitSignatures

			self.isAdminEnforced = isAdminEnforced

			self.requiresStatusChecks = requiresStatusChecks

			self.requiresStrictStatusChecks = requiresStrictStatusChecks

			self.requiresCodeOwnerReviews = requiresCodeOwnerReviews

			self.dismissesStaleReviews = dismissesStaleReviews

			self.restrictsReviewDismissals = restrictsReviewDismissals

			self.reviewDismissalActorIds = reviewDismissalActorIds

			self.restrictsPushes = restrictsPushes

			self.pushActorIds = pushActorIds

			self.requiredStatusCheckContexts = requiredStatusCheckContexts

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("repositoryId:\(GraphQL.quoteString(input: "\(repositoryId.rawValue)"))")

			fields.append("pattern:\(GraphQL.quoteString(input: pattern))")

			switch requiresApprovingReviews {
				case .value(let requiresApprovingReviews):
				if let requiresApprovingReviews = requiresApprovingReviews {
					fields.append("requiresApprovingReviews:\(requiresApprovingReviews)")
				} else {
					fields.append("requiresApprovingReviews:null")
				}
				case .undefined: break
			}

			switch requiredApprovingReviewCount {
				case .value(let requiredApprovingReviewCount):
				if let requiredApprovingReviewCount = requiredApprovingReviewCount {
					fields.append("requiredApprovingReviewCount:\(requiredApprovingReviewCount)")
				} else {
					fields.append("requiredApprovingReviewCount:null")
				}
				case .undefined: break
			}

			switch requiresCommitSignatures {
				case .value(let requiresCommitSignatures):
				if let requiresCommitSignatures = requiresCommitSignatures {
					fields.append("requiresCommitSignatures:\(requiresCommitSignatures)")
				} else {
					fields.append("requiresCommitSignatures:null")
				}
				case .undefined: break
			}

			switch isAdminEnforced {
				case .value(let isAdminEnforced):
				if let isAdminEnforced = isAdminEnforced {
					fields.append("isAdminEnforced:\(isAdminEnforced)")
				} else {
					fields.append("isAdminEnforced:null")
				}
				case .undefined: break
			}

			switch requiresStatusChecks {
				case .value(let requiresStatusChecks):
				if let requiresStatusChecks = requiresStatusChecks {
					fields.append("requiresStatusChecks:\(requiresStatusChecks)")
				} else {
					fields.append("requiresStatusChecks:null")
				}
				case .undefined: break
			}

			switch requiresStrictStatusChecks {
				case .value(let requiresStrictStatusChecks):
				if let requiresStrictStatusChecks = requiresStrictStatusChecks {
					fields.append("requiresStrictStatusChecks:\(requiresStrictStatusChecks)")
				} else {
					fields.append("requiresStrictStatusChecks:null")
				}
				case .undefined: break
			}

			switch requiresCodeOwnerReviews {
				case .value(let requiresCodeOwnerReviews):
				if let requiresCodeOwnerReviews = requiresCodeOwnerReviews {
					fields.append("requiresCodeOwnerReviews:\(requiresCodeOwnerReviews)")
				} else {
					fields.append("requiresCodeOwnerReviews:null")
				}
				case .undefined: break
			}

			switch dismissesStaleReviews {
				case .value(let dismissesStaleReviews):
				if let dismissesStaleReviews = dismissesStaleReviews {
					fields.append("dismissesStaleReviews:\(dismissesStaleReviews)")
				} else {
					fields.append("dismissesStaleReviews:null")
				}
				case .undefined: break
			}

			switch restrictsReviewDismissals {
				case .value(let restrictsReviewDismissals):
				if let restrictsReviewDismissals = restrictsReviewDismissals {
					fields.append("restrictsReviewDismissals:\(restrictsReviewDismissals)")
				} else {
					fields.append("restrictsReviewDismissals:null")
				}
				case .undefined: break
			}

			switch reviewDismissalActorIds {
				case .value(let reviewDismissalActorIds):
				if let reviewDismissalActorIds = reviewDismissalActorIds {
					fields.append("reviewDismissalActorIds:[\(reviewDismissalActorIds.map{ "\(GraphQL.quoteString(input: "\($0.rawValue)"))" }.joined(separator: ","))]")
				} else {
					fields.append("reviewDismissalActorIds:null")
				}
				case .undefined: break
			}

			switch restrictsPushes {
				case .value(let restrictsPushes):
				if let restrictsPushes = restrictsPushes {
					fields.append("restrictsPushes:\(restrictsPushes)")
				} else {
					fields.append("restrictsPushes:null")
				}
				case .undefined: break
			}

			switch pushActorIds {
				case .value(let pushActorIds):
				if let pushActorIds = pushActorIds {
					fields.append("pushActorIds:[\(pushActorIds.map{ "\(GraphQL.quoteString(input: "\($0.rawValue)"))" }.joined(separator: ","))]")
				} else {
					fields.append("pushActorIds:null")
				}
				case .undefined: break
			}

			switch requiredStatusCheckContexts {
				case .value(let requiredStatusCheckContexts):
				if let requiredStatusCheckContexts = requiredStatusCheckContexts {
					fields.append("requiredStatusCheckContexts:[\(requiredStatusCheckContexts.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
				} else {
					fields.append("requiredStatusCheckContexts:null")
				}
				case .undefined: break
			}

			switch clientMutationId {
				case .value(let clientMutationId):
				if let clientMutationId = clientMutationId {
					fields.append("clientMutationId:\(GraphQL.quoteString(input: clientMutationId))")
				} else {
					fields.append("clientMutationId:null")
				}
				case .undefined: break
			}

			return "{\(fields.joined(separator: ","))}"
		}
	}
}
