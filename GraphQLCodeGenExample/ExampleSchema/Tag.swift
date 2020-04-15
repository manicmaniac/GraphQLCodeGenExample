// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class TagQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Tag

		@discardableResult
		open func abbreviatedOid(aliasSuffix: String? = nil) -> TagQuery {
			addField(field: "abbreviatedOid", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func commitResourcePath(aliasSuffix: String? = nil) -> TagQuery {
			addField(field: "commitResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func commitUrl(aliasSuffix: String? = nil) -> TagQuery {
			addField(field: "commitUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> TagQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func message(aliasSuffix: String? = nil) -> TagQuery {
			addField(field: "message", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> TagQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func oid(aliasSuffix: String? = nil) -> TagQuery {
			addField(field: "oid", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> TagQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func tagger(aliasSuffix: String? = nil, _ subfields: (GitActorQuery) -> Void) -> TagQuery {
			let subquery = GitActorQuery()
			subfields(subquery)

			addField(field: "tagger", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func target(aliasSuffix: String? = nil, _ subfields: (GitObjectQuery) -> Void) -> TagQuery {
			let subquery = GitObjectQuery()
			subfields(subquery)

			addField(field: "target", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class Tag: GraphQL.AbstractResponse, GraphQLObject, GitObject, Node {
		public typealias Query = TagQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "abbreviatedOid":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Tag.self, field: fieldName, value: fieldValue)
				}
				return value

				case "commitResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Tag.self, field: fieldName, value: fieldValue)
				}
				return value

				case "commitUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Tag.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Tag.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "message":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Tag.self, field: fieldName, value: fieldValue)
				}
				return value

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Tag.self, field: fieldName, value: fieldValue)
				}
				return value

				case "oid":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Tag.self, field: fieldName, value: fieldValue)
				}
				return value

				case "repository":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Tag.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "tagger":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Tag.self, field: fieldName, value: fieldValue)
				}
				return try GitActor(fields: value)

				case "target":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Tag.self, field: fieldName, value: fieldValue)
				}
				return try UnknownGitObject.create(fields: value)

				default:
				throw SchemaViolationError(type: Tag.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Tag" }

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

		open var message: String? {
			return internalGetMessage()
		}

		func internalGetMessage(aliasSuffix: String? = nil) -> String? {
			return field(field: "message", aliasSuffix: aliasSuffix) as! String?
		}

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
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

		open var tagger: ExampleSchema.GitActor? {
			return internalGetTagger()
		}

		func internalGetTagger(aliasSuffix: String? = nil) -> ExampleSchema.GitActor? {
			return field(field: "tagger", aliasSuffix: aliasSuffix) as! ExampleSchema.GitActor?
		}

		open var target: GitObject {
			return internalGetTarget()
		}

		func internalGetTarget(aliasSuffix: String? = nil) -> GitObject {
			return field(field: "target", aliasSuffix: aliasSuffix) as! GitObject
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

				case "message":

				return .scalar

				case "name":

				return .scalar

				case "oid":

				return .scalar

				case "repository":

				return .object

				case "tagger":

				return .object

				case "target":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "repository":
				return internalGetRepository()

				case "tagger":
				return internalGetTagger()

				case "target":
				return internalGetTarget().responseObject()

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

					case "tagger":
					if let value = internalGetTagger() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "target":
					response.append(internalGetTarget() as! GraphQL.AbstractResponse)
					response.append(contentsOf: internalGetTarget().childResponseObjectMap())

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
