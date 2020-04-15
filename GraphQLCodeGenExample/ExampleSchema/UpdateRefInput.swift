// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateRefInput {
		open var refId: GraphQL.ID

		open var oid: String

		open var force: Input<Bool>

		open var clientMutationId: Input<String>

		public init(
			refId: GraphQL.ID,

			oid: String,

			force: Input<Bool> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.refId = refId

			self.oid = oid

			self.force = force

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("refId:\(GraphQL.quoteString(input: "\(refId.rawValue)"))")

			fields.append("oid:\(GraphQL.quoteString(input: oid))")

			switch force {
				case .value(let force):
				if let force = force {
					fields.append("force:\(force)")
				} else {
					fields.append("force:null")
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
