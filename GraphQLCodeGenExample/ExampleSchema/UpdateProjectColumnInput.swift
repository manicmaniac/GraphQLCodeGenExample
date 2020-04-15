// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateProjectColumnInput {
		open var projectColumnId: GraphQL.ID

		open var name: String

		open var clientMutationId: Input<String>

		public init(
			projectColumnId: GraphQL.ID,

			name: String,

			clientMutationId: Input<String> = .undefined
		) {
			self.projectColumnId = projectColumnId

			self.name = name

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("projectColumnId:\(GraphQL.quoteString(input: "\(projectColumnId.rawValue)"))")

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
