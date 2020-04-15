// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class TeamDiscussionCommentOrder {
		open var field: TeamDiscussionCommentOrderField

		open var direction: OrderDirection

		public init(
			field: TeamDiscussionCommentOrderField,

			direction: OrderDirection
		) {
			self.field = field

			self.direction = direction
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("field:\(field.rawValue)")

			fields.append("direction:\(direction.rawValue)")

			return "{\(fields.joined(separator: ","))}"
		}
	}
}
