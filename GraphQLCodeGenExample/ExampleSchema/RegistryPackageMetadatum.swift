// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RegistryPackageMetadatum {
		open var name: String

		open var value: String

		open var update: Input<Bool>

		public init(
			name: String,

			value: String,

			update: Input<Bool> = .undefined
		) {
			self.name = name

			self.value = value

			self.update = update
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("name:\(GraphQL.quoteString(input: name))")

			fields.append("value:\(GraphQL.quoteString(input: value))")

			switch update {
				case .value(let update):
				if let update = update {
					fields.append("update:\(update)")
				} else {
					fields.append("update:null")
				}
				case .undefined: break
			}

			return "{\(fields.joined(separator: ","))}"
		}
	}
}
