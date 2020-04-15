// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class AuditLogOrder {
		open var field: Input<AuditLogOrderField>

		open var direction: Input<OrderDirection>

		public init(
			field: Input<AuditLogOrderField> = .undefined,

			direction: Input<OrderDirection> = .undefined
		) {
			self.field = field

			self.direction = direction
		}

		func serialize() -> String {
			var fields: [String] = []

			switch field {
				case .value(let field):
				if let field = field {
					fields.append("field:\(field.rawValue)")
				} else {
					fields.append("field:null")
				}
				case .undefined: break
			}

			switch direction {
				case .value(let direction):
				if let direction = direction {
					fields.append("direction:\(direction.rawValue)")
				} else {
					fields.append("direction:null")
				}
				case .undefined: break
			}

			return "{\(fields.joined(separator: ","))}"
		}
	}
}
