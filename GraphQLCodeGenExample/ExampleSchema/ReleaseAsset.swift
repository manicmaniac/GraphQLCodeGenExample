// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ReleaseAssetQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ReleaseAsset

		@discardableResult
		open func contentType(aliasSuffix: String? = nil) -> ReleaseAssetQuery {
			addField(field: "contentType", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> ReleaseAssetQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func downloadCount(aliasSuffix: String? = nil) -> ReleaseAssetQuery {
			addField(field: "downloadCount", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func downloadUrl(aliasSuffix: String? = nil) -> ReleaseAssetQuery {
			addField(field: "downloadUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> ReleaseAssetQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> ReleaseAssetQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func release(aliasSuffix: String? = nil, _ subfields: (ReleaseQuery) -> Void) -> ReleaseAssetQuery {
			let subquery = ReleaseQuery()
			subfields(subquery)

			addField(field: "release", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func size(aliasSuffix: String? = nil) -> ReleaseAssetQuery {
			addField(field: "size", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> ReleaseAssetQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func uploadedBy(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> ReleaseAssetQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "uploadedBy", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> ReleaseAssetQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class ReleaseAsset: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = ReleaseAssetQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentType":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReleaseAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReleaseAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "downloadCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ReleaseAsset.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "downloadUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReleaseAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReleaseAsset.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReleaseAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "release":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ReleaseAsset.self, field: fieldName, value: fieldValue)
				}
				return try Release(fields: value)

				case "size":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ReleaseAsset.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReleaseAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "uploadedBy":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ReleaseAsset.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReleaseAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: ReleaseAsset.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ReleaseAsset" }

		open var contentType: String {
			return internalGetContentType()
		}

		func internalGetContentType(aliasSuffix: String? = nil) -> String {
			return field(field: "contentType", aliasSuffix: aliasSuffix) as! String
		}

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var downloadCount: Int32 {
			return internalGetDownloadCount()
		}

		func internalGetDownloadCount(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "downloadCount", aliasSuffix: aliasSuffix) as! Int32
		}

		open var downloadUrl: String {
			return internalGetDownloadUrl()
		}

		func internalGetDownloadUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "downloadUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		open var release: ExampleSchema.Release? {
			return internalGetRelease()
		}

		func internalGetRelease(aliasSuffix: String? = nil) -> ExampleSchema.Release? {
			return field(field: "release", aliasSuffix: aliasSuffix) as! ExampleSchema.Release?
		}

		open var size: Int32 {
			return internalGetSize()
		}

		func internalGetSize(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "size", aliasSuffix: aliasSuffix) as! Int32
		}

		open var updatedAt: String {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String
		}

		open var uploadedBy: ExampleSchema.User {
			return internalGetUploadedBy()
		}

		func internalGetUploadedBy(aliasSuffix: String? = nil) -> ExampleSchema.User {
			return field(field: "uploadedBy", aliasSuffix: aliasSuffix) as! ExampleSchema.User
		}

		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contentType":

				return .scalar

				case "createdAt":

				return .scalar

				case "downloadCount":

				return .scalar

				case "downloadUrl":

				return .scalar

				case "id":

				return .scalar

				case "name":

				return .scalar

				case "release":

				return .object

				case "size":

				return .scalar

				case "updatedAt":

				return .scalar

				case "uploadedBy":

				return .object

				case "url":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "release":
				return internalGetRelease()

				case "uploadedBy":
				return internalGetUploadedBy()

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
					case "release":
					if let value = internalGetRelease() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "uploadedBy":
					response.append(internalGetUploadedBy())
					response.append(contentsOf: internalGetUploadedBy().childResponseObjectMap())

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
