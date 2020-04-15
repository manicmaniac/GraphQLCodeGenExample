// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateProjectInput {
		open var projectId: GraphQL.ID

		open var name: Input<String>

		open var body: Input<String>

		open var state: Input<ProjectState>

		open var `public`: Input<Bool>

		open var clientMutationId: Input<String>

		public init(
			projectId: GraphQL.ID,

			name: Input<String> = .undefined,

			body: Input<String> = .undefined,

			state: Input<ProjectState> = .undefined,

			`public`: Input<Bool> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.projectId = projectId

			self.name = name

			self.body = body

			self.state = state

			self.`public` = `public`

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("projectId:\(GraphQL.quoteString(input: "\(projectId.rawValue)"))")

			switch name {
				case .value(let name):
				if let name = name {
					fields.append("name:\(GraphQL.quoteString(input: name))")
				} else {
					fields.append("name:null")
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

			switch state {
				case .value(let state):
				if let state = state {
					fields.append("state:\(state.rawValue)")
				} else {
					fields.append("state:null")
				}
				case .undefined: break
			}

			switch `public` {
				case .value(let `public`):
				if let `public` = `public` {
					fields.append("public:\(public)")
				} else {
					fields.append("public:null")
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
