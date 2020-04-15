// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class DeleteIpAllowListEntryInput {
		open var ipAllowListEntryId: GraphQL.ID

		open var clientMutationId: Input<String>

		public init(
			ipAllowListEntryId: GraphQL.ID,

			clientMutationId: Input<String> = .undefined
		) {
			self.ipAllowListEntryId = ipAllowListEntryId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("ipAllowListEntryId:\(GraphQL.quoteString(input: "\(ipAllowListEntryId.rawValue)"))")

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
