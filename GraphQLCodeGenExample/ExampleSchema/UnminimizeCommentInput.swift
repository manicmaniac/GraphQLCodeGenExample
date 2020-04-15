// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UnminimizeCommentInput {
		open var subjectId: GraphQL.ID

		open var clientMutationId: Input<String>

		public init(
			subjectId: GraphQL.ID,

			clientMutationId: Input<String> = .undefined
		) {
			self.subjectId = subjectId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("subjectId:\(GraphQL.quoteString(input: "\(subjectId.rawValue)"))")

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
