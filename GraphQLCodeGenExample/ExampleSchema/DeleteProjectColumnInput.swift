// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class DeleteProjectColumnInput {
		open var columnId: GraphQL.ID

		open var clientMutationId: Input<String>

		public init(
			columnId: GraphQL.ID,

			clientMutationId: Input<String> = .undefined
		) {
			self.columnId = columnId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("columnId:\(GraphQL.quoteString(input: "\(columnId.rawValue)"))")

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
