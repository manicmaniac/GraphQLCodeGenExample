// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CreateRepositoryInput {
		open var name: String

		open var visibility: RepositoryVisibility

		open var ownerId: Input<GraphQL.ID>

		open var description: Input<String>

		open var template: Input<Bool>

		open var homepageUrl: Input<String>

		open var hasWikiEnabled: Input<Bool>

		open var hasIssuesEnabled: Input<Bool>

		open var teamId: Input<GraphQL.ID>

		open var clientMutationId: Input<String>

		public init(
			name: String,

			visibility: RepositoryVisibility,

			ownerId: Input<GraphQL.ID> = .undefined,

			description: Input<String> = .undefined,

			template: Input<Bool> = .undefined,

			homepageUrl: Input<String> = .undefined,

			hasWikiEnabled: Input<Bool> = .undefined,

			hasIssuesEnabled: Input<Bool> = .undefined,

			teamId: Input<GraphQL.ID> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.name = name

			self.ownerId = ownerId

			self.description = description

			self.visibility = visibility

			self.template = template

			self.homepageUrl = homepageUrl

			self.hasWikiEnabled = hasWikiEnabled

			self.hasIssuesEnabled = hasIssuesEnabled

			self.teamId = teamId

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("name:\(GraphQL.quoteString(input: name))")

			fields.append("visibility:\(visibility.rawValue)")

			switch ownerId {
				case .value(let ownerId):
				if let ownerId = ownerId {
					fields.append("ownerId:\(GraphQL.quoteString(input: "\(ownerId.rawValue)"))")
				} else {
					fields.append("ownerId:null")
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

			switch template {
				case .value(let template):
				if let template = template {
					fields.append("template:\(template)")
				} else {
					fields.append("template:null")
				}
				case .undefined: break
			}

			switch homepageUrl {
				case .value(let homepageUrl):
				if let homepageUrl = homepageUrl {
					fields.append("homepageUrl:\(GraphQL.quoteString(input: homepageUrl))")
				} else {
					fields.append("homepageUrl:null")
				}
				case .undefined: break
			}

			switch hasWikiEnabled {
				case .value(let hasWikiEnabled):
				if let hasWikiEnabled = hasWikiEnabled {
					fields.append("hasWikiEnabled:\(hasWikiEnabled)")
				} else {
					fields.append("hasWikiEnabled:null")
				}
				case .undefined: break
			}

			switch hasIssuesEnabled {
				case .value(let hasIssuesEnabled):
				if let hasIssuesEnabled = hasIssuesEnabled {
					fields.append("hasIssuesEnabled:\(hasIssuesEnabled)")
				} else {
					fields.append("hasIssuesEnabled:null")
				}
				case .undefined: break
			}

			switch teamId {
				case .value(let teamId):
				if let teamId = teamId {
					fields.append("teamId:\(GraphQL.quoteString(input: "\(teamId.rawValue)"))")
				} else {
					fields.append("teamId:null")
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
