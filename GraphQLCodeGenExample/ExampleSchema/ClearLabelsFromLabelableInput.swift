// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ClearLabelsFromLabelableInput {
		open var labelableId: GraphQL.ID

		open var clientMutationId: Input<String>

		public init(
			labelableId: GraphQL.ID,

			clientMutationId: Input<String> = .undefined
		) {
			self.labelableId = labelableId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("labelableId:\(GraphQL.quoteString(input: "\(labelableId.rawValue)"))")

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
