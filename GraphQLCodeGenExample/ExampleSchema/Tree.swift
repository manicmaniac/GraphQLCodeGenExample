// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class TreeQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Tree

		@discardableResult
		open func abbreviatedOid(aliasSuffix: String? = nil) -> TreeQuery {
			addField(field: "abbreviatedOid", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func commitResourcePath(aliasSuffix: String? = nil) -> TreeQuery {
			addField(field: "commitResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func commitUrl(aliasSuffix: String? = nil) -> TreeQuery {
			addField(field: "commitUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func entries(aliasSuffix: String? = nil, _ subfields: (TreeEntryQuery) -> Void) -> TreeQuery {
			let subquery = TreeEntryQuery()
			subfields(subquery)

			addField(field: "entries", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> TreeQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func oid(aliasSuffix: String? = nil) -> TreeQuery {
			addField(field: "oid", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> TreeQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class Tree: GraphQL.AbstractResponse, GraphQLObject, GitObject, Node {
		public typealias Query = TreeQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "abbreviatedOid":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Tree.self, field: fieldName, value: fieldValue)
				}
				return value

				case "commitResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Tree.self, field: fieldName, value: fieldValue)
				}
				return value

				case "commitUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Tree.self, field: fieldName, value: fieldValue)
				}
				return value

				case "entries":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: Tree.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try TreeEntry(fields: $0) }

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Tree.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "oid":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Tree.self, field: fieldName, value: fieldValue)
				}
				return value

				case "repository":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Tree.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				default:
				throw SchemaViolationError(type: Tree.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Tree" }

		open var abbreviatedOid: String {
			return internalGetAbbreviatedOid()
		}

		func internalGetAbbreviatedOid(aliasSuffix: String? = nil) -> String {
			return field(field: "abbreviatedOid", aliasSuffix: aliasSuffix) as! String
		}

		open var commitResourcePath: String {
			return internalGetCommitResourcePath()
		}

		func internalGetCommitResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "commitResourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var commitUrl: String {
			return internalGetCommitUrl()
		}

		func internalGetCommitUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "commitUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var entries: [ExampleSchema.TreeEntry]? {
			return internalGetEntries()
		}

		func internalGetEntries(aliasSuffix: String? = nil) -> [ExampleSchema.TreeEntry]? {
			return field(field: "entries", aliasSuffix: aliasSuffix) as! [ExampleSchema.TreeEntry]?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
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

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "abbreviatedOid":

				return .scalar

				case "commitResourcePath":

				return .scalar

				case "commitUrl":

				return .scalar

				case "entries":

				return .objectList

				case "id":

				return .scalar

				case "oid":

				return .scalar

				case "repository":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "repository":
				return internalGetRepository()

				default:
				break
			}
			return nil
		}

		override open func fetchChildObjectList(key: String) -> [GraphQL.AbstractResponse] {
			switch(key) {
				case "entries":
				return internalGetEntries() ?? []

				default:
				return []
			}
		}

		open func childResponseObjectMap() -> [GraphQL.AbstractResponse]  {
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "entries":
					if let value = internalGetEntries() {
						value.forEach {
							response.append($0)
							response.append(contentsOf: $0.childResponseObjectMap())
						}
					}

					case "repository":
					response.append(internalGetRepository())
					response.append(contentsOf: internalGetRepository().childResponseObjectMap())

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
