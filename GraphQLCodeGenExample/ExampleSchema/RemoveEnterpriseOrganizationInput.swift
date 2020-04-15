// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RemoveEnterpriseOrganizationInput {
		open var enterpriseId: GraphQL.ID

		open var organizationId: GraphQL.ID

		open var clientMutationId: Input<String>

		public init(
			enterpriseId: GraphQL.ID,

			organizationId: GraphQL.ID,

			clientMutationId: Input<String> = .undefined
		) {
			self.enterpriseId = enterpriseId

			self.organizationId = organizationId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("enterpriseId:\(GraphQL.quoteString(input: "\(enterpriseId.rawValue)"))")

			fields.append("organizationId:\(GraphQL.quoteString(input: "\(organizationId.rawValue)"))")

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
