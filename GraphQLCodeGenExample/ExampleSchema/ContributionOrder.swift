// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ContributionOrder {
		open var direction: OrderDirection

		open var field: Input<ContributionOrderField>

		public init(
			direction: OrderDirection,

			field: Input<ContributionOrderField> = .undefined
		) {
			self.field = field

			self.direction = direction
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("direction:\(direction.rawValue)")

			switch field {
				case .value(let field):
				if let field = field {
					fields.append("field:\(field.rawValue)")
				} else {
					fields.append("field:null")
				}
				case .undefined: break
			}

			return "{\(fields.joined(separator: ","))}"
		}
	}
}
