// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ReactionQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Reaction

		@discardableResult
		open func content(aliasSuffix: String? = nil) -> ReactionQuery {
			addField(field: "content", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> ReactionQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> ReactionQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> ReactionQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func reactable(aliasSuffix: String? = nil, _ subfields: (ReactableQuery) -> Void) -> ReactionQuery {
			let subquery = ReactableQuery()
			subfields(subquery)

			addField(field: "reactable", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func user(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> ReactionQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class Reaction: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = ReactionQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "content":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Reaction.self, field: fieldName, value: fieldValue)
				}
				return ReactionContent(rawValue: value) ?? .unknownValue

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Reaction.self, field: fieldName, value: fieldValue)
				}
				return value

				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Reaction.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Reaction.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "reactable":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Reaction.self, field: fieldName, value: fieldValue)
				}
				return try UnknownReactable.create(fields: value)

				case "user":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Reaction.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				default:
				throw SchemaViolationError(type: Reaction.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Reaction" }

		open var content: ExampleSchema.ReactionContent {
			return internalGetContent()
		}

		func internalGetContent(aliasSuffix: String? = nil) -> ExampleSchema.ReactionContent {
			return field(field: "content", aliasSuffix: aliasSuffix) as! ExampleSchema.ReactionContent
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

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var reactable: Reactable {
			return internalGetReactable()
		}

		func internalGetReactable(aliasSuffix: String? = nil) -> Reactable {
			return field(field: "reactable", aliasSuffix: aliasSuffix) as! Reactable
		}

		open var user: ExampleSchema.User? {
			return internalGetUser()
		}

		func internalGetUser(aliasSuffix: String? = nil) -> ExampleSchema.User? {
			return field(field: "user", aliasSuffix: aliasSuffix) as! ExampleSchema.User?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "content":

				return .scalar

				case "createdAt":

				return .scalar

				case "databaseId":

				return .scalar

				case "id":

				return .scalar

				case "reactable":

				return .object

				case "user":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "reactable":
				return internalGetReactable().responseObject()

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
					case "reactable":
					response.append(internalGetReactable() as! GraphQL.AbstractResponse)
					response.append(contentsOf: internalGetReactable().childResponseObjectMap())

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
