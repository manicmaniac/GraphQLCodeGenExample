// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RegenerateEnterpriseIdentityProviderRecoveryCodesInput {
		open var enterpriseId: GraphQL.ID

		open var clientMutationId: Input<String>

		public init(
			enterpriseId: GraphQL.ID,

			clientMutationId: Input<String> = .undefined
		) {
			self.enterpriseId = enterpriseId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("enterpriseId:\(GraphQL.quoteString(input: "\(enterpriseId.rawValue)"))")

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
