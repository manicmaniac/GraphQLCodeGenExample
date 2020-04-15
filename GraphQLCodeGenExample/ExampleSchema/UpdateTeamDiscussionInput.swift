// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateTeamDiscussionInput {
		open var id: GraphQL.ID

		open var title: Input<String>

		open var body: Input<String>

		open var bodyVersion: Input<String>

		open var pinned: Input<Bool>

		open var clientMutationId: Input<String>

		public init(
			id: GraphQL.ID,

			title: Input<String> = .undefined,

			body: Input<String> = .undefined,

			bodyVersion: Input<String> = .undefined,

			pinned: Input<Bool> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.id = id

			self.title = title

			self.body = body

			self.bodyVersion = bodyVersion

			self.pinned = pinned

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("id:\(GraphQL.quoteString(input: "\(id.rawValue)"))")

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

			switch bodyVersion {
				case .value(let bodyVersion):
				if let bodyVersion = bodyVersion {
					fields.append("bodyVersion:\(GraphQL.quoteString(input: bodyVersion))")
				} else {
					fields.append("bodyVersion:null")
				}
				case .undefined: break
			}

			switch pinned {
				case .value(let pinned):
				if let pinned = pinned {
					fields.append("pinned:\(pinned)")
				} else {
					fields.append("pinned:null")
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
