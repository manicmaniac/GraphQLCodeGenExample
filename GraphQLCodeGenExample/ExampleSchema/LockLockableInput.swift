// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class LockLockableInput {
		open var lockableId: GraphQL.ID

		open var lockReason: Input<LockReason>

		open var clientMutationId: Input<String>

		public init(
			lockableId: GraphQL.ID,

			lockReason: Input<LockReason> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.lockableId = lockableId

			self.lockReason = lockReason

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("lockableId:\(GraphQL.quoteString(input: "\(lockableId.rawValue)"))")

			switch lockReason {
				case .value(let lockReason):
				if let lockReason = lockReason {
					fields.append("lockReason:\(lockReason.rawValue)")
				} else {
					fields.append("lockReason:null")
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
