// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class SponsorsListingQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SponsorsListing

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> SponsorsListingQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func fullDescription(aliasSuffix: String? = nil) -> SponsorsListingQuery {
			addField(field: "fullDescription", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func fullDescriptionHtml(aliasSuffix: String? = nil) -> SponsorsListingQuery {
			addField(field: "fullDescriptionHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> SponsorsListingQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> SponsorsListingQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func shortDescription(aliasSuffix: String? = nil) -> SponsorsListingQuery {
			addField(field: "shortDescription", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func slug(aliasSuffix: String? = nil) -> SponsorsListingQuery {
			addField(field: "slug", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tiers(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: SponsorsTierOrder? = nil, _ subfields: (SponsorsTierConnectionQuery) -> Void) -> SponsorsListingQuery {
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

			let subquery = SponsorsTierConnectionQuery()
			subfields(subquery)

			addField(field: "tiers", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}
	}

	open class SponsorsListing: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = SponsorsListingQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SponsorsListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "fullDescription":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SponsorsListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "fullDescriptionHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SponsorsListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SponsorsListing.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SponsorsListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "shortDescription":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SponsorsListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "slug":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SponsorsListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tiers":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SponsorsListing.self, field: fieldName, value: fieldValue)
				}
				return try SponsorsTierConnection(fields: value)

				default:
				throw SchemaViolationError(type: SponsorsListing.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "SponsorsListing" }

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var fullDescription: String {
			return internalGetFullDescription()
		}

		func internalGetFullDescription(aliasSuffix: String? = nil) -> String {
			return field(field: "fullDescription", aliasSuffix: aliasSuffix) as! String
		}

		open var fullDescriptionHtml: String {
			return internalGetFullDescriptionHtml()
		}

		func internalGetFullDescriptionHtml(aliasSuffix: String? = nil) -> String {
			return field(field: "fullDescriptionHTML", aliasSuffix: aliasSuffix) as! String
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		open var shortDescription: String {
			return internalGetShortDescription()
		}

		func internalGetShortDescription(aliasSuffix: String? = nil) -> String {
			return field(field: "shortDescription", aliasSuffix: aliasSuffix) as! String
		}

		open var slug: String {
			return internalGetSlug()
		}

		func internalGetSlug(aliasSuffix: String? = nil) -> String {
			return field(field: "slug", aliasSuffix: aliasSuffix) as! String
		}

		open var tiers: ExampleSchema.SponsorsTierConnection? {
			return internalGetTiers()
		}

		open func aliasedTiers(aliasSuffix: String) -> ExampleSchema.SponsorsTierConnection? {
			return internalGetTiers(aliasSuffix: aliasSuffix)
		}

		func internalGetTiers(aliasSuffix: String? = nil) -> ExampleSchema.SponsorsTierConnection? {
			return field(field: "tiers", aliasSuffix: aliasSuffix) as! ExampleSchema.SponsorsTierConnection?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "createdAt":

				return .scalar

				case "fullDescription":

				return .scalar

				case "fullDescriptionHTML":

				return .scalar

				case "id":

				return .scalar

				case "name":

				return .scalar

				case "shortDescription":

				return .scalar

				case "slug":

				return .scalar

				case "tiers":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "tiers":
				return internalGetTiers()

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
					case "tiers":
					if let value = internalGetTiers() {
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
