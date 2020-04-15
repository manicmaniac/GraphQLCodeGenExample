// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class BlobQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Blob

		@discardableResult
		open func abbreviatedOid(aliasSuffix: String? = nil) -> BlobQuery {
			addField(field: "abbreviatedOid", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func byteSize(aliasSuffix: String? = nil) -> BlobQuery {
			addField(field: "byteSize", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func commitResourcePath(aliasSuffix: String? = nil) -> BlobQuery {
			addField(field: "commitResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func commitUrl(aliasSuffix: String? = nil) -> BlobQuery {
			addField(field: "commitUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> BlobQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isBinary(aliasSuffix: String? = nil) -> BlobQuery {
			addField(field: "isBinary", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isTruncated(aliasSuffix: String? = nil) -> BlobQuery {
			addField(field: "isTruncated", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func oid(aliasSuffix: String? = nil) -> BlobQuery {
			addField(field: "oid", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> BlobQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func text(aliasSuffix: String? = nil) -> BlobQuery {
			addField(field: "text", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Blob: GraphQL.AbstractResponse, GraphQLObject, GitObject, Node {
		public typealias Query = BlobQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "abbreviatedOid":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Blob.self, field: fieldName, value: fieldValue)
				}
				return value

				case "byteSize":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Blob.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "commitResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Blob.self, field: fieldName, value: fieldValue)
				}
				return value

				case "commitUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Blob.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Blob.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "isBinary":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Blob.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isTruncated":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Blob.self, field: fieldName, value: fieldValue)
				}
				return value

				case "oid":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Blob.self, field: fieldName, value: fieldValue)
				}
				return value

				case "repository":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Blob.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "text":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Blob.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Blob.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Blob" }

		open var abbreviatedOid: String {
			return internalGetAbbreviatedOid()
		}

		func internalGetAbbreviatedOid(aliasSuffix: String? = nil) -> String {
			return field(field: "abbreviatedOid", aliasSuffix: aliasSuffix) as! String
		}

		open var byteSize: Int32 {
			return internalGetByteSize()
		}

		func internalGetByteSize(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "byteSize", aliasSuffix: aliasSuffix) as! Int32
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

		open var isBinary: Bool {
			return internalGetIsBinary()
		}

		func internalGetIsBinary(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isBinary", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isTruncated: Bool {
			return internalGetIsTruncated()
		}

		func internalGetIsTruncated(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isTruncated", aliasSuffix: aliasSuffix) as! Bool
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

		open var text: String? {
			return internalGetText()
		}

		func internalGetText(aliasSuffix: String? = nil) -> String? {
			return field(field: "text", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "abbreviatedOid":

				return .scalar

				case "byteSize":

				return .scalar

				case "commitResourcePath":

				return .scalar

				case "commitUrl":

				return .scalar

				case "id":

				return .scalar

				case "isBinary":

				return .scalar

				case "isTruncated":

				return .scalar

				case "oid":

				return .scalar

				case "repository":

				return .object

				case "text":

				return .scalar

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
