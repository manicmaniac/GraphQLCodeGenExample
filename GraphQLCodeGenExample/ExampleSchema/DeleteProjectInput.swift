// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class DeleteProjectInput {
		open var projectId: GraphQL.ID

		open var clientMutationId: Input<String>

		public init(
			projectId: GraphQL.ID,

			clientMutationId: Input<String> = .undefined
		) {
			self.projectId = projectId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("projectId:\(GraphQL.quoteString(input: "\(projectId.rawValue)"))")

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
