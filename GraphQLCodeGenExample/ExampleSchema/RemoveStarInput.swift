// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RemoveStarInput {
		open var starrableId: GraphQL.ID

		open var clientMutationId: Input<String>

		public init(
			starrableId: GraphQL.ID,

			clientMutationId: Input<String> = .undefined
		) {
			self.starrableId = starrableId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("starrableId:\(GraphQL.quoteString(input: "\(starrableId.rawValue)"))")

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
