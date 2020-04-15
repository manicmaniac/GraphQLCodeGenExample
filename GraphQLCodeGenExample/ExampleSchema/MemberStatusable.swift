// Generated from graphql_swift_gen gem
import Foundation

public protocol MemberStatusable {
	var typeName: String { get }

	var memberStatuses: ExampleSchema.UserStatusConnection { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class MemberStatusableQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = MemberStatusable

		@discardableResult
		open func memberStatuses(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: UserStatusOrder? = nil, _ subfields: (UserStatusConnectionQuery) -> Void) -> MemberStatusableQuery {
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

			let subquery = UserStatusConnectionQuery()
			subfields(subquery)

			addField(field: "memberStatuses", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onOrganization(subfields: (OrganizationQuery) -> Void) -> MemberStatusableQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)
			addInlineFragment(on: "Organization", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeam(subfields: (TeamQuery) -> Void) -> MemberStatusableQuery {
			let subquery = TeamQuery()
			subfields(subquery)
			addInlineFragment(on: "Team", subfields: subquery)
			return self
		}
	}

	open class UnknownMemberStatusable: GraphQL.AbstractResponse, GraphQLObject, MemberStatusable {
		public typealias Query = MemberStatusableQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "memberStatuses":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownMemberStatusable.self, field: fieldName, value: fieldValue)
				}
				return try UserStatusConnection(fields: value)

				default:
				throw SchemaViolationError(type: UnknownMemberStatusable.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> MemberStatusable {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownMemberStatusable.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Organization":
				return try Organization.init(fields: fields)

				case "Team":
				return try Team.init(fields: fields)

				default:
				return try UnknownMemberStatusable.init(fields: fields)
			}
		}

		open var memberStatuses: ExampleSchema.UserStatusConnection {
			return internalGetMemberStatuses()
		}

		open func aliasedMemberStatuses(aliasSuffix: String) -> ExampleSchema.UserStatusConnection {
			return internalGetMemberStatuses(aliasSuffix: aliasSuffix)
		}

		func internalGetMemberStatuses(aliasSuffix: String? = nil) -> ExampleSchema.UserStatusConnection {
			return field(field: "memberStatuses", aliasSuffix: aliasSuffix) as! ExampleSchema.UserStatusConnection
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "memberStatuses":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "memberStatuses":
				return internalGetMemberStatuses()

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
					case "memberStatuses":
					response.append(internalGetMemberStatuses())
					response.append(contentsOf: internalGetMemberStatuses().childResponseObjectMap())

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
