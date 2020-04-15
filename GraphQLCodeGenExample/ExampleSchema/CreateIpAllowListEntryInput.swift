// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CreateIpAllowListEntryInput {
		open var ownerId: GraphQL.ID

		open var allowListValue: String

		open var isActive: Bool

		open var name: Input<String>

		open var clientMutationId: Input<String>

		public init(
			ownerId: GraphQL.ID,

			allowListValue: String,

			isActive: Bool,

			name: Input<String> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.ownerId = ownerId

			self.allowListValue = allowListValue

			self.name = name

			self.isActive = isActive

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("ownerId:\(GraphQL.quoteString(input: "\(ownerId.rawValue)"))")

			fields.append("allowListValue:\(GraphQL.quoteString(input: allowListValue))")

			fields.append("isActive:\(isActive)")

			switch name {
				case .value(let name):
				if let name = name {
					fields.append("name:\(GraphQL.quoteString(input: name))")
				} else {
					fields.append("name:null")
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
