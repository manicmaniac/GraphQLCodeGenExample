// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RepositoryOrder {
		open var field: RepositoryOrderField

		open var direction: OrderDirection

		public init(
			field: RepositoryOrderField,

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
