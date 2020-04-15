// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CloneTemplateRepositoryInput {
		open var repositoryId: GraphQL.ID

		open var name: String

		open var ownerId: GraphQL.ID

		open var visibility: RepositoryVisibility

		open var description: Input<String>

		open var clientMutationId: Input<String>

		public init(
			repositoryId: GraphQL.ID,

			name: String,

			ownerId: GraphQL.ID,

			visibility: RepositoryVisibility,

			description: Input<String> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.repositoryId = repositoryId

			self.name = name

			self.ownerId = ownerId

			self.description = description

			self.visibility = visibility

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("repositoryId:\(GraphQL.quoteString(input: "\(repositoryId.rawValue)"))")

			fields.append("name:\(GraphQL.quoteString(input: name))")

			fields.append("ownerId:\(GraphQL.quoteString(input: "\(ownerId.rawValue)"))")

			fields.append("visibility:\(visibility.rawValue)")

			switch description {
				case .value(let description):
				if let description = description {
					fields.append("description:\(GraphQL.quoteString(input: description))")
				} else {
					fields.append("description:null")
				}
				case .undefined: break
			}

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
