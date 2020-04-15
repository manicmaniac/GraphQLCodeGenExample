// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdatePullRequestReviewCommentInput {
		open var pullRequestReviewCommentId: GraphQL.ID

		open var body: String

		open var clientMutationId: Input<String>

		public init(
			pullRequestReviewCommentId: GraphQL.ID,

			body: String,

			clientMutationId: Input<String> = .undefined
		) {
			self.pullRequestReviewCommentId = pullRequestReviewCommentId

			self.body = body

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("pullRequestReviewCommentId:\(GraphQL.quoteString(input: "\(pullRequestReviewCommentId.rawValue)"))")

			fields.append("body:\(GraphQL.quoteString(input: body))")

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
