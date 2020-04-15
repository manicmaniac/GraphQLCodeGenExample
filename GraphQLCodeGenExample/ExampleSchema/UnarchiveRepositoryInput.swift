// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UnarchiveRepositoryInput {
		open var repositoryId: GraphQL.ID

		open var clientMutationId: Input<String>

		public init(
			repositoryId: GraphQL.ID,

			clientMutationId: Input<String> = .undefined
		) {
			self.repositoryId = repositoryId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("repositoryId:\(GraphQL.quoteString(input: "\(repositoryId.rawValue)"))")

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
