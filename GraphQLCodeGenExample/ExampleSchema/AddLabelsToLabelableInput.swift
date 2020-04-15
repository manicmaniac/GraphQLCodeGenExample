// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class AddLabelsToLabelableInput {
		open var labelableId: GraphQL.ID

		open var labelIds: [GraphQL.ID]

		open var clientMutationId: Input<String>

		public init(
			labelableId: GraphQL.ID,

			labelIds: [GraphQL.ID],

			clientMutationId: Input<String> = .undefined
		) {
			self.labelableId = labelableId

			self.labelIds = labelIds

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("labelableId:\(GraphQL.quoteString(input: "\(labelableId.rawValue)"))")

			fields.append("labelIds:[\(labelIds.map{ "\(GraphQL.quoteString(input: "\($0.rawValue)"))" }.joined(separator: ","))]")

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
