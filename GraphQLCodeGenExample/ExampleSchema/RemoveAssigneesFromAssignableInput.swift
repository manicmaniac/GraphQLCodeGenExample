// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RemoveAssigneesFromAssignableInput {
		open var assignableId: GraphQL.ID

		open var assigneeIds: [GraphQL.ID]

		open var clientMutationId: Input<String>

		public init(
			assignableId: GraphQL.ID,

			assigneeIds: [GraphQL.ID],

			clientMutationId: Input<String> = .undefined
		) {
			self.assignableId = assignableId

			self.assigneeIds = assigneeIds

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("assignableId:\(GraphQL.quoteString(input: "\(assignableId.rawValue)"))")

			fields.append("assigneeIds:[\(assigneeIds.map{ "\(GraphQL.quoteString(input: "\($0.rawValue)"))" }.joined(separator: ","))]")

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
