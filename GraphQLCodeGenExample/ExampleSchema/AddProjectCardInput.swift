// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class AddProjectCardInput {
		open var projectColumnId: GraphQL.ID

		open var contentId: Input<GraphQL.ID>

		open var note: Input<String>

		open var clientMutationId: Input<String>

		public init(
			projectColumnId: GraphQL.ID,

			contentId: Input<GraphQL.ID> = .undefined,

			note: Input<String> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.projectColumnId = projectColumnId

			self.contentId = contentId

			self.note = note

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("projectColumnId:\(GraphQL.quoteString(input: "\(projectColumnId.rawValue)"))")

			switch contentId {
				case .value(let contentId):
				if let contentId = contentId {
					fields.append("contentId:\(GraphQL.quoteString(input: "\(contentId.rawValue)"))")
				} else {
					fields.append("contentId:null")
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
