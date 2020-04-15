// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class DeleteProjectCardInput {
		open var cardId: GraphQL.ID

		open var clientMutationId: Input<String>

		public init(
			cardId: GraphQL.ID,

			clientMutationId: Input<String> = .undefined
		) {
			self.cardId = cardId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("cardId:\(GraphQL.quoteString(input: "\(cardId.rawValue)"))")

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
