// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ResolveReviewThreadInput {
		open var threadId: GraphQL.ID

		open var clientMutationId: Input<String>

		public init(
			threadId: GraphQL.ID,

			clientMutationId: Input<String> = .undefined
		) {
			self.threadId = threadId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("threadId:\(GraphQL.quoteString(input: "\(threadId.rawValue)"))")

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
