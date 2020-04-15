// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class DeleteRefInput {
		open var refId: GraphQL.ID

		open var clientMutationId: Input<String>

		public init(
			refId: GraphQL.ID,

			clientMutationId: Input<String> = .undefined
		) {
			self.refId = refId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("refId:\(GraphQL.quoteString(input: "\(refId.rawValue)"))")

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
