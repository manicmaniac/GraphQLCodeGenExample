// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ConvertProjectCardNoteToIssueInput {
		open var projectCardId: GraphQL.ID

		open var repositoryId: GraphQL.ID

		open var title: Input<String>

		open var body: Input<String>

		open var clientMutationId: Input<String>

		public init(
			projectCardId: GraphQL.ID,

			repositoryId: GraphQL.ID,

			title: Input<String> = .undefined,

			body: Input<String> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.projectCardId = projectCardId

			self.repositoryId = repositoryId

			self.title = title

			self.body = body

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("projectCardId:\(GraphQL.quoteString(input: "\(projectCardId.rawValue)"))")

			fields.append("repositoryId:\(GraphQL.quoteString(input: "\(repositoryId.rawValue)"))")

			switch title {
				case .value(let title):
				if let title = title {
					fields.append("title:\(GraphQL.quoteString(input: title))")
				} else {
					fields.append("title:null")
				}
				case .undefined: break
			}

			switch body {
				case .value(let body):
				if let body = body {
					fields.append("body:\(GraphQL.quoteString(input: body))")
				} else {
					fields.append("body:null")
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
