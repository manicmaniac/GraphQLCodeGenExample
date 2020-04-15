// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CreateIssueInput {
		open var repositoryId: GraphQL.ID

		open var title: String

		open var body: Input<String>

		open var assigneeIds: Input<[GraphQL.ID]>

		open var milestoneId: Input<GraphQL.ID>

		open var labelIds: Input<[GraphQL.ID]>

		open var projectIds: Input<[GraphQL.ID]>

		open var clientMutationId: Input<String>

		public init(
			repositoryId: GraphQL.ID,

			title: String,

			body: Input<String> = .undefined,

			assigneeIds: Input<[GraphQL.ID]> = .undefined,

			milestoneId: Input<GraphQL.ID> = .undefined,

			labelIds: Input<[GraphQL.ID]> = .undefined,

			projectIds: Input<[GraphQL.ID]> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.repositoryId = repositoryId

			self.title = title

			self.body = body

			self.assigneeIds = assigneeIds

			self.milestoneId = milestoneId

			self.labelIds = labelIds

			self.projectIds = projectIds

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("repositoryId:\(GraphQL.quoteString(input: "\(repositoryId.rawValue)"))")

			fields.append("title:\(GraphQL.quoteString(input: title))")

			switch body {
				case .value(let body):
				if let body = body {
					fields.append("body:\(GraphQL.quoteString(input: body))")
				} else {
					fields.append("body:null")
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
