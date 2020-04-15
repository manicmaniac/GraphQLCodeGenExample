// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class SavedReplyQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SavedReply

		@discardableResult
		open func body(aliasSuffix: String? = nil) -> SavedReplyQuery {
			addField(field: "body", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func bodyHtml(aliasSuffix: String? = nil) -> SavedReplyQuery {
			addField(field: "bodyHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> SavedReplyQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> SavedReplyQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func title(aliasSuffix: String? = nil) -> SavedReplyQuery {
			addField(field: "title", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func user(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> SavedReplyQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class SavedReply: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = SavedReplyQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "body":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SavedReply.self, field: fieldName, value: fieldValue)
				}
				return value

				case "bodyHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SavedReply.self, field: fieldName, value: fieldValue)
				}
				return value

				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: SavedReply.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SavedReply.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "title":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SavedReply.self, field: fieldName, value: fieldValue)
				}
				return value

				case "user":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SavedReply.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				default:
				throw SchemaViolationError(type: SavedReply.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "SavedReply" }

		open var body: String {
			return internalGetBody()
		}

		func internalGetBody(aliasSuffix: String? = nil) -> String {
			return field(field: "body", aliasSuffix: aliasSuffix) as! String
		}

		open var bodyHtml: String {
			return internalGetBodyHtml()
		}

		func internalGetBodyHtml(aliasSuffix: String? = nil) -> String {
			return field(field: "bodyHTML", aliasSuffix: aliasSuffix) as! String
		}

		open var databaseId: Int32? {
			return internalGetDatabaseId()
		}

		func internalGetDatabaseId(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "databaseId", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var title: String {
			return internalGetTitle()
		}

		func internalGetTitle(aliasSuffix: String? = nil) -> String {
			return field(field: "title", aliasSuffix: aliasSuffix) as! String
		}

		open var user: Actor? {
			return internalGetUser()
		}

		func internalGetUser(aliasSuffix: String? = nil) -> Actor? {
			return field(field: "user", aliasSuffix: aliasSuffix) as! Actor?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "body":

				return .scalar

				case "bodyHTML":

				return .scalar

				case "databaseId":

				return .scalar

				case "id":

				return .scalar

				case "title":

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
				return internalGetUser()?.responseObject()

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
						response.append(value as! GraphQL.AbstractResponse)
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
