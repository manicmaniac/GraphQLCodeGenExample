// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class MoveProjectColumnInput {
		open var columnId: GraphQL.ID

		open var afterColumnId: Input<GraphQL.ID>

		open var clientMutationId: Input<String>

		public init(
			columnId: GraphQL.ID,

			afterColumnId: Input<GraphQL.ID> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.columnId = columnId

			self.afterColumnId = afterColumnId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("columnId:\(GraphQL.quoteString(input: "\(columnId.rawValue)"))")

			switch afterColumnId {
				case .value(let afterColumnId):
				if let afterColumnId = afterColumnId {
					fields.append("afterColumnId:\(GraphQL.quoteString(input: "\(afterColumnId.rawValue)"))")
				} else {
					fields.append("afterColumnId:null")
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
