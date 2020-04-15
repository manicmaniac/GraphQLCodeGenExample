// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UnmarkIssueAsDuplicateInput {
		open var duplicateId: GraphQL.ID

		open var canonicalId: GraphQL.ID

		open var clientMutationId: Input<String>

		public init(
			duplicateId: GraphQL.ID,

			canonicalId: GraphQL.ID,

			clientMutationId: Input<String> = .undefined
		) {
			self.duplicateId = duplicateId

			self.canonicalId = canonicalId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("duplicateId:\(GraphQL.quoteString(input: "\(duplicateId.rawValue)"))")

			fields.append("canonicalId:\(GraphQL.quoteString(input: "\(canonicalId.rawValue)"))")

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
