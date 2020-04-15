// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateProjectCardInput {
		open var projectCardId: GraphQL.ID

		open var isArchived: Input<Bool>

		open var note: Input<String>

		open var clientMutationId: Input<String>

		public init(
			projectCardId: GraphQL.ID,

			isArchived: Input<Bool> = .undefined,

			note: Input<String> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.projectCardId = projectCardId

			self.isArchived = isArchived

			self.note = note

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("projectCardId:\(GraphQL.quoteString(input: "\(projectCardId.rawValue)"))")

			switch isArchived {
				case .value(let isArchived):
				if let isArchived = isArchived {
					fields.append("isArchived:\(isArchived)")
				} else {
					fields.append("isArchived:null")
				}
				case .undefined: break
			}

			switch note {
				case .value(let note):
				if let note = note {
					fields.append("note:\(GraphQL.quoteString(input: note))")
				} else {
					fields.append("note:null")
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
