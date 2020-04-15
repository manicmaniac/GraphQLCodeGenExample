// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateEnterpriseMembersCanDeleteIssuesSettingInput {
		open var enterpriseId: GraphQL.ID

		open var settingValue: EnterpriseEnabledDisabledSettingValue

		open var clientMutationId: Input<String>

		public init(
			enterpriseId: GraphQL.ID,

			settingValue: EnterpriseEnabledDisabledSettingValue,

			clientMutationId: Input<String> = .undefined
		) {
			self.enterpriseId = enterpriseId

			self.settingValue = settingValue

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("enterpriseId:\(GraphQL.quoteString(input: "\(enterpriseId.rawValue)"))")

			fields.append("settingValue:\(settingValue.rawValue)")

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
