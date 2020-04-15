// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class MergeBranchInput {
		open var repositoryId: GraphQL.ID

		open var base: String

		open var head: String

		open var commitMessage: Input<String>

		open var clientMutationId: Input<String>

		public init(
			repositoryId: GraphQL.ID,

			base: String,

			head: String,

			commitMessage: Input<String> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.repositoryId = repositoryId

			self.base = base

			self.head = head

			self.commitMessage = commitMessage

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("repositoryId:\(GraphQL.quoteString(input: "\(repositoryId.rawValue)"))")

			fields.append("base:\(GraphQL.quoteString(input: base))")

			fields.append("head:\(GraphQL.quoteString(input: head))")

			switch commitMessage {
				case .value(let commitMessage):
				if let commitMessage = commitMessage {
					fields.append("commitMessage:\(GraphQL.quoteString(input: commitMessage))")
				} else {
					fields.append("commitMessage:null")
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
