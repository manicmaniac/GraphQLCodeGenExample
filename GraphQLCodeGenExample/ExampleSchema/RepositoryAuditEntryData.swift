// Generated from graphql_swift_gen gem
import Foundation

public protocol RepositoryAuditEntryData {
	var typeName: String { get }

	var repository: ExampleSchema.Repository? { get }

	var repositoryName: String? { get }

	var repositoryResourcePath: String? { get }

	var repositoryUrl: String? { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class RepositoryAuditEntryDataQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RepositoryAuditEntryData

		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func repositoryName(aliasSuffix: String? = nil) -> RepositoryAuditEntryDataQuery {
			addField(field: "repositoryName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func repositoryResourcePath(aliasSuffix: String? = nil) -> RepositoryAuditEntryDataQuery {
			addField(field: "repositoryResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func repositoryUrl(aliasSuffix: String? = nil) -> RepositoryAuditEntryDataQuery {
			addField(field: "repositoryUrl", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onOrgRestoreMemberMembershipRepositoryAuditEntryData(subfields: (OrgRestoreMemberMembershipRepositoryAuditEntryDataQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = OrgRestoreMemberMembershipRepositoryAuditEntryDataQuery()
			subfields(subquery)
			addInlineFragment(on: "OrgRestoreMemberMembershipRepositoryAuditEntryData", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPrivateRepositoryForkingDisableAuditEntry(subfields: (PrivateRepositoryForkingDisableAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = PrivateRepositoryForkingDisableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "PrivateRepositoryForkingDisableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPrivateRepositoryForkingEnableAuditEntry(subfields: (PrivateRepositoryForkingEnableAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = PrivateRepositoryForkingEnableAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "PrivateRepositoryForkingEnableAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoAccessAuditEntry(subfields: (RepoAccessAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = RepoAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoAddMemberAuditEntry(subfields: (RepoAddMemberAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = RepoAddMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoAddMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoAddTopicAuditEntry(subfields: (RepoAddTopicAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = RepoAddTopicAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoAddTopicAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoArchivedAuditEntry(subfields: (RepoArchivedAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = RepoArchivedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoArchivedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoChangeMergeSettingAuditEntry(subfields: (RepoChangeMergeSettingAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = RepoChangeMergeSettingAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoChangeMergeSettingAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigDisableAnonymousGitAccessAuditEntry(subfields: (RepoConfigDisableAnonymousGitAccessAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = RepoConfigDisableAnonymousGitAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigDisableAnonymousGitAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigDisableCollaboratorsOnlyAuditEntry(subfields: (RepoConfigDisableCollaboratorsOnlyAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = RepoConfigDisableCollaboratorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigDisableCollaboratorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigDisableContributorsOnlyAuditEntry(subfields: (RepoConfigDisableContributorsOnlyAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = RepoConfigDisableContributorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigDisableContributorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigDisableSockpuppetDisallowedAuditEntry(subfields: (RepoConfigDisableSockpuppetDisallowedAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = RepoConfigDisableSockpuppetDisallowedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigDisableSockpuppetDisallowedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigEnableAnonymousGitAccessAuditEntry(subfields: (RepoConfigEnableAnonymousGitAccessAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = RepoConfigEnableAnonymousGitAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigEnableAnonymousGitAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigEnableCollaboratorsOnlyAuditEntry(subfields: (RepoConfigEnableCollaboratorsOnlyAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = RepoConfigEnableCollaboratorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigEnableCollaboratorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigEnableContributorsOnlyAuditEntry(subfields: (RepoConfigEnableContributorsOnlyAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = RepoConfigEnableContributorsOnlyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigEnableContributorsOnlyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigEnableSockpuppetDisallowedAuditEntry(subfields: (RepoConfigEnableSockpuppetDisallowedAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = RepoConfigEnableSockpuppetDisallowedAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigEnableSockpuppetDisallowedAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigLockAnonymousGitAccessAuditEntry(subfields: (RepoConfigLockAnonymousGitAccessAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = RepoConfigLockAnonymousGitAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigLockAnonymousGitAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoConfigUnlockAnonymousGitAccessAuditEntry(subfields: (RepoConfigUnlockAnonymousGitAccessAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = RepoConfigUnlockAnonymousGitAccessAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoConfigUnlockAnonymousGitAccessAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoCreateAuditEntry(subfields: (RepoCreateAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = RepoCreateAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoCreateAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoDestroyAuditEntry(subfields: (RepoDestroyAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = RepoDestroyAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoDestroyAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoRemoveMemberAuditEntry(subfields: (RepoRemoveMemberAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = RepoRemoveMemberAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoRemoveMemberAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoRemoveTopicAuditEntry(subfields: (RepoRemoveTopicAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = RepoRemoveTopicAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoRemoveTopicAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamAddRepositoryAuditEntry(subfields: (TeamAddRepositoryAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = TeamAddRepositoryAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamAddRepositoryAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamRemoveRepositoryAuditEntry(subfields: (TeamRemoveRepositoryAuditEntryQuery) -> Void) -> RepositoryAuditEntryDataQuery {
			let subquery = TeamRemoveRepositoryAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamRemoveRepositoryAuditEntry", subfields: subquery)
			return self
		}
	}

	open class UnknownRepositoryAuditEntryData: GraphQL.AbstractResponse, GraphQLObject, RepositoryAuditEntryData {
		public typealias Query = RepositoryAuditEntryDataQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "repository":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownRepositoryAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "repositoryName":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				case "repositoryResourcePath":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				case "repositoryUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownRepositoryAuditEntryData.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> RepositoryAuditEntryData {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownRepositoryAuditEntryData.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "OrgRestoreMemberMembershipRepositoryAuditEntryData":
				return try OrgRestoreMemberMembershipRepositoryAuditEntryData.init(fields: fields)

				case "PrivateRepositoryForkingDisableAuditEntry":
				return try PrivateRepositoryForkingDisableAuditEntry.init(fields: fields)

				case "PrivateRepositoryForkingEnableAuditEntry":
				return try PrivateRepositoryForkingEnableAuditEntry.init(fields: fields)

				case "RepoAccessAuditEntry":
				return try RepoAccessAuditEntry.init(fields: fields)

				case "RepoAddMemberAuditEntry":
				return try RepoAddMemberAuditEntry.init(fields: fields)

				case "RepoAddTopicAuditEntry":
				return try RepoAddTopicAuditEntry.init(fields: fields)

				case "RepoArchivedAuditEntry":
				return try RepoArchivedAuditEntry.init(fields: fields)

				case "RepoChangeMergeSettingAuditEntry":
				return try RepoChangeMergeSettingAuditEntry.init(fields: fields)

				case "RepoConfigDisableAnonymousGitAccessAuditEntry":
				return try RepoConfigDisableAnonymousGitAccessAuditEntry.init(fields: fields)

				case "RepoConfigDisableCollaboratorsOnlyAuditEntry":
				return try RepoConfigDisableCollaboratorsOnlyAuditEntry.init(fields: fields)

				case "RepoConfigDisableContributorsOnlyAuditEntry":
				return try RepoConfigDisableContributorsOnlyAuditEntry.init(fields: fields)

				case "RepoConfigDisableSockpuppetDisallowedAuditEntry":
				return try RepoConfigDisableSockpuppetDisallowedAuditEntry.init(fields: fields)

				case "RepoConfigEnableAnonymousGitAccessAuditEntry":
				return try RepoConfigEnableAnonymousGitAccessAuditEntry.init(fields: fields)

				case "RepoConfigEnableCollaboratorsOnlyAuditEntry":
				return try RepoConfigEnableCollaboratorsOnlyAuditEntry.init(fields: fields)

				case "RepoConfigEnableContributorsOnlyAuditEntry":
				return try RepoConfigEnableContributorsOnlyAuditEntry.init(fields: fields)

				case "RepoConfigEnableSockpuppetDisallowedAuditEntry":
				return try RepoConfigEnableSockpuppetDisallowedAuditEntry.init(fields: fields)

				case "RepoConfigLockAnonymousGitAccessAuditEntry":
				return try RepoConfigLockAnonymousGitAccessAuditEntry.init(fields: fields)

				case "RepoConfigUnlockAnonymousGitAccessAuditEntry":
				return try RepoConfigUnlockAnonymousGitAccessAuditEntry.init(fields: fields)

				case "RepoCreateAuditEntry":
				return try RepoCreateAuditEntry.init(fields: fields)

				case "RepoDestroyAuditEntry":
				return try RepoDestroyAuditEntry.init(fields: fields)

				case "RepoRemoveMemberAuditEntry":
				return try RepoRemoveMemberAuditEntry.init(fields: fields)

				case "RepoRemoveTopicAuditEntry":
				return try RepoRemoveTopicAuditEntry.init(fields: fields)

				case "TeamAddRepositoryAuditEntry":
				return try TeamAddRepositoryAuditEntry.init(fields: fields)

				case "TeamRemoveRepositoryAuditEntry":
				return try TeamRemoveRepositoryAuditEntry.init(fields: fields)

				default:
				return try UnknownRepositoryAuditEntryData.init(fields: fields)
			}
		}

		open var repository: ExampleSchema.Repository? {
			return internalGetRepository()
		}

		func internalGetRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository? {
			return field(field: "repository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository?
		}

		open var repositoryName: String? {
			return internalGetRepositoryName()
		}

		func internalGetRepositoryName(aliasSuffix: String? = nil) -> String? {
			return field(field: "repositoryName", aliasSuffix: aliasSuffix) as! String?
		}

		open var repositoryResourcePath: String? {
			return internalGetRepositoryResourcePath()
		}

		func internalGetRepositoryResourcePath(aliasSuffix: String? = nil) -> String? {
			return field(field: "repositoryResourcePath", aliasSuffix: aliasSuffix) as! String?
		}

		open var repositoryUrl: String? {
			return internalGetRepositoryUrl()
		}

		func internalGetRepositoryUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "repositoryUrl", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "repository":

				return .object

				case "repositoryName":

				return .scalar

				case "repositoryResourcePath":

				return .scalar

				case "repositoryUrl":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "repository":
				return internalGetRepository()

				default:
				break
			}
			return nil
		}

		override open func fetchChildObjectList(key: String) -> [GraphQL.AbstractResponse] {
			switch(key) {
				default:
				return []
			}
		}

		open func childResponseObjectMap() -> [GraphQL.AbstractResponse]  {
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "repository":
					if let value = internalGetRepository() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					default:
					break
				}
			})
			return response
		}

		open func responseObject() -> GraphQL.AbstractResponse {
			return self as GraphQL.AbstractResponse
		}
	}
}
