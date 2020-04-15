// Generated from graphql_swift_gen gem
import Foundation

public protocol GitObject {
	var typeName: String { get }

	var abbreviatedOid: String { get }

	var commitResourcePath: String { get }

	var commitUrl: String { get }

	var id: GraphQL.ID { get }

	var oid: String { get }

	var repository: ExampleSchema.Repository { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class GitObjectQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = GitObject

		@discardableResult
		open func abbreviatedOid(aliasSuffix: String? = nil) -> GitObjectQuery {
			addField(field: "abbreviatedOid", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func commitResourcePath(aliasSuffix: String? = nil) -> GitObjectQuery {
			addField(field: "commitResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func commitUrl(aliasSuffix: String? = nil) -> GitObjectQuery {
			addField(field: "commitUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> GitObjectQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func oid(aliasSuffix: String? = nil) -> GitObjectQuery {
			addField(field: "oid", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> GitObjectQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onBlob(subfields: (BlobQuery) -> Void) -> GitObjectQuery {
			let subquery = BlobQuery()
			subfields(subquery)
			addInlineFragment(on: "Blob", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCommit(subfields: (CommitQuery) -> Void) -> GitObjectQuery {
			let subquery = CommitQuery()
			subfields(subquery)
			addInlineFragment(on: "Commit", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTag(subfields: (TagQuery) -> Void) -> GitObjectQuery {
			let subquery = TagQuery()
			subfields(subquery)
			addInlineFragment(on: "Tag", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTree(subfields: (TreeQuery) -> Void) -> GitObjectQuery {
			let subquery = TreeQuery()
			subfields(subquery)
			addInlineFragment(on: "Tree", subfields: subquery)
			return self
		}
	}

	open class UnknownGitObject: GraphQL.AbstractResponse, GraphQLObject, GitObject {
		public typealias Query = GitObjectQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "abbreviatedOid":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownGitObject.self, field: fieldName, value: fieldValue)
				}
				return value

				case "commitResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownGitObject.self, field: fieldName, value: fieldValue)
				}
				return value

				case "commitUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownGitObject.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownGitObject.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "oid":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownGitObject.self, field: fieldName, value: fieldValue)
				}
				return value

				case "repository":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownGitObject.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				default:
				throw SchemaViolationError(type: UnknownGitObject.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> GitObject {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownGitObject.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Blob":
				return try Blob.init(fields: fields)

				case "Commit":
				return try Commit.init(fields: fields)

				case "Tag":
				return try Tag.init(fields: fields)

				case "Tree":
				return try Tree.init(fields: fields)

				default:
				return try UnknownGitObject.init(fields: fields)
			}
		}

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
				default:
				return []
			}
		}

		open func childResponseObjectMap() -> [GraphQL.AbstractResponse]  {
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
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
