// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class SponsorshipQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Sponsorship

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> SponsorshipQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> SponsorshipQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"`Sponsorship.maintainer` will be removed. Use `Sponsorship.sponsorable` instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func maintainer(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> SponsorshipQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "maintainer", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func privacyLevel(aliasSuffix: String? = nil) -> SponsorshipQuery {
			addField(field: "privacyLevel", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func sponsor(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> SponsorshipQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "sponsor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func sponsorable(aliasSuffix: String? = nil, _ subfields: (SponsorableQuery) -> Void) -> SponsorshipQuery {
			let subquery = SponsorableQuery()
			subfields(subquery)

			addField(field: "sponsorable", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func tier(aliasSuffix: String? = nil, _ subfields: (SponsorsTierQuery) -> Void) -> SponsorshipQuery {
			let subquery = SponsorsTierQuery()
			subfields(subquery)

			addField(field: "tier", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class Sponsorship: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = SponsorshipQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Sponsorship.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Sponsorship.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "maintainer":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Sponsorship.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				case "privacyLevel":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Sponsorship.self, field: fieldName, value: fieldValue)
				}
				return SponsorshipPrivacy(rawValue: value) ?? .unknownValue

				case "sponsor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Sponsorship.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				case "sponsorable":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Sponsorship.self, field: fieldName, value: fieldValue)
				}
				return try UnknownSponsorable.create(fields: value)

				case "tier":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Sponsorship.self, field: fieldName, value: fieldValue)
				}
				return try SponsorsTier(fields: value)

				default:
				throw SchemaViolationError(type: Sponsorship.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Sponsorship" }

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		@available(*, deprecated, message:"`Sponsorship.maintainer` will be removed. Use `Sponsorship.sponsorable` instead. Removal on 2020-04-01 UTC.")
		open var maintainer: ExampleSchema.User {
			return internalGetMaintainer()
		}

		func internalGetMaintainer(aliasSuffix: String? = nil) -> ExampleSchema.User {
			return field(field: "maintainer", aliasSuffix: aliasSuffix) as! ExampleSchema.User
		}

		open var privacyLevel: ExampleSchema.SponsorshipPrivacy {
			return internalGetPrivacyLevel()
		}

		func internalGetPrivacyLevel(aliasSuffix: String? = nil) -> ExampleSchema.SponsorshipPrivacy {
			return field(field: "privacyLevel", aliasSuffix: aliasSuffix) as! ExampleSchema.SponsorshipPrivacy
		}

		open var sponsor: ExampleSchema.User? {
			return internalGetSponsor()
		}

		func internalGetSponsor(aliasSuffix: String? = nil) -> ExampleSchema.User? {
			return field(field: "sponsor", aliasSuffix: aliasSuffix) as! ExampleSchema.User?
		}

		open var sponsorable: Sponsorable {
			return internalGetSponsorable()
		}

		func internalGetSponsorable(aliasSuffix: String? = nil) -> Sponsorable {
			return field(field: "sponsorable", aliasSuffix: aliasSuffix) as! Sponsorable
		}

		open var tier: ExampleSchema.SponsorsTier? {
			return internalGetTier()
		}

		func internalGetTier(aliasSuffix: String? = nil) -> ExampleSchema.SponsorsTier? {
			return field(field: "tier", aliasSuffix: aliasSuffix) as! ExampleSchema.SponsorsTier?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "createdAt":

				return .scalar

				case "id":

				return .scalar

				case "maintainer":

				return .object

				case "privacyLevel":

				return .scalar

				case "sponsor":

				return .object

				case "sponsorable":

				return .object

				case "tier":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "maintainer":
				return internalGetMaintainer()

				case "sponsor":
				return internalGetSponsor()

				case "sponsorable":
				return internalGetSponsorable().responseObject()

				case "tier":
				return internalGetTier()

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
					case "maintainer":
					response.append(internalGetMaintainer())
					response.append(contentsOf: internalGetMaintainer().childResponseObjectMap())

					case "sponsor":
					if let value = internalGetSponsor() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "sponsorable":
					response.append(internalGetSponsorable() as! GraphQL.AbstractResponse)
					response.append(contentsOf: internalGetSponsorable().childResponseObjectMap())

					case "tier":
					if let value = internalGetTier() {
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
