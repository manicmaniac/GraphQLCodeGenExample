// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RequestReviewsInput {
		open var pullRequestId: GraphQL.ID

		open var userIds: Input<[GraphQL.ID]>

		open var teamIds: Input<[GraphQL.ID]>

		open var union: Input<Bool>

		open var clientMutationId: Input<String>

		public init(
			pullRequestId: GraphQL.ID,

			userIds: Input<[GraphQL.ID]> = .undefined,

			teamIds: Input<[GraphQL.ID]> = .undefined,

			union: Input<Bool> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.pullRequestId = pullRequestId

			self.userIds = userIds

			self.teamIds = teamIds

			self.union = union

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("pullRequestId:\(GraphQL.quoteString(input: "\(pullRequestId.rawValue)"))")

			switch userIds {
				case .value(let userIds):
				if let userIds = userIds {
					fields.append("userIds:[\(userIds.map{ "\(GraphQL.quoteString(input: "\($0.rawValue)"))" }.joined(separator: ","))]")
				} else {
					fields.append("userIds:null")
				}
				case .undefined: break
			}

			switch teamIds {
				case .value(let teamIds):
				if let teamIds = teamIds {
					fields.append("teamIds:[\(teamIds.map{ "\(GraphQL.quoteString(input: "\($0.rawValue)"))" }.joined(separator: ","))]")
				} else {
					fields.append("teamIds:null")
				}
				case .undefined: break
			}

			switch union {
				case .value(let union):
				if let union = union {
					fields.append("union:\(union)")
				} else {
					fields.append("union:null")
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
