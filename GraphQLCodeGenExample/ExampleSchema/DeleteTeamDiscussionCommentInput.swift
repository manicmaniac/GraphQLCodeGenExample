// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class DeleteTeamDiscussionCommentInput {
		open var id: GraphQL.ID

		open var clientMutationId: Input<String>

		public init(
			id: GraphQL.ID,

			clientMutationId: Input<String> = .undefined
		) {
			self.id = id

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("id:\(GraphQL.quoteString(input: "\(id.rawValue)"))")

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
