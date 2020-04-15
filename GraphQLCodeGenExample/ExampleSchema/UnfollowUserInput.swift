// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UnfollowUserInput {
		open var userId: GraphQL.ID

		open var clientMutationId: Input<String>

		public init(
			userId: GraphQL.ID,

			clientMutationId: Input<String> = .undefined
		) {
			self.userId = userId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("userId:\(GraphQL.quoteString(input: "\(userId.rawValue)"))")

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
