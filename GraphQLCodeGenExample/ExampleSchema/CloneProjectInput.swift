// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CloneProjectInput {
		open var targetOwnerId: GraphQL.ID

		open var sourceId: GraphQL.ID

		open var includeWorkflows: Bool

		open var name: String

		open var body: Input<String>

		open var `public`: Input<Bool>

		open var clientMutationId: Input<String>

		public init(
			targetOwnerId: GraphQL.ID,

			sourceId: GraphQL.ID,

			includeWorkflows: Bool,

			name: String,

			body: Input<String> = .undefined,

			`public`: Input<Bool> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.targetOwnerId = targetOwnerId

			self.sourceId = sourceId

			self.includeWorkflows = includeWorkflows

			self.name = name

			self.body = body

			self.`public` = `public`

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("targetOwnerId:\(GraphQL.quoteString(input: "\(targetOwnerId.rawValue)"))")

			fields.append("sourceId:\(GraphQL.quoteString(input: "\(sourceId.rawValue)"))")

			fields.append("includeWorkflows:\(includeWorkflows)")

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
