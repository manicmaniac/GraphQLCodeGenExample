// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateEnterpriseAdministratorRoleInput {
		open var enterpriseId: GraphQL.ID

		open var login: String

		open var role: EnterpriseAdministratorRole

		open var clientMutationId: Input<String>

		public init(
			enterpriseId: GraphQL.ID,

			login: String,

			role: EnterpriseAdministratorRole,

			clientMutationId: Input<String> = .undefined
		) {
			self.enterpriseId = enterpriseId

			self.login = login

			self.role = role

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("enterpriseId:\(GraphQL.quoteString(input: "\(enterpriseId.rawValue)"))")

			fields.append("login:\(GraphQL.quoteString(input: login))")

			fields.append("role:\(role.rawValue)")

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
