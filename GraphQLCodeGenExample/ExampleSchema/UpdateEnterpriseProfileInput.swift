// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateEnterpriseProfileInput {
		open var enterpriseId: GraphQL.ID

		open var name: Input<String>

		open var description: Input<String>

		open var websiteUrl: Input<String>

		open var location: Input<String>

		open var clientMutationId: Input<String>

		public init(
			enterpriseId: GraphQL.ID,

			name: Input<String> = .undefined,

			description: Input<String> = .undefined,

			websiteUrl: Input<String> = .undefined,

			location: Input<String> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.enterpriseId = enterpriseId

			self.name = name

			self.description = description

			self.websiteUrl = websiteUrl

			self.location = location

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("enterpriseId:\(GraphQL.quoteString(input: "\(enterpriseId.rawValue)"))")

			switch name {
				case .value(let name):
				if let name = name {
					fields.append("name:\(GraphQL.quoteString(input: name))")
				} else {
					fields.append("name:null")
				}
				case .undefined: break
			}

			switch description {
				case .value(let description):
				if let description = description {
					fields.append("description:\(GraphQL.quoteString(input: description))")
				} else {
					fields.append("description:null")
				}
				case .undefined: break
			}

			switch websiteUrl {
				case .value(let websiteUrl):
				if let websiteUrl = websiteUrl {
					fields.append("websiteUrl:\(GraphQL.quoteString(input: websiteUrl))")
				} else {
					fields.append("websiteUrl:null")
				}
				case .undefined: break
			}

			switch location {
				case .value(let location):
				if let location = location {
					fields.append("location:\(GraphQL.quoteString(input: location))")
				} else {
					fields.append("location:null")
				}
				case .undefined: break
			}

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
