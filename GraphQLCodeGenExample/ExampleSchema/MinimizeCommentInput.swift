// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class MinimizeCommentInput {
		open var subjectId: GraphQL.ID

		open var classifier: ReportedContentClassifiers

		open var clientMutationId: Input<String>

		public init(
			subjectId: GraphQL.ID,

			classifier: ReportedContentClassifiers,

			clientMutationId: Input<String> = .undefined
		) {
			self.subjectId = subjectId

			self.classifier = classifier

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("subjectId:\(GraphQL.quoteString(input: "\(subjectId.rawValue)"))")

			fields.append("classifier:\(classifier.rawValue)")

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
