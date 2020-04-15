// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class AddPullRequestReviewCommentInput {
		open var body: String

		open var pullRequestId: Input<GraphQL.ID>

		open var pullRequestReviewId: Input<GraphQL.ID>

		open var commitOid: Input<String>

		open var path: Input<String>

		open var position: Input<Int32>

		open var inReplyTo: Input<GraphQL.ID>

		open var clientMutationId: Input<String>

		public init(
			body: String,

			pullRequestId: Input<GraphQL.ID> = .undefined,

			pullRequestReviewId: Input<GraphQL.ID> = .undefined,

			commitOid: Input<String> = .undefined,

			path: Input<String> = .undefined,

			position: Input<Int32> = .undefined,

			inReplyTo: Input<GraphQL.ID> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.pullRequestId = pullRequestId

			self.pullRequestReviewId = pullRequestReviewId

			self.commitOid = commitOid

			self.body = body

			self.path = path

			self.position = position

			self.inReplyTo = inReplyTo

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("body:\(GraphQL.quoteString(input: body))")

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

			switch commitOid {
				case .value(let commitOid):
				if let commitOid = commitOid {
					fields.append("commitOID:\(GraphQL.quoteString(input: commitOid))")
				} else {
					fields.append("commitOID:null")
				}
				case .undefined: break
			}

			switch path {
				case .value(let path):
				if let path = path {
					fields.append("path:\(GraphQL.quoteString(input: path))")
				} else {
					fields.append("path:null")
				}
				case .undefined: break
			}

			switch position {
				case .value(let position):
				if let position = position {
					fields.append("position:\(position)")
				} else {
					fields.append("position:null")
				}
				case .undefined: break
			}

			switch inReplyTo {
				case .value(let inReplyTo):
				if let inReplyTo = inReplyTo {
					fields.append("inReplyTo:\(GraphQL.quoteString(input: "\(inReplyTo.rawValue)"))")
				} else {
					fields.append("inReplyTo:null")
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
