// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class AddCommentInput {
		open var subjectId: GraphQL.ID

		open var body: String

		open var clientMutationId: Input<String>

		public init(
			subjectId: GraphQL.ID,

			body: String,

			clientMutationId: Input<String> = .undefined
		) {
			self.subjectId = subjectId

			self.body = body

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("subjectId:\(GraphQL.quoteString(input: "\(subjectId.rawValue)"))")

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
