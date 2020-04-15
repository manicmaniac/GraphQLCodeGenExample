// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CreatePullRequestInput {
		open var repositoryId: GraphQL.ID

		open var baseRefName: String

		open var headRefName: String

		open var title: String

		open var body: Input<String>

		open var maintainerCanModify: Input<Bool>

		open var draft: Input<Bool>

		open var clientMutationId: Input<String>

		public init(
			repositoryId: GraphQL.ID,

			baseRefName: String,

			headRefName: String,

			title: String,

			body: Input<String> = .undefined,

			maintainerCanModify: Input<Bool> = .undefined,

			draft: Input<Bool> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.repositoryId = repositoryId

			self.baseRefName = baseRefName

			self.headRefName = headRefName

			self.title = title

			self.body = body

			self.maintainerCanModify = maintainerCanModify

			self.draft = draft

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("repositoryId:\(GraphQL.quoteString(input: "\(repositoryId.rawValue)"))")

			fields.append("baseRefName:\(GraphQL.quoteString(input: baseRefName))")

			fields.append("headRefName:\(GraphQL.quoteString(input: headRefName))")

			fields.append("title:\(GraphQL.quoteString(input: title))")

			switch body {
				case .value(let body):
				if let body = body {
					fields.append("body:\(GraphQL.quoteString(input: body))")
				} else {
					fields.append("body:null")
				}
				case .undefined: break
			}

			switch maintainerCanModify {
				case .value(let maintainerCanModify):
				if let maintainerCanModify = maintainerCanModify {
					fields.append("maintainerCanModify:\(maintainerCanModify)")
				} else {
					fields.append("maintainerCanModify:null")
				}
				case .undefined: break
			}

			switch draft {
				case .value(let draft):
				if let draft = draft {
					fields.append("draft:\(draft)")
				} else {
					fields.append("draft:null")
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
