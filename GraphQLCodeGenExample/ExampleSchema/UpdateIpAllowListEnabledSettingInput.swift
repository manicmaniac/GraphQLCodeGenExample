// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateIpAllowListEnabledSettingInput {
		open var ownerId: GraphQL.ID

		open var settingValue: IpAllowListEnabledSettingValue

		open var clientMutationId: Input<String>

		public init(
			ownerId: GraphQL.ID,

			settingValue: IpAllowListEnabledSettingValue,

			clientMutationId: Input<String> = .undefined
		) {
			self.ownerId = ownerId

			self.settingValue = settingValue

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("ownerId:\(GraphQL.quoteString(input: "\(ownerId.rawValue)"))")

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
