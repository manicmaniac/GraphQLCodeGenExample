// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateSubscriptionInput {
		open var subscribableId: GraphQL.ID

		open var state: SubscriptionState

		open var clientMutationId: Input<String>

		public init(
			subscribableId: GraphQL.ID,

			state: SubscriptionState,

			clientMutationId: Input<String> = .undefined
		) {
			self.subscribableId = subscribableId

			self.state = state

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("subscribableId:\(GraphQL.quoteString(input: "\(subscribableId.rawValue)"))")

			fields.append("state:\(state.rawValue)")

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
