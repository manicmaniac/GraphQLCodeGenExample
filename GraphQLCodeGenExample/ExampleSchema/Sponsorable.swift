// Generated from graphql_swift_gen gem
import Foundation

public protocol Sponsorable {
	var typeName: String { get }

	var sponsorsListing: ExampleSchema.SponsorsListing? { get }

	var sponsorshipsAsMaintainer: ExampleSchema.SponsorshipConnection { get }

	var sponsorshipsAsSponsor: ExampleSchema.SponsorshipConnection { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class SponsorableQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Sponsorable

		@discardableResult
		open func sponsorsListing(aliasSuffix: String? = nil, _ subfields: (SponsorsListingQuery) -> Void) -> SponsorableQuery {
			let subquery = SponsorsListingQuery()
			subfields(subquery)

			addField(field: "sponsorsListing", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func sponsorshipsAsMaintainer(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, includePrivate: Bool? = nil, orderBy: SponsorshipOrder? = nil, _ subfields: (SponsorshipConnectionQuery) -> Void) -> SponsorableQuery {
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

			if let includePrivate = includePrivate {
				args.append("includePrivate:\(includePrivate)")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = SponsorshipConnectionQuery()
			subfields(subquery)

			addField(field: "sponsorshipsAsMaintainer", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func sponsorshipsAsSponsor(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: SponsorshipOrder? = nil, _ subfields: (SponsorshipConnectionQuery) -> Void) -> SponsorableQuery {
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

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = SponsorshipConnectionQuery()
			subfields(subquery)

			addField(field: "sponsorshipsAsSponsor", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onOrganization(subfields: (OrganizationQuery) -> Void) -> SponsorableQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)
			addInlineFragment(on: "Organization", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUser(subfields: (UserQuery) -> Void) -> SponsorableQuery {
			let subquery = UserQuery()
			subfields(subquery)
			addInlineFragment(on: "User", subfields: subquery)
			return self
		}
	}

	open class UnknownSponsorable: GraphQL.AbstractResponse, GraphQLObject, Sponsorable {
		public typealias Query = SponsorableQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "sponsorsListing":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownSponsorable.self, field: fieldName, value: fieldValue)
				}
				return try SponsorsListing(fields: value)

				case "sponsorshipsAsMaintainer":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownSponsorable.self, field: fieldName, value: fieldValue)
				}
				return try SponsorshipConnection(fields: value)

				case "sponsorshipsAsSponsor":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownSponsorable.self, field: fieldName, value: fieldValue)
				}
				return try SponsorshipConnection(fields: value)

				default:
				throw SchemaViolationError(type: UnknownSponsorable.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> Sponsorable {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownSponsorable.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Organization":
				return try Organization.init(fields: fields)

				case "User":
				return try User.init(fields: fields)

				default:
				return try UnknownSponsorable.init(fields: fields)
			}
		}

		open var sponsorsListing: ExampleSchema.SponsorsListing? {
			return internalGetSponsorsListing()
		}

		func internalGetSponsorsListing(aliasSuffix: String? = nil) -> ExampleSchema.SponsorsListing? {
			return field(field: "sponsorsListing", aliasSuffix: aliasSuffix) as! ExampleSchema.SponsorsListing?
		}

		open var sponsorshipsAsMaintainer: ExampleSchema.SponsorshipConnection {
			return internalGetSponsorshipsAsMaintainer()
		}

		open func aliasedSponsorshipsAsMaintainer(aliasSuffix: String) -> ExampleSchema.SponsorshipConnection {
			return internalGetSponsorshipsAsMaintainer(aliasSuffix: aliasSuffix)
		}

		func internalGetSponsorshipsAsMaintainer(aliasSuffix: String? = nil) -> ExampleSchema.SponsorshipConnection {
			return field(field: "sponsorshipsAsMaintainer", aliasSuffix: aliasSuffix) as! ExampleSchema.SponsorshipConnection
		}

		open var sponsorshipsAsSponsor: ExampleSchema.SponsorshipConnection {
			return internalGetSponsorshipsAsSponsor()
		}

		open func aliasedSponsorshipsAsSponsor(aliasSuffix: String) -> ExampleSchema.SponsorshipConnection {
			return internalGetSponsorshipsAsSponsor(aliasSuffix: aliasSuffix)
		}

		func internalGetSponsorshipsAsSponsor(aliasSuffix: String? = nil) -> ExampleSchema.SponsorshipConnection {
			return field(field: "sponsorshipsAsSponsor", aliasSuffix: aliasSuffix) as! ExampleSchema.SponsorshipConnection
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "sponsorsListing":

				return .object

				case "sponsorshipsAsMaintainer":

				return .object

				case "sponsorshipsAsSponsor":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "sponsorsListing":
				return internalGetSponsorsListing()

				case "sponsorshipsAsMaintainer":
				return internalGetSponsorshipsAsMaintainer()

				case "sponsorshipsAsSponsor":
				return internalGetSponsorshipsAsSponsor()

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
					case "sponsorsListing":
					if let value = internalGetSponsorsListing() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "sponsorshipsAsMaintainer":
					response.append(internalGetSponsorshipsAsMaintainer())
					response.append(contentsOf: internalGetSponsorshipsAsMaintainer().childResponseObjectMap())

					case "sponsorshipsAsSponsor":
					response.append(internalGetSponsorshipsAsSponsor())
					response.append(contentsOf: internalGetSponsorshipsAsSponsor().childResponseObjectMap())

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
