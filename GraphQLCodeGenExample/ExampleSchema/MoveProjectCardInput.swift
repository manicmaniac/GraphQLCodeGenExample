// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class MoveProjectCardInput {
		open var cardId: GraphQL.ID

		open var columnId: GraphQL.ID

		open var afterCardId: Input<GraphQL.ID>

		open var clientMutationId: Input<String>

		public init(
			cardId: GraphQL.ID,

			columnId: GraphQL.ID,

			afterCardId: Input<GraphQL.ID> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.cardId = cardId

			self.columnId = columnId

			self.afterCardId = afterCardId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("cardId:\(GraphQL.quoteString(input: "\(cardId.rawValue)"))")

			fields.append("columnId:\(GraphQL.quoteString(input: "\(columnId.rawValue)"))")

			switch afterCardId {
				case .value(let afterCardId):
				if let afterCardId = afterCardId {
					fields.append("afterCardId:\(GraphQL.quoteString(input: "\(afterCardId.rawValue)"))")
				} else {
					fields.append("afterCardId:null")
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
