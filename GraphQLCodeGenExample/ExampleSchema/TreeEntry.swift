// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class TreeEntryQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = TreeEntry

		@discardableResult
		open func mode(aliasSuffix: String? = nil) -> TreeEntryQuery {
			addField(field: "mode", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> TreeEntryQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func object(aliasSuffix: String? = nil, _ subfields: (GitObjectQuery) -> Void) -> TreeEntryQuery {
			let subquery = GitObjectQuery()
			subfields(subquery)

			addField(field: "object", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func oid(aliasSuffix: String? = nil) -> TreeEntryQuery {
			addField(field: "oid", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> TreeEntryQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func submodule(aliasSuffix: String? = nil, _ subfields: (SubmoduleQuery) -> Void) -> TreeEntryQuery {
			let subquery = SubmoduleQuery()
			subfields(subquery)

			addField(field: "submodule", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> TreeEntryQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class TreeEntry: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = TreeEntryQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "mode":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: TreeEntry.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TreeEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "object":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: TreeEntry.self, field: fieldName, value: fieldValue)
				}
				return try UnknownGitObject.create(fields: value)

				case "oid":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TreeEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "repository":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: TreeEntry.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "submodule":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: TreeEntry.self, field: fieldName, value: fieldValue)
				}
				return try Submodule(fields: value)

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TreeEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: TreeEntry.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "TreeEntry" }

		open var mode: Int32 {
			return internalGetMode()
		}

		func internalGetMode(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "mode", aliasSuffix: aliasSuffix) as! Int32
		}

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		open var object: GitObject? {
			return internalGetObject()
		}

		func internalGetObject(aliasSuffix: String? = nil) -> GitObject? {
			return field(field: "object", aliasSuffix: aliasSuffix) as! GitObject?
		}

		open var oid: String {
			return internalGetOid()
		}

		func internalGetOid(aliasSuffix: String? = nil) -> String {
			return field(field: "oid", aliasSuffix: aliasSuffix) as! String
		}

		open var repository: ExampleSchema.Repository {
			return internalGetRepository()
		}

		func internalGetRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository {
			return field(field: "repository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository
		}

		open var submodule: ExampleSchema.Submodule? {
			return internalGetSubmodule()
		}

		func internalGetSubmodule(aliasSuffix: String? = nil) -> ExampleSchema.Submodule? {
			return field(field: "submodule", aliasSuffix: aliasSuffix) as! ExampleSchema.Submodule?
		}

		open var type: String {
			return internalGetType()
		}

		func internalGetType(aliasSuffix: String? = nil) -> String {
			return field(field: "type", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "mode":

				return .scalar

				case "name":

				return .scalar

				case "object":

				return .object

				case "oid":

				return .scalar

				case "repository":

				return .object

				case "submodule":

				return .object

				case "type":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "object":
				return internalGetObject()?.responseObject()

				case "repository":
				return internalGetRepository()

				case "submodule":
				return internalGetSubmodule()

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
					case "object":
					if let value = internalGetObject() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "repository":
					response.append(internalGetRepository())
					response.append(contentsOf: internalGetRepository().childResponseObjectMap())

					case "submodule":
					if let value = internalGetSubmodule() {
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
