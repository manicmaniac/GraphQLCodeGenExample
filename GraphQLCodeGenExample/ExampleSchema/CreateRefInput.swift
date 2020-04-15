// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CreateRefInput {
		open var repositoryId: GraphQL.ID

		open var name: String

		open var oid: String

		open var clientMutationId: Input<String>

		public init(
			repositoryId: GraphQL.ID,

			name: String,

			oid: String,

			clientMutationId: Input<String> = .undefined
		) {
			self.repositoryId = repositoryId

			self.name = name

			self.oid = oid

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("repositoryId:\(GraphQL.quoteString(input: "\(repositoryId.rawValue)"))")

			fields.append("name:\(GraphQL.quoteString(input: name))")

			fields.append("oid:\(GraphQL.quoteString(input: oid))")

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
