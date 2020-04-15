// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class DeletePullRequestReviewInput {
		open var pullRequestReviewId: GraphQL.ID

		open var clientMutationId: Input<String>

		public init(
			pullRequestReviewId: GraphQL.ID,

			clientMutationId: Input<String> = .undefined
		) {
			self.pullRequestReviewId = pullRequestReviewId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("pullRequestReviewId:\(GraphQL.quoteString(input: "\(pullRequestReviewId.rawValue)"))")

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
