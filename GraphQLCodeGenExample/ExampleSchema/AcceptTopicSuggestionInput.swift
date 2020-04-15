// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class AcceptTopicSuggestionInput {
		open var repositoryId: GraphQL.ID

		open var name: String

		open var clientMutationId: Input<String>

		public init(
			repositoryId: GraphQL.ID,

			name: String,

			clientMutationId: Input<String> = .undefined
		) {
			self.repositoryId = repositoryId

			self.name = name

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("repositoryId:\(GraphQL.quoteString(input: "\(repositoryId.rawValue)"))")

			fields.append("name:\(GraphQL.quoteString(input: name))")

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
