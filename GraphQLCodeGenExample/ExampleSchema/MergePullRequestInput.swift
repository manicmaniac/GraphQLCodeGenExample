// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class MergePullRequestInput {
		open var pullRequestId: GraphQL.ID

		open var commitHeadline: Input<String>

		open var commitBody: Input<String>

		open var expectedHeadOid: Input<String>

		open var mergeMethod: Input<PullRequestMergeMethod>

		open var clientMutationId: Input<String>

		public init(
			pullRequestId: GraphQL.ID,

			commitHeadline: Input<String> = .undefined,

			commitBody: Input<String> = .undefined,

			expectedHeadOid: Input<String> = .undefined,

			mergeMethod: Input<PullRequestMergeMethod> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.pullRequestId = pullRequestId

			self.commitHeadline = commitHeadline

			self.commitBody = commitBody

			self.expectedHeadOid = expectedHeadOid

			self.mergeMethod = mergeMethod

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("pullRequestId:\(GraphQL.quoteString(input: "\(pullRequestId.rawValue)"))")

			switch commitHeadline {
				case .value(let commitHeadline):
				if let commitHeadline = commitHeadline {
					fields.append("commitHeadline:\(GraphQL.quoteString(input: commitHeadline))")
				} else {
					fields.append("commitHeadline:null")
				}
				case .undefined: break
			}

			switch commitBody {
				case .value(let commitBody):
				if let commitBody = commitBody {
					fields.append("commitBody:\(GraphQL.quoteString(input: commitBody))")
				} else {
					fields.append("commitBody:null")
				}
				case .undefined: break
			}

			switch expectedHeadOid {
				case .value(let expectedHeadOid):
				if let expectedHeadOid = expectedHeadOid {
					fields.append("expectedHeadOid:\(GraphQL.quoteString(input: expectedHeadOid))")
				} else {
					fields.append("expectedHeadOid:null")
				}
				case .undefined: break
			}

			switch mergeMethod {
				case .value(let mergeMethod):
				if let mergeMethod = mergeMethod {
					fields.append("mergeMethod:\(mergeMethod.rawValue)")
				} else {
					fields.append("mergeMethod:null")
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
