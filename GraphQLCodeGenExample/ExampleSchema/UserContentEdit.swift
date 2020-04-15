// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UserContentEditQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UserContentEdit

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> UserContentEditQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func deletedAt(aliasSuffix: String? = nil) -> UserContentEditQuery {
			addField(field: "deletedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func deletedBy(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> UserContentEditQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "deletedBy", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func diff(aliasSuffix: String? = nil) -> UserContentEditQuery {
			addField(field: "diff", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func editedAt(aliasSuffix: String? = nil) -> UserContentEditQuery {
			addField(field: "editedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func editor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> UserContentEditQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "editor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> UserContentEditQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> UserContentEditQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class UserContentEdit: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = UserContentEditQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UserContentEdit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "deletedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UserContentEdit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "deletedBy":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UserContentEdit.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "diff":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UserContentEdit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "editedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UserContentEdit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "editor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UserContentEdit.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UserContentEdit.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UserContentEdit.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UserContentEdit.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UserContentEdit" }

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var deletedAt: String? {
			return internalGetDeletedAt()
		}

		func internalGetDeletedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "deletedAt", aliasSuffix: aliasSuffix) as! String?
		}

		open var deletedBy: Actor? {
			return internalGetDeletedBy()
		}

		func internalGetDeletedBy(aliasSuffix: String? = nil) -> Actor? {
			return field(field: "deletedBy", aliasSuffix: aliasSuffix) as! Actor?
		}

		open var diff: String? {
			return internalGetDiff()
		}

		func internalGetDiff(aliasSuffix: String? = nil) -> String? {
			return field(field: "diff", aliasSuffix: aliasSuffix) as! String?
		}

		open var editedAt: String {
			return internalGetEditedAt()
		}

		func internalGetEditedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "editedAt", aliasSuffix: aliasSuffix) as! String
		}

		open var editor: Actor? {
			return internalGetEditor()
		}

		func internalGetEditor(aliasSuffix: String? = nil) -> Actor? {
			return field(field: "editor", aliasSuffix: aliasSuffix) as! Actor?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var updatedAt: String {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "createdAt":

				return .scalar

				case "deletedAt":

				return .scalar

				case "deletedBy":

				return .object

				case "diff":

				return .scalar

				case "editedAt":

				return .scalar

				case "editor":

				return .object

				case "id":

				return .scalar

				case "updatedAt":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "deletedBy":
				return internalGetDeletedBy()?.responseObject()

				case "editor":
				return internalGetEditor()?.responseObject()

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
					case "deletedBy":
					if let value = internalGetDeletedBy() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "editor":
					if let value = internalGetEditor() {
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
