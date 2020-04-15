// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateIssueCommentInput {
		open var id: GraphQL.ID

		open var body: String

		open var clientMutationId: Input<String>

		public init(
			id: GraphQL.ID,

			body: String,

			clientMutationId: Input<String> = .undefined
		) {
			self.id = id

			self.body = body

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("id:\(GraphQL.quoteString(input: "\(id.rawValue)"))")

			fields.append("body:\(GraphQL.quoteString(input: body))")

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
