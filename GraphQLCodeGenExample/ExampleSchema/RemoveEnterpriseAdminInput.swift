// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RemoveEnterpriseAdminInput {
		open var enterpriseId: GraphQL.ID

		open var login: String

		open var clientMutationId: Input<String>

		public init(
			enterpriseId: GraphQL.ID,

			login: String,

			clientMutationId: Input<String> = .undefined
		) {
			self.enterpriseId = enterpriseId

			self.login = login

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("enterpriseId:\(GraphQL.quoteString(input: "\(enterpriseId.rawValue)"))")

			fields.append("login:\(GraphQL.quoteString(input: login))")

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
