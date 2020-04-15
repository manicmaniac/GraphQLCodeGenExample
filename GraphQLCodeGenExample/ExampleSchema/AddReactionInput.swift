// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class AddReactionInput {
		open var subjectId: GraphQL.ID

		open var content: ReactionContent

		open var clientMutationId: Input<String>

		public init(
			subjectId: GraphQL.ID,

			content: ReactionContent,

			clientMutationId: Input<String> = .undefined
		) {
			self.subjectId = subjectId

			self.content = content

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("subjectId:\(GraphQL.quoteString(input: "\(subjectId.rawValue)"))")

			fields.append("content:\(content.rawValue)")

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
