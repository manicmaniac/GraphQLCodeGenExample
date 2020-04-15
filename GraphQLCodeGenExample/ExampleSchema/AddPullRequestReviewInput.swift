// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class AddPullRequestReviewInput {
		open var pullRequestId: GraphQL.ID

		open var commitOid: Input<String>

		open var body: Input<String>

		open var event: Input<PullRequestReviewEvent>

		open var comments: Input<[DraftPullRequestReviewComment]>

		open var threads: Input<[DraftPullRequestReviewThread]>

		open var clientMutationId: Input<String>

		public init(
			pullRequestId: GraphQL.ID,

			commitOid: Input<String> = .undefined,

			body: Input<String> = .undefined,

			event: Input<PullRequestReviewEvent> = .undefined,

			comments: Input<[DraftPullRequestReviewComment]> = .undefined,

			threads: Input<[DraftPullRequestReviewThread]> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.pullRequestId = pullRequestId

			self.commitOid = commitOid

			self.body = body

			self.event = event

			self.comments = comments

			self.threads = threads

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("pullRequestId:\(GraphQL.quoteString(input: "\(pullRequestId.rawValue)"))")

			switch commitOid {
				case .value(let commitOid):
				if let commitOid = commitOid {
					fields.append("commitOID:\(GraphQL.quoteString(input: commitOid))")
				} else {
					fields.append("commitOID:null")
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

			switch event {
				case .value(let event):
				if let event = event {
					fields.append("event:\(event.rawValue)")
				} else {
					fields.append("event:null")
				}
				case .undefined: break
			}

			switch comments {
				case .value(let comments):
				if let comments = comments {
					fields.append("comments:[\(comments.map{ "\($0.serialize())" }.joined(separator: ","))]")
				} else {
					fields.append("comments:null")
				}
				case .undefined: break
			}

			switch threads {
				case .value(let threads):
				if let threads = threads {
					fields.append("threads:[\(threads.map{ "\($0.serialize())" }.joined(separator: ","))]")
				} else {
					fields.append("threads:null")
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
