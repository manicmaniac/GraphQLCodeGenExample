// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class QueryQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Query

		@discardableResult
		open func codeOfConduct(aliasSuffix: String? = nil, key: String, _ subfields: (CodeOfConductQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			args.append("key:\(GraphQL.quoteString(input: key))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = CodeOfConductQuery()
			subfields(subquery)

			addField(field: "codeOfConduct", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func codesOfConduct(aliasSuffix: String? = nil, _ subfields: (CodeOfConductQuery) -> Void) -> QueryQuery {
			let subquery = CodeOfConductQuery()
			subfields(subquery)

			addField(field: "codesOfConduct", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func enterprise(aliasSuffix: String? = nil, slug: String, invitationToken: String? = nil, _ subfields: (EnterpriseQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			args.append("slug:\(GraphQL.quoteString(input: slug))")

			if let invitationToken = invitationToken {
				args.append("invitationToken:\(GraphQL.quoteString(input: invitationToken))")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = EnterpriseQuery()
			subfields(subquery)

			addField(field: "enterprise", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func enterpriseAdministratorInvitation(aliasSuffix: String? = nil, userLogin: String, enterpriseSlug: String, role: EnterpriseAdministratorRole, _ subfields: (EnterpriseAdministratorInvitationQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			args.append("userLogin:\(GraphQL.quoteString(input: userLogin))")

			args.append("enterpriseSlug:\(GraphQL.quoteString(input: enterpriseSlug))")

			args.append("role:\(role.rawValue)")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = EnterpriseAdministratorInvitationQuery()
			subfields(subquery)

			addField(field: "enterpriseAdministratorInvitation", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func enterpriseAdministratorInvitationByToken(aliasSuffix: String? = nil, invitationToken: String, _ subfields: (EnterpriseAdministratorInvitationQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			args.append("invitationToken:\(GraphQL.quoteString(input: invitationToken))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = EnterpriseAdministratorInvitationQuery()
			subfields(subquery)

			addField(field: "enterpriseAdministratorInvitationByToken", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func license(aliasSuffix: String? = nil, key: String, _ subfields: (LicenseQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			args.append("key:\(GraphQL.quoteString(input: key))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = LicenseQuery()
			subfields(subquery)

			addField(field: "license", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func licenses(aliasSuffix: String? = nil, _ subfields: (LicenseQuery) -> Void) -> QueryQuery {
			let subquery = LicenseQuery()
			subfields(subquery)

			addField(field: "licenses", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func marketplaceCategories(aliasSuffix: String? = nil, includeCategories: [String]? = nil, excludeEmpty: Bool? = nil, excludeSubcategories: Bool? = nil, _ subfields: (MarketplaceCategoryQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			if let includeCategories = includeCategories {
				args.append("includeCategories:[\(includeCategories.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let excludeEmpty = excludeEmpty {
				args.append("excludeEmpty:\(excludeEmpty)")
			}

			if let excludeSubcategories = excludeSubcategories {
				args.append("excludeSubcategories:\(excludeSubcategories)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = MarketplaceCategoryQuery()
			subfields(subquery)

			addField(field: "marketplaceCategories", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func marketplaceCategory(aliasSuffix: String? = nil, slug: String, useTopicAliases: Bool? = nil, _ subfields: (MarketplaceCategoryQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			args.append("slug:\(GraphQL.quoteString(input: slug))")

			if let useTopicAliases = useTopicAliases {
				args.append("useTopicAliases:\(useTopicAliases)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = MarketplaceCategoryQuery()
			subfields(subquery)

			addField(field: "marketplaceCategory", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func marketplaceListing(aliasSuffix: String? = nil, slug: String, _ subfields: (MarketplaceListingQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			args.append("slug:\(GraphQL.quoteString(input: slug))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = MarketplaceListingQuery()
			subfields(subquery)

			addField(field: "marketplaceListing", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func marketplaceListings(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, categorySlug: String? = nil, useTopicAliases: Bool? = nil, viewerCanAdmin: Bool? = nil, adminId: GraphQL.ID? = nil, organizationId: GraphQL.ID? = nil, allStates: Bool? = nil, slugs: [String]? = nil, primaryCategoryOnly: Bool? = nil, withFreeTrialsOnly: Bool? = nil, _ subfields: (MarketplaceListingConnectionQuery) -> Void) -> QueryQuery {
			var args: [String] = []

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

			if let categorySlug = categorySlug {
				args.append("categorySlug:\(GraphQL.quoteString(input: categorySlug))")
			}

			if let useTopicAliases = useTopicAliases {
				args.append("useTopicAliases:\(useTopicAliases)")
			}

			if let viewerCanAdmin = viewerCanAdmin {
				args.append("viewerCanAdmin:\(viewerCanAdmin)")
			}

			if let adminId = adminId {
				args.append("adminId:\(GraphQL.quoteString(input: "\(adminId.rawValue)"))")
			}

			if let organizationId = organizationId {
				args.append("organizationId:\(GraphQL.quoteString(input: "\(organizationId.rawValue)"))")
			}

			if let allStates = allStates {
				args.append("allStates:\(allStates)")
			}

			if let slugs = slugs {
				args.append("slugs:[\(slugs.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let primaryCategoryOnly = primaryCategoryOnly {
				args.append("primaryCategoryOnly:\(primaryCategoryOnly)")
			}

			if let withFreeTrialsOnly = withFreeTrialsOnly {
				args.append("withFreeTrialsOnly:\(withFreeTrialsOnly)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = MarketplaceListingConnectionQuery()
			subfields(subquery)

			addField(field: "marketplaceListings", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func meta(aliasSuffix: String? = nil, _ subfields: (GitHubMetadataQuery) -> Void) -> QueryQuery {
			let subquery = GitHubMetadataQuery()
			subfields(subquery)

			addField(field: "meta", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func node(aliasSuffix: String? = nil, id: GraphQL.ID, _ subfields: (NodeQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			args.append("id:\(GraphQL.quoteString(input: "\(id.rawValue)"))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = NodeQuery()
			subfields(subquery)

			addField(field: "node", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func nodes(aliasSuffix: String? = nil, ids: [GraphQL.ID], _ subfields: (NodeQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			args.append("ids:[\(ids.map{ "\(GraphQL.quoteString(input: "\($0.rawValue)"))" }.joined(separator: ","))]")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = NodeQuery()
			subfields(subquery)

			addField(field: "nodes", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func organization(aliasSuffix: String? = nil, login: String, _ subfields: (OrganizationQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			args.append("login:\(GraphQL.quoteString(input: login))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = OrganizationQuery()
			subfields(subquery)

			addField(field: "organization", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func rateLimit(aliasSuffix: String? = nil, dryRun: Bool? = nil, _ subfields: (RateLimitQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			if let dryRun = dryRun {
				args.append("dryRun:\(dryRun)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = RateLimitQuery()
			subfields(subquery)

			addField(field: "rateLimit", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func relay(aliasSuffix: String? = nil, _ subfields: (QueryQuery) -> Void) -> QueryQuery {
			let subquery = QueryQuery()
			subfields(subquery)

			addField(field: "relay", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func repository(aliasSuffix: String? = nil, owner: String, name: String, _ subfields: (RepositoryQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			args.append("owner:\(GraphQL.quoteString(input: owner))")

			args.append("name:\(GraphQL.quoteString(input: name))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func repositoryOwner(aliasSuffix: String? = nil, login: String, _ subfields: (RepositoryOwnerQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			args.append("login:\(GraphQL.quoteString(input: login))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = RepositoryOwnerQuery()
			subfields(subquery)

			addField(field: "repositoryOwner", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func resource(aliasSuffix: String? = nil, url: String, _ subfields: (UniformResourceLocatableQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			args.append("url:\(GraphQL.quoteString(input: url))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UniformResourceLocatableQuery()
			subfields(subquery)

			addField(field: "resource", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func search(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, query: String, type: SearchType, _ subfields: (SearchResultItemConnectionQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			args.append("query:\(GraphQL.quoteString(input: query))")

			args.append("type:\(type.rawValue)")

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

			let subquery = SearchResultItemConnectionQuery()
			subfields(subquery)

			addField(field: "search", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func securityAdvisories(aliasSuffix: String? = nil, orderBy: SecurityAdvisoryOrder? = nil, identifier: SecurityAdvisoryIdentifierFilter? = nil, publishedSince: String? = nil, updatedSince: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (SecurityAdvisoryConnectionQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			if let identifier = identifier {
				args.append("identifier:\(identifier.serialize())")
			}

			if let publishedSince = publishedSince {
				args.append("publishedSince:\(GraphQL.quoteString(input: publishedSince))")
			}

			if let updatedSince = updatedSince {
				args.append("updatedSince:\(GraphQL.quoteString(input: updatedSince))")
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

			let subquery = SecurityAdvisoryConnectionQuery()
			subfields(subquery)

			addField(field: "securityAdvisories", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func securityAdvisory(aliasSuffix: String? = nil, ghsaId: String, _ subfields: (SecurityAdvisoryQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			args.append("ghsaId:\(GraphQL.quoteString(input: ghsaId))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = SecurityAdvisoryQuery()
			subfields(subquery)

			addField(field: "securityAdvisory", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func securityVulnerabilities(aliasSuffix: String? = nil, orderBy: SecurityVulnerabilityOrder? = nil, ecosystem: SecurityAdvisoryEcosystem? = nil, package: String? = nil, severities: [SecurityAdvisorySeverity]? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (SecurityVulnerabilityConnectionQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			if let ecosystem = ecosystem {
				args.append("ecosystem:\(ecosystem.rawValue)")
			}

			if let package = package {
				args.append("package:\(GraphQL.quoteString(input: package))")
			}

			if let severities = severities {
				args.append("severities:[\(severities.map{ "\($0.rawValue)" }.joined(separator: ","))]")
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

			let subquery = SecurityVulnerabilityConnectionQuery()
			subfields(subquery)

			addField(field: "securityVulnerabilities", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@available(*, deprecated, message:"`Query.sponsorsListing` will be removed. Use `Sponsorable.sponsorsListing` instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func sponsorsListing(aliasSuffix: String? = nil, slug: String, _ subfields: (SponsorsListingQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			args.append("slug:\(GraphQL.quoteString(input: slug))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = SponsorsListingQuery()
			subfields(subquery)

			addField(field: "sponsorsListing", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func topic(aliasSuffix: String? = nil, name: String, _ subfields: (TopicQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			args.append("name:\(GraphQL.quoteString(input: name))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = TopicQuery()
			subfields(subquery)

			addField(field: "topic", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func user(aliasSuffix: String? = nil, login: String, _ subfields: (UserQuery) -> Void) -> QueryQuery {
			var args: [String] = []

			args.append("login:\(GraphQL.quoteString(input: login))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func viewer(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> QueryQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "viewer", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class Query: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = QueryQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "codeOfConduct":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try CodeOfConduct(fields: value)

				case "codesOfConduct":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try CodeOfConduct(fields: value) } as [Any?]

				case "enterprise":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try Enterprise(fields: value)

				case "enterpriseAdministratorInvitation":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseAdministratorInvitation(fields: value)

				case "enterpriseAdministratorInvitationByToken":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseAdministratorInvitation(fields: value)

				case "license":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try License(fields: value)

				case "licenses":
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try License(fields: value) } as [Any?]

				case "marketplaceCategories":
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try MarketplaceCategory(fields: $0) }

				case "marketplaceCategory":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try MarketplaceCategory(fields: value)

				case "marketplaceListing":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try MarketplaceListing(fields: value)

				case "marketplaceListings":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try MarketplaceListingConnection(fields: value)

				case "meta":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try GitHubMetadata(fields: value)

				case "node":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try UnknownNode.create(fields: value)

				case "nodes":
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try UnknownNode.create(fields: value) } as [Any?]

				case "organization":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try Organization(fields: value)

				case "rateLimit":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try RateLimit(fields: value)

				case "relay":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try Query(fields: value)

				case "repository":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "repositoryOwner":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try UnknownRepositoryOwner.create(fields: value)

				case "resource":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try UnknownUniformResourceLocatable.create(fields: value)

				case "search":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try SearchResultItemConnection(fields: value)

				case "securityAdvisories":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try SecurityAdvisoryConnection(fields: value)

				case "securityAdvisory":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try SecurityAdvisory(fields: value)

				case "securityVulnerabilities":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try SecurityVulnerabilityConnection(fields: value)

				case "sponsorsListing":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try SponsorsListing(fields: value)

				case "topic":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try Topic(fields: value)

				case "user":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				case "viewer":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				default:
				throw SchemaViolationError(type: Query.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Query" }

		open var codeOfConduct: ExampleSchema.CodeOfConduct? {
			return internalGetCodeOfConduct()
		}

		open func aliasedCodeOfConduct(aliasSuffix: String) -> ExampleSchema.CodeOfConduct? {
			return internalGetCodeOfConduct(aliasSuffix: aliasSuffix)
		}

		func internalGetCodeOfConduct(aliasSuffix: String? = nil) -> ExampleSchema.CodeOfConduct? {
			return field(field: "codeOfConduct", aliasSuffix: aliasSuffix) as! ExampleSchema.CodeOfConduct?
		}

		open var codesOfConduct: [ExampleSchema.CodeOfConduct?]? {
			return internalGetCodesOfConduct()
		}

		func internalGetCodesOfConduct(aliasSuffix: String? = nil) -> [ExampleSchema.CodeOfConduct?]? {
			return field(field: "codesOfConduct", aliasSuffix: aliasSuffix) as! [ExampleSchema.CodeOfConduct?]?
		}

		open var enterprise: ExampleSchema.Enterprise? {
			return internalGetEnterprise()
		}

		open func aliasedEnterprise(aliasSuffix: String) -> ExampleSchema.Enterprise? {
			return internalGetEnterprise(aliasSuffix: aliasSuffix)
		}

		func internalGetEnterprise(aliasSuffix: String? = nil) -> ExampleSchema.Enterprise? {
			return field(field: "enterprise", aliasSuffix: aliasSuffix) as! ExampleSchema.Enterprise?
		}

		open var enterpriseAdministratorInvitation: ExampleSchema.EnterpriseAdministratorInvitation? {
			return internalGetEnterpriseAdministratorInvitation()
		}

		open func aliasedEnterpriseAdministratorInvitation(aliasSuffix: String) -> ExampleSchema.EnterpriseAdministratorInvitation? {
			return internalGetEnterpriseAdministratorInvitation(aliasSuffix: aliasSuffix)
		}

		func internalGetEnterpriseAdministratorInvitation(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseAdministratorInvitation? {
			return field(field: "enterpriseAdministratorInvitation", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseAdministratorInvitation?
		}

		open var enterpriseAdministratorInvitationByToken: ExampleSchema.EnterpriseAdministratorInvitation? {
			return internalGetEnterpriseAdministratorInvitationByToken()
		}

		open func aliasedEnterpriseAdministratorInvitationByToken(aliasSuffix: String) -> ExampleSchema.EnterpriseAdministratorInvitation? {
			return internalGetEnterpriseAdministratorInvitationByToken(aliasSuffix: aliasSuffix)
		}

		func internalGetEnterpriseAdministratorInvitationByToken(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseAdministratorInvitation? {
			return field(field: "enterpriseAdministratorInvitationByToken", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseAdministratorInvitation?
		}

		open var license: ExampleSchema.License? {
			return internalGetLicense()
		}

		open func aliasedLicense(aliasSuffix: String) -> ExampleSchema.License? {
			return internalGetLicense(aliasSuffix: aliasSuffix)
		}

		func internalGetLicense(aliasSuffix: String? = nil) -> ExampleSchema.License? {
			return field(field: "license", aliasSuffix: aliasSuffix) as! ExampleSchema.License?
		}

		open var licenses: [ExampleSchema.License?] {
			return internalGetLicenses()
		}

		func internalGetLicenses(aliasSuffix: String? = nil) -> [ExampleSchema.License?] {
			return field(field: "licenses", aliasSuffix: aliasSuffix) as! [ExampleSchema.License?]
		}

		open var marketplaceCategories: [ExampleSchema.MarketplaceCategory] {
			return internalGetMarketplaceCategories()
		}

		open func aliasedMarketplaceCategories(aliasSuffix: String) -> [ExampleSchema.MarketplaceCategory] {
			return internalGetMarketplaceCategories(aliasSuffix: aliasSuffix)
		}

		func internalGetMarketplaceCategories(aliasSuffix: String? = nil) -> [ExampleSchema.MarketplaceCategory] {
			return field(field: "marketplaceCategories", aliasSuffix: aliasSuffix) as! [ExampleSchema.MarketplaceCategory]
		}

		open var marketplaceCategory: ExampleSchema.MarketplaceCategory? {
			return internalGetMarketplaceCategory()
		}

		open func aliasedMarketplaceCategory(aliasSuffix: String) -> ExampleSchema.MarketplaceCategory? {
			return internalGetMarketplaceCategory(aliasSuffix: aliasSuffix)
		}

		func internalGetMarketplaceCategory(aliasSuffix: String? = nil) -> ExampleSchema.MarketplaceCategory? {
			return field(field: "marketplaceCategory", aliasSuffix: aliasSuffix) as! ExampleSchema.MarketplaceCategory?
		}

		open var marketplaceListing: ExampleSchema.MarketplaceListing? {
			return internalGetMarketplaceListing()
		}

		open func aliasedMarketplaceListing(aliasSuffix: String) -> ExampleSchema.MarketplaceListing? {
			return internalGetMarketplaceListing(aliasSuffix: aliasSuffix)
		}

		func internalGetMarketplaceListing(aliasSuffix: String? = nil) -> ExampleSchema.MarketplaceListing? {
			return field(field: "marketplaceListing", aliasSuffix: aliasSuffix) as! ExampleSchema.MarketplaceListing?
		}

		open var marketplaceListings: ExampleSchema.MarketplaceListingConnection {
			return internalGetMarketplaceListings()
		}

		open func aliasedMarketplaceListings(aliasSuffix: String) -> ExampleSchema.MarketplaceListingConnection {
			return internalGetMarketplaceListings(aliasSuffix: aliasSuffix)
		}

		func internalGetMarketplaceListings(aliasSuffix: String? = nil) -> ExampleSchema.MarketplaceListingConnection {
			return field(field: "marketplaceListings", aliasSuffix: aliasSuffix) as! ExampleSchema.MarketplaceListingConnection
		}

		open var meta: ExampleSchema.GitHubMetadata {
			return internalGetMeta()
		}

		func internalGetMeta(aliasSuffix: String? = nil) -> ExampleSchema.GitHubMetadata {
			return field(field: "meta", aliasSuffix: aliasSuffix) as! ExampleSchema.GitHubMetadata
		}

		open var node: Node? {
			return internalGetNode()
		}

		open func aliasedNode(aliasSuffix: String) -> Node? {
			return internalGetNode(aliasSuffix: aliasSuffix)
		}

		func internalGetNode(aliasSuffix: String? = nil) -> Node? {
			return field(field: "node", aliasSuffix: aliasSuffix) as! Node?
		}

		open var nodes: [Node?] {
			return internalGetNodes()
		}

		open func aliasedNodes(aliasSuffix: String) -> [Node?] {
			return internalGetNodes(aliasSuffix: aliasSuffix)
		}

		func internalGetNodes(aliasSuffix: String? = nil) -> [Node?] {
			return field(field: "nodes", aliasSuffix: aliasSuffix) as! [Node?]
		}

		open var organization: ExampleSchema.Organization? {
			return internalGetOrganization()
		}

		open func aliasedOrganization(aliasSuffix: String) -> ExampleSchema.Organization? {
			return internalGetOrganization(aliasSuffix: aliasSuffix)
		}

		func internalGetOrganization(aliasSuffix: String? = nil) -> ExampleSchema.Organization? {
			return field(field: "organization", aliasSuffix: aliasSuffix) as! ExampleSchema.Organization?
		}

		open var rateLimit: ExampleSchema.RateLimit? {
			return internalGetRateLimit()
		}

		open func aliasedRateLimit(aliasSuffix: String) -> ExampleSchema.RateLimit? {
			return internalGetRateLimit(aliasSuffix: aliasSuffix)
		}

		func internalGetRateLimit(aliasSuffix: String? = nil) -> ExampleSchema.RateLimit? {
			return field(field: "rateLimit", aliasSuffix: aliasSuffix) as! ExampleSchema.RateLimit?
		}

		open var relay: ExampleSchema.Query {
			return internalGetRelay()
		}

		func internalGetRelay(aliasSuffix: String? = nil) -> ExampleSchema.Query {
			return field(field: "relay", aliasSuffix: aliasSuffix) as! ExampleSchema.Query
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

		open var repositoryOwner: RepositoryOwner? {
			return internalGetRepositoryOwner()
		}

		open func aliasedRepositoryOwner(aliasSuffix: String) -> RepositoryOwner? {
			return internalGetRepositoryOwner(aliasSuffix: aliasSuffix)
		}

		func internalGetRepositoryOwner(aliasSuffix: String? = nil) -> RepositoryOwner? {
			return field(field: "repositoryOwner", aliasSuffix: aliasSuffix) as! RepositoryOwner?
		}

		open var resource: UniformResourceLocatable? {
			return internalGetResource()
		}

		open func aliasedResource(aliasSuffix: String) -> UniformResourceLocatable? {
			return internalGetResource(aliasSuffix: aliasSuffix)
		}

		func internalGetResource(aliasSuffix: String? = nil) -> UniformResourceLocatable? {
			return field(field: "resource", aliasSuffix: aliasSuffix) as! UniformResourceLocatable?
		}

		open var search: ExampleSchema.SearchResultItemConnection {
			return internalGetSearch()
		}

		open func aliasedSearch(aliasSuffix: String) -> ExampleSchema.SearchResultItemConnection {
			return internalGetSearch(aliasSuffix: aliasSuffix)
		}

		func internalGetSearch(aliasSuffix: String? = nil) -> ExampleSchema.SearchResultItemConnection {
			return field(field: "search", aliasSuffix: aliasSuffix) as! ExampleSchema.SearchResultItemConnection
		}

		open var securityAdvisories: ExampleSchema.SecurityAdvisoryConnection {
			return internalGetSecurityAdvisories()
		}

		open func aliasedSecurityAdvisories(aliasSuffix: String) -> ExampleSchema.SecurityAdvisoryConnection {
			return internalGetSecurityAdvisories(aliasSuffix: aliasSuffix)
		}

		func internalGetSecurityAdvisories(aliasSuffix: String? = nil) -> ExampleSchema.SecurityAdvisoryConnection {
			return field(field: "securityAdvisories", aliasSuffix: aliasSuffix) as! ExampleSchema.SecurityAdvisoryConnection
		}

		open var securityAdvisory: ExampleSchema.SecurityAdvisory? {
			return internalGetSecurityAdvisory()
		}

		open func aliasedSecurityAdvisory(aliasSuffix: String) -> ExampleSchema.SecurityAdvisory? {
			return internalGetSecurityAdvisory(aliasSuffix: aliasSuffix)
		}

		func internalGetSecurityAdvisory(aliasSuffix: String? = nil) -> ExampleSchema.SecurityAdvisory? {
			return field(field: "securityAdvisory", aliasSuffix: aliasSuffix) as! ExampleSchema.SecurityAdvisory?
		}

		open var securityVulnerabilities: ExampleSchema.SecurityVulnerabilityConnection {
			return internalGetSecurityVulnerabilities()
		}

		open func aliasedSecurityVulnerabilities(aliasSuffix: String) -> ExampleSchema.SecurityVulnerabilityConnection {
			return internalGetSecurityVulnerabilities(aliasSuffix: aliasSuffix)
		}

		func internalGetSecurityVulnerabilities(aliasSuffix: String? = nil) -> ExampleSchema.SecurityVulnerabilityConnection {
			return field(field: "securityVulnerabilities", aliasSuffix: aliasSuffix) as! ExampleSchema.SecurityVulnerabilityConnection
		}

		@available(*, deprecated, message:"`Query.sponsorsListing` will be removed. Use `Sponsorable.sponsorsListing` instead. Removal on 2020-04-01 UTC.")
		open var sponsorsListing: ExampleSchema.SponsorsListing? {
			return internalGetSponsorsListing()
		}

		@available(*, deprecated, message:"`Query.sponsorsListing` will be removed. Use `Sponsorable.sponsorsListing` instead. Removal on 2020-04-01 UTC.")
		open func aliasedSponsorsListing(aliasSuffix: String) -> ExampleSchema.SponsorsListing? {
			return internalGetSponsorsListing(aliasSuffix: aliasSuffix)
		}

		func internalGetSponsorsListing(aliasSuffix: String? = nil) -> ExampleSchema.SponsorsListing? {
			return field(field: "sponsorsListing", aliasSuffix: aliasSuffix) as! ExampleSchema.SponsorsListing?
		}

		open var topic: ExampleSchema.Topic? {
			return internalGetTopic()
		}

		open func aliasedTopic(aliasSuffix: String) -> ExampleSchema.Topic? {
			return internalGetTopic(aliasSuffix: aliasSuffix)
		}

		func internalGetTopic(aliasSuffix: String? = nil) -> ExampleSchema.Topic? {
			return field(field: "topic", aliasSuffix: aliasSuffix) as! ExampleSchema.Topic?
		}

		open var user: ExampleSchema.User? {
			return internalGetUser()
		}

		open func aliasedUser(aliasSuffix: String) -> ExampleSchema.User? {
			return internalGetUser(aliasSuffix: aliasSuffix)
		}

		func internalGetUser(aliasSuffix: String? = nil) -> ExampleSchema.User? {
			return field(field: "user", aliasSuffix: aliasSuffix) as! ExampleSchema.User?
		}

		open var viewer: ExampleSchema.User {
			return internalGetViewer()
		}

		func internalGetViewer(aliasSuffix: String? = nil) -> ExampleSchema.User {
			return field(field: "viewer", aliasSuffix: aliasSuffix) as! ExampleSchema.User
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "codeOfConduct":

				return .object

				case "codesOfConduct":

				return .objectList

				case "enterprise":

				return .object

				case "enterpriseAdministratorInvitation":

				return .object

				case "enterpriseAdministratorInvitationByToken":

				return .object

				case "license":

				return .object

				case "licenses":

				return .objectList

				case "marketplaceCategories":

				return .objectList

				case "marketplaceCategory":

				return .object

				case "marketplaceListing":

				return .object

				case "marketplaceListings":

				return .object

				case "meta":

				return .object

				case "node":

				return .object

				case "nodes":

				return .objectList

				case "organization":

				return .object

				case "rateLimit":

				return .object

				case "relay":

				return .object

				case "repository":

				return .object

				case "repositoryOwner":

				return .object

				case "resource":

				return .object

				case "search":

				return .object

				case "securityAdvisories":

				return .object

				case "securityAdvisory":

				return .object

				case "securityVulnerabilities":

				return .object

				case "sponsorsListing":

				return .object

				case "topic":

				return .object

				case "user":

				return .object

				case "viewer":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "codeOfConduct":
				return internalGetCodeOfConduct()

				case "enterprise":
				return internalGetEnterprise()

				case "enterpriseAdministratorInvitation":
				return internalGetEnterpriseAdministratorInvitation()

				case "enterpriseAdministratorInvitationByToken":
				return internalGetEnterpriseAdministratorInvitationByToken()

				case "license":
				return internalGetLicense()

				case "marketplaceCategory":
				return internalGetMarketplaceCategory()

				case "marketplaceListing":
				return internalGetMarketplaceListing()

				case "marketplaceListings":
				return internalGetMarketplaceListings()

				case "meta":
				return internalGetMeta()

				case "node":
				return internalGetNode()?.responseObject()

				case "organization":
				return internalGetOrganization()

				case "rateLimit":
				return internalGetRateLimit()

				case "relay":
				return internalGetRelay()

				case "repository":
				return internalGetRepository()

				case "repositoryOwner":
				return internalGetRepositoryOwner()?.responseObject()

				case "resource":
				return internalGetResource()?.responseObject()

				case "search":
				return internalGetSearch()

				case "securityAdvisories":
				return internalGetSecurityAdvisories()

				case "securityAdvisory":
				return internalGetSecurityAdvisory()

				case "securityVulnerabilities":
				return internalGetSecurityVulnerabilities()

				case "sponsorsListing":
				return internalGetSponsorsListing()

				case "topic":
				return internalGetTopic()

				case "user":
				return internalGetUser()

				case "viewer":
				return internalGetViewer()

				default:
				break
			}
			return nil
		}

		override open func fetchChildObjectList(key: String) -> [GraphQL.AbstractResponse] {
			switch(key) {
				case "codesOfConduct":
				return internalGetCodesOfConduct() ?? []

				case "licenses":
				return internalGetLicenses()

				case "marketplaceCategories":
				return internalGetMarketplaceCategories()

				default:
				return []
			}
		}

		open func childResponseObjectMap() -> [GraphQL.AbstractResponse]  {
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "codeOfConduct":
					if let value = internalGetCodeOfConduct() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "codesOfConduct":
					if let value = internalGetCodesOfConduct() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "enterprise":
					if let value = internalGetEnterprise() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "enterpriseAdministratorInvitation":
					if let value = internalGetEnterpriseAdministratorInvitation() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "enterpriseAdministratorInvitationByToken":
					if let value = internalGetEnterpriseAdministratorInvitationByToken() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "license":
					if let value = internalGetLicense() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "licenses":
					internalGetLicenses().forEach {
						if let value = $0 {
							response.append(value)
							response.append(contentsOf: value.childResponseObjectMap())
						}
					}

					case "marketplaceCategories":
					internalGetMarketplaceCategories().forEach {
						response.append($0)
						response.append(contentsOf: $0.childResponseObjectMap())
					}

					case "marketplaceCategory":
					if let value = internalGetMarketplaceCategory() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "marketplaceListing":
					if let value = internalGetMarketplaceListing() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "marketplaceListings":
					response.append(internalGetMarketplaceListings())
					response.append(contentsOf: internalGetMarketplaceListings().childResponseObjectMap())

					case "meta":
					response.append(internalGetMeta())
					response.append(contentsOf: internalGetMeta().childResponseObjectMap())

					case "node":
					if let value = internalGetNode() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "nodes":
					internalGetNodes().forEach {
						if let value = $0 {
							response.append(value as! GraphQL.AbstractResponse)
							response.append(contentsOf: value.childResponseObjectMap())
						}
					}

					case "organization":
					if let value = internalGetOrganization() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "rateLimit":
					if let value = internalGetRateLimit() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "relay":
					response.append(internalGetRelay())
					response.append(contentsOf: internalGetRelay().childResponseObjectMap())

					case "repository":
					if let value = internalGetRepository() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "repositoryOwner":
					if let value = internalGetRepositoryOwner() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "resource":
					if let value = internalGetResource() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "search":
					response.append(internalGetSearch())
					response.append(contentsOf: internalGetSearch().childResponseObjectMap())

					case "securityAdvisories":
					response.append(internalGetSecurityAdvisories())
					response.append(contentsOf: internalGetSecurityAdvisories().childResponseObjectMap())

					case "securityAdvisory":
					if let value = internalGetSecurityAdvisory() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "securityVulnerabilities":
					response.append(internalGetSecurityVulnerabilities())
					response.append(contentsOf: internalGetSecurityVulnerabilities().childResponseObjectMap())

					case "sponsorsListing":
					if let value = internalGetSponsorsListing() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "topic":
					if let value = internalGetTopic() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "user":
					if let value = internalGetUser() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "viewer":
					response.append(internalGetViewer())
					response.append(contentsOf: internalGetViewer().childResponseObjectMap())

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
