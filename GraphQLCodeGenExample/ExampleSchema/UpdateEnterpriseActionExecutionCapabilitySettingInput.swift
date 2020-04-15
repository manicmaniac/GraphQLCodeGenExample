// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateEnterpriseActionExecutionCapabilitySettingInput {
		open var enterpriseId: GraphQL.ID

		open var capability: ActionExecutionCapabilitySetting

		open var clientMutationId: Input<String>

		public init(
			enterpriseId: GraphQL.ID,

			capability: ActionExecutionCapabilitySetting,

			clientMutationId: Input<String> = .undefined
		) {
			self.enterpriseId = enterpriseId

			self.capability = capability

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("enterpriseId:\(GraphQL.quoteString(input: "\(enterpriseId.rawValue)"))")

			fields.append("capability:\(capability.rawValue)")

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
