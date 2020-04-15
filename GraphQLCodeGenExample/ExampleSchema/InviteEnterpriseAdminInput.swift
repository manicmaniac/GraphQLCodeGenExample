// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class InviteEnterpriseAdminInput {
		open var enterpriseId: GraphQL.ID

		open var invitee: Input<String>

		open var email: Input<String>

		open var role: Input<EnterpriseAdministratorRole>

		open var clientMutationId: Input<String>

		public init(
			enterpriseId: GraphQL.ID,

			invitee: Input<String> = .undefined,

			email: Input<String> = .undefined,

			role: Input<EnterpriseAdministratorRole> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.enterpriseId = enterpriseId

			self.invitee = invitee

			self.email = email

			self.role = role

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("enterpriseId:\(GraphQL.quoteString(input: "\(enterpriseId.rawValue)"))")

			switch invitee {
				case .value(let invitee):
				if let invitee = invitee {
					fields.append("invitee:\(GraphQL.quoteString(input: invitee))")
				} else {
					fields.append("invitee:null")
				}
				case .undefined: break
			}

			switch email {
				case .value(let email):
				if let email = email {
					fields.append("email:\(GraphQL.quoteString(input: email))")
				} else {
					fields.append("email:null")
				}
				case .undefined: break
			}

			switch role {
				case .value(let role):
				if let role = role {
					fields.append("role:\(role.rawValue)")
				} else {
					fields.append("role:null")
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
