// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class MannequinQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Mannequin

		@discardableResult
		open func avatarUrl(aliasSuffix: String? = nil, size: Int32? = nil) -> MannequinQuery {
			var args: [String] = []

			if let size = size {
				args.append("size:\(size)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "avatarUrl", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> MannequinQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> MannequinQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func email(aliasSuffix: String? = nil) -> MannequinQuery {
			addField(field: "email", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> MannequinQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func login(aliasSuffix: String? = nil) -> MannequinQuery {
			addField(field: "login", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> MannequinQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> MannequinQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> MannequinQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Mannequin: GraphQL.AbstractResponse, GraphQLObject, Actor, Assignee, Node, RequestedReviewer, UniformResourceLocatable {
		public typealias Query = MannequinQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "avatarUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Mannequin.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Mannequin.self, field: fieldName, value: fieldValue)
				}
				return value

				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Mannequin.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "email":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Mannequin.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Mannequin.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "login":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Mannequin.self, field: fieldName, value: fieldValue)
				}
				return value

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Mannequin.self, field: fieldName, value: fieldValue)
				}
				return value

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Mannequin.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Mannequin.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Mannequin.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Mannequin" }

		open var avatarUrl: String {
			return internalGetAvatarUrl()
		}

		open func aliasedAvatarUrl(aliasSuffix: String) -> String {
			return internalGetAvatarUrl(aliasSuffix: aliasSuffix)
		}

		func internalGetAvatarUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "avatarUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var databaseId: Int32? {
			return internalGetDatabaseId()
		}

		func internalGetDatabaseId(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "databaseId", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var email: String? {
			return internalGetEmail()
		}

		func internalGetEmail(aliasSuffix: String? = nil) -> String? {
			return field(field: "email", aliasSuffix: aliasSuffix) as! String?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
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

		open var updatedAt: String {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String
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

				case "createdAt":

				return .scalar

				case "databaseId":

				return .scalar

				case "email":

				return .scalar

				case "id":

				return .scalar

				case "login":

				return .scalar

				case "resourcePath":

				return .scalar

				case "updatedAt":

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
