// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class IssueOrder {
		open var field: IssueOrderField

		open var direction: OrderDirection

		public init(
			field: IssueOrderField,

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
