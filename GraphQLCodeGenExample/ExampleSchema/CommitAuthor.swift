// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CommitAuthor {
		open var id: Input<GraphQL.ID>

		open var emails: Input<[String]>

		public init(
			id: Input<GraphQL.ID> = .undefined,

			emails: Input<[String]> = .undefined
		) {
			self.id = id

			self.emails = emails
		}

		func serialize() -> String {
			var fields: [String] = []

			switch id {
				case .value(let id):
				if let id = id {
					fields.append("id:\(GraphQL.quoteString(input: "\(id.rawValue)"))")
				} else {
					fields.append("id:null")
				}
				case .undefined: break
			}

			switch emails {
				case .value(let emails):
				if let emails = emails {
					fields.append("emails:[\(emails.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
				} else {
					fields.append("emails:null")
				}
				case .undefined: break
			}

			return "{\(fields.joined(separator: ","))}"
		}
	}
}
