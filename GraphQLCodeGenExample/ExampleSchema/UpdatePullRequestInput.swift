// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdatePullRequestInput {
		open var pullRequestId: GraphQL.ID

		open var baseRefName: Input<String>

		open var title: Input<String>

		open var body: Input<String>

		open var state: Input<PullRequestUpdateState>

		open var maintainerCanModify: Input<Bool>

		open var assigneeIds: Input<[GraphQL.ID]>

		open var milestoneId: Input<GraphQL.ID>

		open var labelIds: Input<[GraphQL.ID]>

		open var projectIds: Input<[GraphQL.ID]>

		open var clientMutationId: Input<String>

		public init(
			pullRequestId: GraphQL.ID,

			baseRefName: Input<String> = .undefined,

			title: Input<String> = .undefined,

			body: Input<String> = .undefined,

			state: Input<PullRequestUpdateState> = .undefined,

			maintainerCanModify: Input<Bool> = .undefined,

			assigneeIds: Input<[GraphQL.ID]> = .undefined,

			milestoneId: Input<GraphQL.ID> = .undefined,

			labelIds: Input<[GraphQL.ID]> = .undefined,

			projectIds: Input<[GraphQL.ID]> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.pullRequestId = pullRequestId

			self.baseRefName = baseRefName

			self.title = title

			self.body = body

			self.state = state

			self.maintainerCanModify = maintainerCanModify

			self.assigneeIds = assigneeIds

			self.milestoneId = milestoneId

			self.labelIds = labelIds

			self.projectIds = projectIds

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("pullRequestId:\(GraphQL.quoteString(input: "\(pullRequestId.rawValue)"))")

			switch baseRefName {
				case .value(let baseRefName):
				if let baseRefName = baseRefName {
					fields.append("baseRefName:\(GraphQL.quoteString(input: baseRefName))")
				} else {
					fields.append("baseRefName:null")
				}
				case .undefined: break
			}

			switch title {
				case .value(let title):
				if let title = title {
					fields.append("title:\(GraphQL.quoteString(input: title))")
				} else {
					fields.append("title:null")
				}
				case .undefined: break
			}

			switch body {
				case .value(let body):
				if let body = body {
					fields.append("body:\(GraphQL.quoteString(input: body))")
				} else {
					fields.append("body:null")
				}
				case .undefined: break
			}

			switch state {
				case .value(let state):
				if let state = state {
					fields.append("state:\(state.rawValue)")
				} else {
					fields.append("state:null")
				}
				case .undefined: break
			}

			switch maintainerCanModify {
				case .value(let maintainerCanModify):
				if let maintainerCanModify = maintainerCanModify {
					fields.append("maintainerCanModify:\(maintainerCanModify)")
				} else {
					fields.append("maintainerCanModify:null")
				}
				case .undefined: break
			}

			switch assigneeIds {
				case .value(let assigneeIds):
				if let assigneeIds = assigneeIds {
					fields.append("assigneeIds:[\(assigneeIds.map{ "\(GraphQL.quoteString(input: "\($0.rawValue)"))" }.joined(separator: ","))]")
				} else {
					fields.append("assigneeIds:null")
				}
				case .undefined: break
			}

			switch milestoneId {
				case .value(let milestoneId):
				if let milestoneId = milestoneId {
					fields.append("milestoneId:\(GraphQL.quoteString(input: "\(milestoneId.rawValue)"))")
				} else {
					fields.append("milestoneId:null")
				}
				case .undefined: break
			}

			switch labelIds {
				case .value(let labelIds):
				if let labelIds = labelIds {
					fields.append("labelIds:[\(labelIds.map{ "\(GraphQL.quoteString(input: "\($0.rawValue)"))" }.joined(separator: ","))]")
				} else {
					fields.append("labelIds:null")
				}
				case .undefined: break
			}

			switch projectIds {
				case .value(let projectIds):
				if let projectIds = projectIds {
					fields.append("projectIds:[\(projectIds.map{ "\(GraphQL.quoteString(input: "\($0.rawValue)"))" }.joined(separator: ","))]")
				} else {
					fields.append("projectIds:null")
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
