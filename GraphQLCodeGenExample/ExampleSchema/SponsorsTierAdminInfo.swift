// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class SponsorsTierAdminInfoQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SponsorsTierAdminInfo

		@discardableResult
		open func sponsorships(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, includePrivate: Bool? = nil, orderBy: SponsorshipOrder? = nil, _ subfields: (SponsorshipConnectionQuery) -> Void) -> SponsorsTierAdminInfoQuery {
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

			addField(field: "sponsorships", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}
	}

	open class SponsorsTierAdminInfo: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = SponsorsTierAdminInfoQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "sponsorships":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SponsorsTierAdminInfo.self, field: fieldName, value: fieldValue)
				}
				return try SponsorshipConnection(fields: value)

				default:
				throw SchemaViolationError(type: SponsorsTierAdminInfo.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "SponsorsTierAdminInfo" }

		open var sponsorships: ExampleSchema.SponsorshipConnection {
			return internalGetSponsorships()
		}

		open func aliasedSponsorships(aliasSuffix: String) -> ExampleSchema.SponsorshipConnection {
			return internalGetSponsorships(aliasSuffix: aliasSuffix)
		}

		func internalGetSponsorships(aliasSuffix: String? = nil) -> ExampleSchema.SponsorshipConnection {
			return field(field: "sponsorships", aliasSuffix: aliasSuffix) as! ExampleSchema.SponsorshipConnection
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "sponsorships":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "sponsorships":
				return internalGetSponsorships()

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
					case "sponsorships":
					response.append(internalGetSponsorships())
					response.append(contentsOf: internalGetSponsorships().childResponseObjectMap())

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
