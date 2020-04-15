// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class DraftPullRequestReviewComment {
		open var path: String

		open var position: Int32

		open var body: String

		public init(
			path: String,

			position: Int32,

			body: String
		) {
			self.path = path

			self.position = position

			self.body = body
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("path:\(GraphQL.quoteString(input: path))")

			fields.append("position:\(position)")

			fields.append("body:\(GraphQL.quoteString(input: body))")

			return "{\(fields.joined(separator: ","))}"
		}
	}
}
