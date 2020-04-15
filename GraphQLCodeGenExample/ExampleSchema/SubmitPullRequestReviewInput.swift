// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class SubmitPullRequestReviewInput {
		open var event: PullRequestReviewEvent

		open var pullRequestId: Input<GraphQL.ID>

		open var pullRequestReviewId: Input<GraphQL.ID>

		open var body: Input<String>

		open var clientMutationId: Input<String>

		public init(
			event: PullRequestReviewEvent,

			pullRequestId: Input<GraphQL.ID> = .undefined,

			pullRequestReviewId: Input<GraphQL.ID> = .undefined,

			body: Input<String> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.pullRequestId = pullRequestId

			self.pullRequestReviewId = pullRequestReviewId

			self.event = event

			self.body = body

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("event:\(event.rawValue)")

			switch pullRequestId {
				case .value(let pullRequestId):
				if let pullRequestId = pullRequestId {
					fields.append("pullRequestId:\(GraphQL.quoteString(input: "\(pullRequestId.rawValue)"))")
				} else {
					fields.append("pullRequestId:null")
				}
				case .undefined: break
			}

			switch pullRequestReviewId {
				case .value(let pullRequestReviewId):
				if let pullRequestReviewId = pullRequestReviewId {
					fields.append("pullRequestReviewId:\(GraphQL.quoteString(input: "\(pullRequestReviewId.rawValue)"))")
				} else {
					fields.append("pullRequestReviewId:null")
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
