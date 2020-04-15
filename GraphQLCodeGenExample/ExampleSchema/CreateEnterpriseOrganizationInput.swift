// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CreateEnterpriseOrganizationInput {
		open var enterpriseId: GraphQL.ID

		open var login: String

		open var profileName: String

		open var billingEmail: String

		open var adminLogins: [String]

		open var clientMutationId: Input<String>

		public init(
			enterpriseId: GraphQL.ID,

			login: String,

			profileName: String,

			billingEmail: String,

			adminLogins: [String],

			clientMutationId: Input<String> = .undefined
		) {
			self.enterpriseId = enterpriseId

			self.login = login

			self.profileName = profileName

			self.billingEmail = billingEmail

			self.adminLogins = adminLogins

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("enterpriseId:\(GraphQL.quoteString(input: "\(enterpriseId.rawValue)"))")

			fields.append("login:\(GraphQL.quoteString(input: login))")

			fields.append("profileName:\(GraphQL.quoteString(input: profileName))")

			fields.append("billingEmail:\(GraphQL.quoteString(input: billingEmail))")

			fields.append("adminLogins:[\(adminLogins.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")

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
