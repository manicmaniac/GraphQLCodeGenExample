// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class SponsorsTierQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SponsorsTier

		@discardableResult
		open func adminInfo(aliasSuffix: String? = nil, _ subfields: (SponsorsTierAdminInfoQuery) -> Void) -> SponsorsTierQuery {
			let subquery = SponsorsTierAdminInfoQuery()
			subfields(subquery)

			addField(field: "adminInfo", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> SponsorsTierQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func description(aliasSuffix: String? = nil) -> SponsorsTierQuery {
			addField(field: "description", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func descriptionHtml(aliasSuffix: String? = nil) -> SponsorsTierQuery {
			addField(field: "descriptionHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> SponsorsTierQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func monthlyPriceInCents(aliasSuffix: String? = nil) -> SponsorsTierQuery {
			addField(field: "monthlyPriceInCents", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func monthlyPriceInDollars(aliasSuffix: String? = nil) -> SponsorsTierQuery {
			addField(field: "monthlyPriceInDollars", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> SponsorsTierQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func sponsorsListing(aliasSuffix: String? = nil, _ subfields: (SponsorsListingQuery) -> Void) -> SponsorsTierQuery {
			let subquery = SponsorsListingQuery()
			subfields(subquery)

			addField(field: "sponsorsListing", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> SponsorsTierQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class SponsorsTier: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = SponsorsTierQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "adminInfo":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SponsorsTier.self, field: fieldName, value: fieldValue)
				}
				return try SponsorsTierAdminInfo(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SponsorsTier.self, field: fieldName, value: fieldValue)
				}
				return value

				case "description":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SponsorsTier.self, field: fieldName, value: fieldValue)
				}
				return value

				case "descriptionHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SponsorsTier.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SponsorsTier.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "monthlyPriceInCents":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: SponsorsTier.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "monthlyPriceInDollars":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: SponsorsTier.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SponsorsTier.self, field: fieldName, value: fieldValue)
				}
				return value

				case "sponsorsListing":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SponsorsTier.self, field: fieldName, value: fieldValue)
				}
				return try SponsorsListing(fields: value)

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SponsorsTier.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: SponsorsTier.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "SponsorsTier" }

		open var adminInfo: ExampleSchema.SponsorsTierAdminInfo? {
			return internalGetAdminInfo()
		}

		func internalGetAdminInfo(aliasSuffix: String? = nil) -> ExampleSchema.SponsorsTierAdminInfo? {
			return field(field: "adminInfo", aliasSuffix: aliasSuffix) as! ExampleSchema.SponsorsTierAdminInfo?
		}

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var description: String {
			return internalGetDescription()
		}

		func internalGetDescription(aliasSuffix: String? = nil) -> String {
			return field(field: "description", aliasSuffix: aliasSuffix) as! String
		}

		open var descriptionHtml: String {
			return internalGetDescriptionHtml()
		}

		func internalGetDescriptionHtml(aliasSuffix: String? = nil) -> String {
			return field(field: "descriptionHTML", aliasSuffix: aliasSuffix) as! String
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var monthlyPriceInCents: Int32 {
			return internalGetMonthlyPriceInCents()
		}

		func internalGetMonthlyPriceInCents(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "monthlyPriceInCents", aliasSuffix: aliasSuffix) as! Int32
		}

		open var monthlyPriceInDollars: Int32 {
			return internalGetMonthlyPriceInDollars()
		}

		func internalGetMonthlyPriceInDollars(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "monthlyPriceInDollars", aliasSuffix: aliasSuffix) as! Int32
		}

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		open var sponsorsListing: ExampleSchema.SponsorsListing {
			return internalGetSponsorsListing()
		}

		func internalGetSponsorsListing(aliasSuffix: String? = nil) -> ExampleSchema.SponsorsListing {
			return field(field: "sponsorsListing", aliasSuffix: aliasSuffix) as! ExampleSchema.SponsorsListing
		}

		open var updatedAt: String {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "adminInfo":

				return .object

				case "createdAt":

				return .scalar

				case "description":

				return .scalar

				case "descriptionHTML":

				return .scalar

				case "id":

				return .scalar

				case "monthlyPriceInCents":

				return .scalar

				case "monthlyPriceInDollars":

				return .scalar

				case "name":

				return .scalar

				case "sponsorsListing":

				return .object

				case "updatedAt":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "adminInfo":
				return internalGetAdminInfo()

				case "sponsorsListing":
				return internalGetSponsorsListing()

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
					case "adminInfo":
					if let value = internalGetAdminInfo() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "sponsorsListing":
					response.append(internalGetSponsorsListing())
					response.append(contentsOf: internalGetSponsorsListing().childResponseObjectMap())

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
