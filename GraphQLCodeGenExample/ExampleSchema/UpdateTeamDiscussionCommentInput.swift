// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateTeamDiscussionCommentInput {
		open var id: GraphQL.ID

		open var body: String

		open var bodyVersion: Input<String>

		open var clientMutationId: Input<String>

		public init(
			id: GraphQL.ID,

			body: String,

			bodyVersion: Input<String> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.id = id

			self.body = body

			self.bodyVersion = bodyVersion

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("id:\(GraphQL.quoteString(input: "\(id.rawValue)"))")

			fields.append("body:\(GraphQL.quoteString(input: body))")

			switch bodyVersion {
				case .value(let bodyVersion):
				if let bodyVersion = bodyVersion {
					fields.append("bodyVersion:\(GraphQL.quoteString(input: bodyVersion))")
				} else {
					fields.append("bodyVersion:null")
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
