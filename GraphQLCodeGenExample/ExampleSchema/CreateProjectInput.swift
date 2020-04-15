// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CreateProjectInput {
		open var ownerId: GraphQL.ID

		open var name: String

		open var body: Input<String>

		open var template: Input<ProjectTemplate>

		open var repositoryIds: Input<[GraphQL.ID]>

		open var clientMutationId: Input<String>

		public init(
			ownerId: GraphQL.ID,

			name: String,

			body: Input<String> = .undefined,

			template: Input<ProjectTemplate> = .undefined,

			repositoryIds: Input<[GraphQL.ID]> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.ownerId = ownerId

			self.name = name

			self.body = body

			self.template = template

			self.repositoryIds = repositoryIds

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("ownerId:\(GraphQL.quoteString(input: "\(ownerId.rawValue)"))")

			fields.append("name:\(GraphQL.quoteString(input: name))")

			switch body {
				case .value(let body):
				if let body = body {
					fields.append("body:\(GraphQL.quoteString(input: body))")
				} else {
					fields.append("body:null")
				}
				case .undefined: break
			}

			switch template {
				case .value(let template):
				if let template = template {
					fields.append("template:\(template.rawValue)")
				} else {
					fields.append("template:null")
				}
				case .undefined: break
			}

			switch repositoryIds {
				case .value(let repositoryIds):
				if let repositoryIds = repositoryIds {
					fields.append("repositoryIds:[\(repositoryIds.map{ "\(GraphQL.quoteString(input: "\($0.rawValue)"))" }.joined(separator: ","))]")
				} else {
					fields.append("repositoryIds:null")
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
