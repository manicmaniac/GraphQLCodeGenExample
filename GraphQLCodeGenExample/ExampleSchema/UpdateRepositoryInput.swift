// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateRepositoryInput {
		open var repositoryId: GraphQL.ID

		open var name: Input<String>

		open var description: Input<String>

		open var template: Input<Bool>

		open var homepageUrl: Input<String>

		open var hasWikiEnabled: Input<Bool>

		open var hasIssuesEnabled: Input<Bool>

		open var hasProjectsEnabled: Input<Bool>

		open var clientMutationId: Input<String>

		public init(
			repositoryId: GraphQL.ID,

			name: Input<String> = .undefined,

			description: Input<String> = .undefined,

			template: Input<Bool> = .undefined,

			homepageUrl: Input<String> = .undefined,

			hasWikiEnabled: Input<Bool> = .undefined,

			hasIssuesEnabled: Input<Bool> = .undefined,

			hasProjectsEnabled: Input<Bool> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.repositoryId = repositoryId

			self.name = name

			self.description = description

			self.template = template

			self.homepageUrl = homepageUrl

			self.hasWikiEnabled = hasWikiEnabled

			self.hasIssuesEnabled = hasIssuesEnabled

			self.hasProjectsEnabled = hasProjectsEnabled

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("repositoryId:\(GraphQL.quoteString(input: "\(repositoryId.rawValue)"))")

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

			switch hasProjectsEnabled {
				case .value(let hasProjectsEnabled):
				if let hasProjectsEnabled = hasProjectsEnabled {
					fields.append("hasProjectsEnabled:\(hasProjectsEnabled)")
				} else {
					fields.append("hasProjectsEnabled:null")
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
