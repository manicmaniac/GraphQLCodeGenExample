// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CancelEnterpriseAdminInvitationInput {
		open var invitationId: GraphQL.ID

		open var clientMutationId: Input<String>

		public init(
			invitationId: GraphQL.ID,

			clientMutationId: Input<String> = .undefined
		) {
			self.invitationId = invitationId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("invitationId:\(GraphQL.quoteString(input: "\(invitationId.rawValue)"))")

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
