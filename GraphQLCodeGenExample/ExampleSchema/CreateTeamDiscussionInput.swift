// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CreateTeamDiscussionInput {
		open var teamId: GraphQL.ID

		open var title: String

		open var body: String

		open var `private`: Input<Bool>

		open var clientMutationId: Input<String>

		public init(
			teamId: GraphQL.ID,

			title: String,

			body: String,

			`private`: Input<Bool> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.teamId = teamId

			self.title = title

			self.body = body

			self.`private` = `private`

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("teamId:\(GraphQL.quoteString(input: "\(teamId.rawValue)"))")

			fields.append("title:\(GraphQL.quoteString(input: title))")

			fields.append("body:\(GraphQL.quoteString(input: body))")

			switch `private` {
				case .value(let `private`):
				if let `private` = `private` {
					fields.append("private:\(private)")
				} else {
					fields.append("private:null")
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
