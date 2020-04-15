// Generated from graphql_swift_gen gem
import Foundation

public protocol Actor {
	var typeName: String { get }

	var avatarUrl: String { get }

	var login: String { get }

	var resourcePath: String { get }

	var url: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class ActorQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Actor

		@discardableResult
		open func avatarUrl(aliasSuffix: String? = nil, size: Int32? = nil) -> ActorQuery {
			var args: [String] = []

			if let size = size {
				args.append("size:\(size)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "avatarUrl", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func login(aliasSuffix: String? = nil) -> ActorQuery {
			addField(field: "login", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> ActorQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> ActorQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onBot(subfields: (BotQuery) -> Void) -> ActorQuery {
			let subquery = BotQuery()
			subfields(subquery)
			addInlineFragment(on: "Bot", subfields: subquery)
			return self
		}

		@discardableResult
		open func onEnterpriseUserAccount(subfields: (EnterpriseUserAccountQuery) -> Void) -> ActorQuery {
			let subquery = EnterpriseUserAccountQuery()
			subfields(subquery)
			addInlineFragment(on: "EnterpriseUserAccount", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMannequin(subfields: (MannequinQuery) -> Void) -> ActorQuery {
			let subquery = MannequinQuery()
			subfields(subquery)
			addInlineFragment(on: "Mannequin", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrganization(subfields: (OrganizationQuery) -> Void) -> ActorQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)
			addInlineFragment(on: "Organization", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUser(subfields: (UserQuery) -> Void) -> ActorQuery {
			let subquery = UserQuery()
			subfields(subquery)
			addInlineFragment(on: "User", subfields: subquery)
			return self
		}
	}

	open class UnknownActor: GraphQL.AbstractResponse, GraphQLObject, Actor {
		public typealias Query = ActorQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "avatarUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownActor.self, field: fieldName, value: fieldValue)
				}
				return value

				case "login":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownActor.self, field: fieldName, value: fieldValue)
				}
				return value

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownActor.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownActor.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownActor.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> Actor {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownActor.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Bot":
				return try Bot.init(fields: fields)

				case "EnterpriseUserAccount":
				return try EnterpriseUserAccount.init(fields: fields)

				case "Mannequin":
				return try Mannequin.init(fields: fields)

				case "Organization":
				return try Organization.init(fields: fields)

				case "User":
				return try User.init(fields: fields)

				default:
				return try UnknownActor.init(fields: fields)
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

		open var login: String {
			return internalGetLogin()
		}

		func internalGetLogin(aliasSuffix: String? = nil) -> String {
			return field(field: "login", aliasSuffix: aliasSuffix) as! String
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

				case "login":

				return .scalar

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
			return []
		}

		open func responseObject() -> GraphQL.AbstractResponse {
			return self as GraphQL.AbstractResponse
		}
	}
}
