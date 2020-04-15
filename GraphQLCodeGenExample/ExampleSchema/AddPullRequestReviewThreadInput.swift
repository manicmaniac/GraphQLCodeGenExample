// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class AddPullRequestReviewThreadInput {
		open var path: String

		open var body: String

		open var pullRequestReviewId: GraphQL.ID

		open var line: Int32

		open var side: Input<DiffSide>

		open var startLine: Input<Int32>

		open var startSide: Input<DiffSide>

		open var clientMutationId: Input<String>

		public init(
			path: String,

			body: String,

			pullRequestReviewId: GraphQL.ID,

			line: Int32,

			side: Input<DiffSide> = .undefined,

			startLine: Input<Int32> = .undefined,

			startSide: Input<DiffSide> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.path = path

			self.body = body

			self.pullRequestReviewId = pullRequestReviewId

			self.line = line

			self.side = side

			self.startLine = startLine

			self.startSide = startSide

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("path:\(GraphQL.quoteString(input: path))")

			fields.append("body:\(GraphQL.quoteString(input: body))")

			fields.append("pullRequestReviewId:\(GraphQL.quoteString(input: "\(pullRequestReviewId.rawValue)"))")

			fields.append("line:\(line)")

			switch side {
				case .value(let side):
				if let side = side {
					fields.append("side:\(side.rawValue)")
				} else {
					fields.append("side:null")
				}
				case .undefined: break
			}

			switch startLine {
				case .value(let startLine):
				if let startLine = startLine {
					fields.append("startLine:\(startLine)")
				} else {
					fields.append("startLine:null")
				}
				case .undefined: break
			}

			switch startSide {
				case .value(let startSide):
				if let startSide = startSide {
					fields.append("startSide:\(startSide.rawValue)")
				} else {
					fields.append("startSide:null")
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
