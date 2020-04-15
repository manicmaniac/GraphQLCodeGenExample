// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UnlockLockableInput {
		open var lockableId: GraphQL.ID

		open var clientMutationId: Input<String>

		public init(
			lockableId: GraphQL.ID,

			clientMutationId: Input<String> = .undefined
		) {
			self.lockableId = lockableId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("lockableId:\(GraphQL.quoteString(input: "\(lockableId.rawValue)"))")

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
