// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class GitActorQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = GitActor

		@discardableResult
		open func avatarUrl(aliasSuffix: String? = nil, size: Int32? = nil) -> GitActorQuery {
			var args: [String] = []

			if let size = size {
				args.append("size:\(size)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "avatarUrl", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func date(aliasSuffix: String? = nil) -> GitActorQuery {
			addField(field: "date", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func email(aliasSuffix: String? = nil) -> GitActorQuery {
			addField(field: "email", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> GitActorQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func user(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> GitActorQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class GitActor: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = GitActorQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "avatarUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: GitActor.self, field: fieldName, value: fieldValue)
				}
				return value

				case "date":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: GitActor.self, field: fieldName, value: fieldValue)
				}
				return value

				case "email":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: GitActor.self, field: fieldName, value: fieldValue)
				}
				return value

				case "name":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: GitActor.self, field: fieldName, value: fieldValue)
				}
				return value

				case "user":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: GitActor.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				default:
				throw SchemaViolationError(type: GitActor.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "GitActor" }

		open var avatarUrl: String {
			return internalGetAvatarUrl()
		}

		open func aliasedAvatarUrl(aliasSuffix: String) -> String {
			return internalGetAvatarUrl(aliasSuffix: aliasSuffix)
		}

		func internalGetAvatarUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "avatarUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var date: String? {
			return internalGetDate()
		}

		func internalGetDate(aliasSuffix: String? = nil) -> String? {
			return field(field: "date", aliasSuffix: aliasSuffix) as! String?
		}

		open var email: String? {
			return internalGetEmail()
		}

		func internalGetEmail(aliasSuffix: String? = nil) -> String? {
			return field(field: "email", aliasSuffix: aliasSuffix) as! String?
		}

		open var name: String? {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String? {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String?
		}

		open var user: ExampleSchema.User? {
			return internalGetUser()
		}

		func internalGetUser(aliasSuffix: String? = nil) -> ExampleSchema.User? {
			return field(field: "user", aliasSuffix: aliasSuffix) as! ExampleSchema.User?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "avatarUrl":

				return .scalar

				case "date":

				return .scalar

				case "email":

				return .scalar

				case "name":

				return .scalar

				case "user":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "user":
				return internalGetUser()

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
					case "user":
					if let value = internalGetUser() {
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
