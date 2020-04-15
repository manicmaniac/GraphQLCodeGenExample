// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class OrgRestoreMemberMembershipRepositoryAuditEntryDataQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = OrgRestoreMemberMembershipRepositoryAuditEntryData

		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> OrgRestoreMemberMembershipRepositoryAuditEntryDataQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func repositoryName(aliasSuffix: String? = nil) -> OrgRestoreMemberMembershipRepositoryAuditEntryDataQuery {
			addField(field: "repositoryName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func repositoryResourcePath(aliasSuffix: String? = nil) -> OrgRestoreMemberMembershipRepositoryAuditEntryDataQuery {
			addField(field: "repositoryResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func repositoryUrl(aliasSuffix: String? = nil) -> OrgRestoreMemberMembershipRepositoryAuditEntryDataQuery {
			addField(field: "repositoryUrl", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class OrgRestoreMemberMembershipRepositoryAuditEntryData: GraphQL.AbstractResponse, GraphQLObject, OrgRestoreMemberAuditEntryMembership, RepositoryAuditEntryData {
		public typealias Query = OrgRestoreMemberMembershipRepositoryAuditEntryDataQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "repository":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: OrgRestoreMemberMembershipRepositoryAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "repositoryName":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrgRestoreMemberMembershipRepositoryAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				case "repositoryResourcePath":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrgRestoreMemberMembershipRepositoryAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				case "repositoryUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrgRestoreMemberMembershipRepositoryAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: OrgRestoreMemberMembershipRepositoryAuditEntryData.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "OrgRestoreMemberMembershipRepositoryAuditEntryData" }

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
