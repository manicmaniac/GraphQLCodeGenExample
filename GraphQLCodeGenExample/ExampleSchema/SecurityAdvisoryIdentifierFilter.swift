// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class SecurityAdvisoryIdentifierFilter {
		open var type: SecurityAdvisoryIdentifierType

		open var value: String

		public init(
			type: SecurityAdvisoryIdentifierType,

			value: String
		) {
			self.type = type

			self.value = value
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("type:\(type.rawValue)")

			fields.append("value:\(GraphQL.quoteString(input: value))")

			return "{\(fields.joined(separator: ","))}"
		}
	}
}
