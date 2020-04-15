// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateEnterpriseMembersCanCreateRepositoriesSettingInput {
		open var enterpriseId: GraphQL.ID

		open var settingValue: Input<EnterpriseMembersCanCreateRepositoriesSettingValue>

		open var membersCanCreateRepositoriesPolicyEnabled: Input<Bool>

		open var membersCanCreatePublicRepositories: Input<Bool>

		open var membersCanCreatePrivateRepositories: Input<Bool>

		open var membersCanCreateInternalRepositories: Input<Bool>

		open var clientMutationId: Input<String>

		public init(
			enterpriseId: GraphQL.ID,

			settingValue: Input<EnterpriseMembersCanCreateRepositoriesSettingValue> = .undefined,

			membersCanCreateRepositoriesPolicyEnabled: Input<Bool> = .undefined,

			membersCanCreatePublicRepositories: Input<Bool> = .undefined,

			membersCanCreatePrivateRepositories: Input<Bool> = .undefined,

			membersCanCreateInternalRepositories: Input<Bool> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.enterpriseId = enterpriseId

			self.settingValue = settingValue

			self.membersCanCreateRepositoriesPolicyEnabled = membersCanCreateRepositoriesPolicyEnabled

			self.membersCanCreatePublicRepositories = membersCanCreatePublicRepositories

			self.membersCanCreatePrivateRepositories = membersCanCreatePrivateRepositories

			self.membersCanCreateInternalRepositories = membersCanCreateInternalRepositories

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("enterpriseId:\(GraphQL.quoteString(input: "\(enterpriseId.rawValue)"))")

			switch settingValue {
				case .value(let settingValue):
				if let settingValue = settingValue {
					fields.append("settingValue:\(settingValue.rawValue)")
				} else {
					fields.append("settingValue:null")
				}
				case .undefined: break
			}

			switch membersCanCreateRepositoriesPolicyEnabled {
				case .value(let membersCanCreateRepositoriesPolicyEnabled):
				if let membersCanCreateRepositoriesPolicyEnabled = membersCanCreateRepositoriesPolicyEnabled {
					fields.append("membersCanCreateRepositoriesPolicyEnabled:\(membersCanCreateRepositoriesPolicyEnabled)")
				} else {
					fields.append("membersCanCreateRepositoriesPolicyEnabled:null")
				}
				case .undefined: break
			}

			switch membersCanCreatePublicRepositories {
				case .value(let membersCanCreatePublicRepositories):
				if let membersCanCreatePublicRepositories = membersCanCreatePublicRepositories {
					fields.append("membersCanCreatePublicRepositories:\(membersCanCreatePublicRepositories)")
				} else {
					fields.append("membersCanCreatePublicRepositories:null")
				}
				case .undefined: break
			}

			switch membersCanCreatePrivateRepositories {
				case .value(let membersCanCreatePrivateRepositories):
				if let membersCanCreatePrivateRepositories = membersCanCreatePrivateRepositories {
					fields.append("membersCanCreatePrivateRepositories:\(membersCanCreatePrivateRepositories)")
				} else {
					fields.append("membersCanCreatePrivateRepositories:null")
				}
				case .undefined: break
			}

			switch membersCanCreateInternalRepositories {
				case .value(let membersCanCreateInternalRepositories):
				if let membersCanCreateInternalRepositories = membersCanCreateInternalRepositories {
					fields.append("membersCanCreateInternalRepositories:\(membersCanCreateInternalRepositories)")
				} else {
					fields.append("membersCanCreateInternalRepositories:null")
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
