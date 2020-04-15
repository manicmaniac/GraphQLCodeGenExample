// Generated from graphql_swift_gen gem
import Foundation

public protocol RepositoryOwner {
	var typeName: String { get }

	var avatarUrl: String { get }

	var id: GraphQL.ID { get }

	var login: String { get }

	@available(*, deprecated, message:"pinnedRepositories will be removed Use ProfileOwner.pinnedItems instead. Removal on 2019-10-01 UTC.")
	var pinnedRepositories: ExampleSchema.RepositoryConnection { get }

	var repositories: ExampleSchema.RepositoryConnection { get }

	var repository: ExampleSchema.Repository? { get }

	var resourcePath: String { get }

	var url: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class RepositoryOwnerQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RepositoryOwner

		@discardableResult
		open func avatarUrl(aliasSuffix: String? = nil, size: Int32? = nil) -> RepositoryOwnerQuery {
			var args: [String] = []

			if let size = size {
				args.append("size:\(size)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "avatarUrl", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> RepositoryOwnerQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func login(aliasSuffix: String? = nil) -> RepositoryOwnerQuery {
			addField(field: "login", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"pinnedRepositories will be removed Use ProfileOwner.pinnedItems instead. Removal on 2019-10-01 UTC.")
		@discardableResult
		open func pinnedRepositories(aliasSuffix: String? = nil, privacy: RepositoryPrivacy? = nil, orderBy: RepositoryOrder? = nil, affiliations: [RepositoryAffiliation]? = nil, ownerAffiliations: [RepositoryAffiliation]? = nil, isLocked: Bool? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (RepositoryConnectionQuery) -> Void) -> RepositoryOwnerQuery {
			var args: [String] = []

			if let privacy = privacy {
				args.append("privacy:\(privacy.rawValue)")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			if let affiliations = affiliations {
				args.append("affiliations:[\(affiliations.map{ "\($0.rawValue)" }.joined(separator: ","))]")
			}

			if let ownerAffiliations = ownerAffiliations {
				args.append("ownerAffiliations:[\(ownerAffiliations.map{ "\($0.rawValue)" }.joined(separator: ","))]")
			}

			if let isLocked = isLocked {
				args.append("isLocked:\(isLocked)")
			}

			if let after = after {
				args.append("after:\(GraphQL.quoteString(input: after))")
			}

			if let before = before {
				args.append("before:\(GraphQL.quoteString(input: before))")
			}

			if let first = first {
				args.append("first:\(first)")
			}

			if let last = last {
				args.append("last:\(last)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = RepositoryConnectionQuery()
			subfields(subquery)

			addField(field: "pinnedRepositories", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func repositories(aliasSuffix: String? = nil, privacy: RepositoryPrivacy? = nil, orderBy: RepositoryOrder? = nil, affiliations: [RepositoryAffiliation]? = nil, ownerAffiliations: [RepositoryAffiliation]? = nil, isLocked: Bool? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, isFork: Bool? = nil, _ subfields: (RepositoryConnectionQuery) -> Void) -> RepositoryOwnerQuery {
			var args: [String] = []

			if let privacy = privacy {
				args.append("privacy:\(privacy.rawValue)")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			if let affiliations = affiliations {
				args.append("affiliations:[\(affiliations.map{ "\($0.rawValue)" }.joined(separator: ","))]")
			}

			if let ownerAffiliations = ownerAffiliations {
				args.append("ownerAffiliations:[\(ownerAffiliations.map{ "\($0.rawValue)" }.joined(separator: ","))]")
			}

			if let isLocked = isLocked {
				args.append("isLocked:\(isLocked)")
			}

			if let after = after {
				args.append("after:\(GraphQL.quoteString(input: after))")
			}

			if let before = before {
				args.append("before:\(GraphQL.quoteString(input: before))")
			}

			if let first = first {
				args.append("first:\(first)")
			}

			if let last = last {
				args.append("last:\(last)")
			}

			if let isFork = isFork {
				args.append("isFork:\(isFork)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = RepositoryConnectionQuery()
			subfields(subquery)

			addField(field: "repositories", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func repository(aliasSuffix: String? = nil, name: String, _ subfields: (RepositoryQuery) -> Void) -> RepositoryOwnerQuery {
			var args: [String] = []

			args.append("name:\(GraphQL.quoteString(input: name))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> RepositoryOwnerQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> RepositoryOwnerQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onOrganization(subfields: (OrganizationQuery) -> Void) -> RepositoryOwnerQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)
			addInlineFragment(on: "Organization", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUser(subfields: (UserQuery) -> Void) -> RepositoryOwnerQuery {
			let subquery = UserQuery()
			subfields(subquery)
			addInlineFragment(on: "User", subfields: subquery)
			return self
		}
	}

	open class UnknownRepositoryOwner: GraphQL.AbstractResponse, GraphQLObject, RepositoryOwner {
		public typealias Query = RepositoryOwnerQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "avatarUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryOwner.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryOwner.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "login":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryOwner.self, field: fieldName, value: fieldValue)
				}
				return value

				case "pinnedRepositories":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownRepositoryOwner.self, field: fieldName, value: fieldValue)
				}
				return try RepositoryConnection(fields: value)

				case "repositories":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownRepositoryOwner.self, field: fieldName, value: fieldValue)
				}
				return try RepositoryConnection(fields: value)

				case "repository":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownRepositoryOwner.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryOwner.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryOwner.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownRepositoryOwner.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> RepositoryOwner {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownRepositoryOwner.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Organization":
				return try Organization.init(fields: fields)

				case "User":
				return try User.init(fields: fields)

				default:
				return try UnknownRepositoryOwner.init(fields: fields)
			}
		}

		open var avatarUrl: String {
			return internalGetAvatarUrl()
		}

		open func aliasedAvatarUrl(aliasSuffix: String) -> String {
			return internalGetAvatarUrl(aliasSuffix: aliasSuffix)
		}

		func internalGetAvatarUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "avatarUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var login: String {
			return internalGetLogin()
		}

		func internalGetLogin(aliasSuffix: String? = nil) -> String {
			return field(field: "login", aliasSuffix: aliasSuffix) as! String
		}

		@available(*, deprecated, message:"pinnedRepositories will be removed Use ProfileOwner.pinnedItems instead. Removal on 2019-10-01 UTC.")
		open var pinnedRepositories: ExampleSchema.RepositoryConnection {
			return internalGetPinnedRepositories()
		}

		@available(*, deprecated, message:"pinnedRepositories will be removed Use ProfileOwner.pinnedItems instead. Removal on 2019-10-01 UTC.")
		open func aliasedPinnedRepositories(aliasSuffix: String) -> ExampleSchema.RepositoryConnection {
			return internalGetPinnedRepositories(aliasSuffix: aliasSuffix)
		}

		func internalGetPinnedRepositories(aliasSuffix: String? = nil) -> ExampleSchema.RepositoryConnection {
			return field(field: "pinnedRepositories", aliasSuffix: aliasSuffix) as! ExampleSchema.RepositoryConnection
		}

		open var repositories: ExampleSchema.RepositoryConnection {
			return internalGetRepositories()
		}

		open func aliasedRepositories(aliasSuffix: String) -> ExampleSchema.RepositoryConnection {
			return internalGetRepositories(aliasSuffix: aliasSuffix)
		}

		func internalGetRepositories(aliasSuffix: String? = nil) -> ExampleSchema.RepositoryConnection {
			return field(field: "repositories", aliasSuffix: aliasSuffix) as! ExampleSchema.RepositoryConnection
		}

		open var repository: ExampleSchema.Repository? {
			return internalGetRepository()
		}

		open func aliasedRepository(aliasSuffix: String) -> ExampleSchema.Repository? {
			return internalGetRepository(aliasSuffix: aliasSuffix)
		}

		func internalGetRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository? {
			return field(field: "repository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository?
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "avatarUrl":

				return .scalar

				case "id":

				return .scalar

				case "login":

				return .scalar

				case "pinnedRepositories":

				return .object

				case "repositories":

				return .object

				case "repository":

				return .object

				case "resourcePath":

				return .scalar

				case "url":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "pinnedRepositories":
				return internalGetPinnedRepositories()

				case "repositories":
				return internalGetRepositories()

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
					case "pinnedRepositories":
					response.append(internalGetPinnedRepositories())
					response.append(contentsOf: internalGetPinnedRepositories().childResponseObjectMap())

					case "repositories":
					response.append(internalGetRepositories())
					response.append(contentsOf: internalGetRepositories().childResponseObjectMap())

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
