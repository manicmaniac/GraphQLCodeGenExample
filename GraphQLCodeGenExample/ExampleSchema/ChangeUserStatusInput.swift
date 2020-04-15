// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ChangeUserStatusInput {
		open var emoji: Input<String>

		open var message: Input<String>

		open var organizationId: Input<GraphQL.ID>

		open var limitedAvailability: Input<Bool>

		open var expiresAt: Input<String>

		open var clientMutationId: Input<String>

		public init(
			emoji: Input<String> = .undefined,

			message: Input<String> = .undefined,

			organizationId: Input<GraphQL.ID> = .undefined,

			limitedAvailability: Input<Bool> = .undefined,

			expiresAt: Input<String> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.emoji = emoji

			self.message = message

			self.organizationId = organizationId

			self.limitedAvailability = limitedAvailability

			self.expiresAt = expiresAt

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			switch emoji {
				case .value(let emoji):
				if let emoji = emoji {
					fields.append("emoji:\(GraphQL.quoteString(input: emoji))")
				} else {
					fields.append("emoji:null")
				}
				case .undefined: break
			}

			switch message {
				case .value(let message):
				if let message = message {
					fields.append("message:\(GraphQL.quoteString(input: message))")
				} else {
					fields.append("message:null")
				}
				case .undefined: break
			}

			switch organizationId {
				case .value(let organizationId):
				if let organizationId = organizationId {
					fields.append("organizationId:\(GraphQL.quoteString(input: "\(organizationId.rawValue)"))")
				} else {
					fields.append("organizationId:null")
				}
				case .undefined: break
			}

			switch limitedAvailability {
				case .value(let limitedAvailability):
				if let limitedAvailability = limitedAvailability {
					fields.append("limitedAvailability:\(limitedAvailability)")
				} else {
					fields.append("limitedAvailability:null")
				}
				case .undefined: break
			}

			switch expiresAt {
				case .value(let expiresAt):
				if let expiresAt = expiresAt {
					fields.append("expiresAt:\(GraphQL.quoteString(input: expiresAt))")
				} else {
					fields.append("expiresAt:null")
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
