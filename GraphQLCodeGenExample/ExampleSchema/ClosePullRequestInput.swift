// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ClosePullRequestInput {
		open var pullRequestId: GraphQL.ID

		open var clientMutationId: Input<String>

		public init(
			pullRequestId: GraphQL.ID,

			clientMutationId: Input<String> = .undefined
		) {
			self.pullRequestId = pullRequestId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("pullRequestId:\(GraphQL.quoteString(input: "\(pullRequestId.rawValue)"))")

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
