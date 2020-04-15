// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UserStatusQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UserStatus

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> UserStatusQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func emoji(aliasSuffix: String? = nil) -> UserStatusQuery {
			addField(field: "emoji", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func emojiHtml(aliasSuffix: String? = nil) -> UserStatusQuery {
			addField(field: "emojiHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func expiresAt(aliasSuffix: String? = nil) -> UserStatusQuery {
			addField(field: "expiresAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> UserStatusQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func indicatesLimitedAvailability(aliasSuffix: String? = nil) -> UserStatusQuery {
			addField(field: "indicatesLimitedAvailability", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func message(aliasSuffix: String? = nil) -> UserStatusQuery {
			addField(field: "message", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func organization(aliasSuffix: String? = nil, _ subfields: (OrganizationQuery) -> Void) -> UserStatusQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)

			addField(field: "organization", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> UserStatusQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func user(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> UserStatusQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class UserStatus: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = UserStatusQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UserStatus.self, field: fieldName, value: fieldValue)
				}
				return value

				case "emoji":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UserStatus.self, field: fieldName, value: fieldValue)
				}
				return value

				case "emojiHTML":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UserStatus.self, field: fieldName, value: fieldValue)
				}
				return value

				case "expiresAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UserStatus.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UserStatus.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "indicatesLimitedAvailability":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UserStatus.self, field: fieldName, value: fieldValue)
				}
				return value

				case "message":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UserStatus.self, field: fieldName, value: fieldValue)
				}
				return value

				case "organization":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UserStatus.self, field: fieldName, value: fieldValue)
				}
				return try Organization(fields: value)

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UserStatus.self, field: fieldName, value: fieldValue)
				}
				return value

				case "user":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UserStatus.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				default:
				throw SchemaViolationError(type: UserStatus.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UserStatus" }

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var emoji: String? {
			return internalGetEmoji()
		}

		func internalGetEmoji(aliasSuffix: String? = nil) -> String? {
			return field(field: "emoji", aliasSuffix: aliasSuffix) as! String?
		}

		open var emojiHtml: String? {
			return internalGetEmojiHtml()
		}

		func internalGetEmojiHtml(aliasSuffix: String? = nil) -> String? {
			return field(field: "emojiHTML", aliasSuffix: aliasSuffix) as! String?
		}

		open var expiresAt: String? {
			return internalGetExpiresAt()
		}

		func internalGetExpiresAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "expiresAt", aliasSuffix: aliasSuffix) as! String?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var indicatesLimitedAvailability: Bool {
			return internalGetIndicatesLimitedAvailability()
		}

		func internalGetIndicatesLimitedAvailability(aliasSuffix: String? = nil) -> Bool {
			return field(field: "indicatesLimitedAvailability", aliasSuffix: aliasSuffix) as! Bool
		}

		open var message: String? {
			return internalGetMessage()
		}

		func internalGetMessage(aliasSuffix: String? = nil) -> String? {
			return field(field: "message", aliasSuffix: aliasSuffix) as! String?
		}

		open var organization: ExampleSchema.Organization? {
			return internalGetOrganization()
		}

		func internalGetOrganization(aliasSuffix: String? = nil) -> ExampleSchema.Organization? {
			return field(field: "organization", aliasSuffix: aliasSuffix) as! ExampleSchema.Organization?
		}

		open var updatedAt: String {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String
		}

		open var user: ExampleSchema.User {
			return internalGetUser()
		}

		func internalGetUser(aliasSuffix: String? = nil) -> ExampleSchema.User {
			return field(field: "user", aliasSuffix: aliasSuffix) as! ExampleSchema.User
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "createdAt":

				return .scalar

				case "emoji":

				return .scalar

				case "emojiHTML":

				return .scalar

				case "expiresAt":

				return .scalar

				case "id":

				return .scalar

				case "indicatesLimitedAvailability":

				return .scalar

				case "message":

				return .scalar

				case "organization":

				return .object

				case "updatedAt":

				return .scalar

				case "user":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "organization":
				return internalGetOrganization()

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
					case "organization":
					if let value = internalGetOrganization() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "user":
					response.append(internalGetUser())
					response.append(contentsOf: internalGetUser().childResponseObjectMap())

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
