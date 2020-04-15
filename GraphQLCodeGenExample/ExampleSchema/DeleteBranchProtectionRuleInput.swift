// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class DeleteBranchProtectionRuleInput {
		open var branchProtectionRuleId: GraphQL.ID

		open var clientMutationId: Input<String>

		public init(
			branchProtectionRuleId: GraphQL.ID,

			clientMutationId: Input<String> = .undefined
		) {
			self.branchProtectionRuleId = branchProtectionRuleId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("branchProtectionRuleId:\(GraphQL.quoteString(input: "\(branchProtectionRuleId.rawValue)"))")

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
