// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ReleaseQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Release

		@discardableResult
		open func author(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> ReleaseQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "author", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> ReleaseQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func description(aliasSuffix: String? = nil) -> ReleaseQuery {
			addField(field: "description", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func descriptionHtml(aliasSuffix: String? = nil) -> ReleaseQuery {
			addField(field: "descriptionHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> ReleaseQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isDraft(aliasSuffix: String? = nil) -> ReleaseQuery {
			addField(field: "isDraft", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isPrerelease(aliasSuffix: String? = nil) -> ReleaseQuery {
			addField(field: "isPrerelease", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> ReleaseQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func publishedAt(aliasSuffix: String? = nil) -> ReleaseQuery {
			addField(field: "publishedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func releaseAssets(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, name: String? = nil, _ subfields: (ReleaseAssetConnectionQuery) -> Void) -> ReleaseQuery {
			var args: [String] = []

			if let after = after {
				args.append("after:\(GraphQL.quoteString(input: after))")
			}

			if let before = before {
				args.append("before:\(GraphQL.quoteString(input: before))")
			}

			if let first = first {
				args.append("first:\(first)")
			}

			if let last = last {
				args.append("last:\(last)")
			}

			if let name = name {
				args.append("name:\(GraphQL.quoteString(input: name))")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = ReleaseAssetConnectionQuery()
			subfields(subquery)

			addField(field: "releaseAssets", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> ReleaseQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func shortDescriptionHtml(aliasSuffix: String? = nil, limit: Int32? = nil) -> ReleaseQuery {
			var args: [String] = []

			if let limit = limit {
				args.append("limit:\(limit)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "shortDescriptionHTML", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func tag(aliasSuffix: String? = nil, _ subfields: (RefQuery) -> Void) -> ReleaseQuery {
			let subquery = RefQuery()
			subfields(subquery)

			addField(field: "tag", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func tagName(aliasSuffix: String? = nil) -> ReleaseQuery {
			addField(field: "tagName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> ReleaseQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> ReleaseQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Release: GraphQL.AbstractResponse, GraphQLObject, Node, UniformResourceLocatable {
		public typealias Query = ReleaseQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "author":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Release.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Release.self, field: fieldName, value: fieldValue)
				}
				return value

				case "description":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Release.self, field: fieldName, value: fieldValue)
				}
				return value

				case "descriptionHTML":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Release.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Release.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "isDraft":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Release.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isPrerelease":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Release.self, field: fieldName, value: fieldValue)
				}
				return value

				case "name":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Release.self, field: fieldName, value: fieldValue)
				}
				return value

				case "publishedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Release.self, field: fieldName, value: fieldValue)
				}
				return value

				case "releaseAssets":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Release.self, field: fieldName, value: fieldValue)
				}
				return try ReleaseAssetConnection(fields: value)

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Release.self, field: fieldName, value: fieldValue)
				}
				return value

				case "shortDescriptionHTML":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Release.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tag":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Release.self, field: fieldName, value: fieldValue)
				}
				return try Ref(fields: value)

				case "tagName":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Release.self, field: fieldName, value: fieldValue)
				}
				return value

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Release.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Release.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Release.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Release" }

		open var author: ExampleSchema.User? {
			return internalGetAuthor()
		}

		func internalGetAuthor(aliasSuffix: String? = nil) -> ExampleSchema.User? {
			return field(field: "author", aliasSuffix: aliasSuffix) as! ExampleSchema.User?
		}

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var description: String? {
			return internalGetDescription()
		}

		func internalGetDescription(aliasSuffix: String? = nil) -> String? {
			return field(field: "description", aliasSuffix: aliasSuffix) as! String?
		}

		open var descriptionHtml: String? {
			return internalGetDescriptionHtml()
		}

		func internalGetDescriptionHtml(aliasSuffix: String? = nil) -> String? {
			return field(field: "descriptionHTML", aliasSuffix: aliasSuffix) as! String?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var isDraft: Bool {
			return internalGetIsDraft()
		}

		func internalGetIsDraft(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isDraft", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isPrerelease: Bool {
			return internalGetIsPrerelease()
		}

		func internalGetIsPrerelease(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isPrerelease", aliasSuffix: aliasSuffix) as! Bool
		}

		open var name: String? {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String? {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String?
		}

		open var publishedAt: String? {
			return internalGetPublishedAt()
		}

		func internalGetPublishedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "publishedAt", aliasSuffix: aliasSuffix) as! String?
		}

		open var releaseAssets: ExampleSchema.ReleaseAssetConnection {
			return internalGetReleaseAssets()
		}

		open func aliasedReleaseAssets(aliasSuffix: String) -> ExampleSchema.ReleaseAssetConnection {
			return internalGetReleaseAssets(aliasSuffix: aliasSuffix)
		}

		func internalGetReleaseAssets(aliasSuffix: String? = nil) -> ExampleSchema.ReleaseAssetConnection {
			return field(field: "releaseAssets", aliasSuffix: aliasSuffix) as! ExampleSchema.ReleaseAssetConnection
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var shortDescriptionHtml: String? {
			return internalGetShortDescriptionHtml()
		}

		open func aliasedShortDescriptionHtml(aliasSuffix: String) -> String? {
			return internalGetShortDescriptionHtml(aliasSuffix: aliasSuffix)
		}

		func internalGetShortDescriptionHtml(aliasSuffix: String? = nil) -> String? {
			return field(field: "shortDescriptionHTML", aliasSuffix: aliasSuffix) as! String?
		}

		open var tag: ExampleSchema.Ref? {
			return internalGetTag()
		}

		func internalGetTag(aliasSuffix: String? = nil) -> ExampleSchema.Ref? {
			return field(field: "tag", aliasSuffix: aliasSuffix) as! ExampleSchema.Ref?
		}

		open var tagName: String {
			return internalGetTagName()
		}

		func internalGetTagName(aliasSuffix: String? = nil) -> String {
			return field(field: "tagName", aliasSuffix: aliasSuffix) as! String
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
				case "author":

				return .object

				case "createdAt":

				return .scalar

				case "description":

				return .scalar

				case "descriptionHTML":

				return .scalar

				case "id":

				return .scalar

				case "isDraft":

				return .scalar

				case "isPrerelease":

				return .scalar

				case "name":

				return .scalar

				case "publishedAt":

				return .scalar

				case "releaseAssets":

				return .object

				case "resourcePath":

				return .scalar

				case "shortDescriptionHTML":

				return .scalar

				case "tag":

				return .object

				case "tagName":

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
				case "author":
				return internalGetAuthor()

				case "releaseAssets":
				return internalGetReleaseAssets()

				case "tag":
				return internalGetTag()

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
					case "author":
					if let value = internalGetAuthor() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "releaseAssets":
					response.append(internalGetReleaseAssets())
					response.append(contentsOf: internalGetReleaseAssets().childResponseObjectMap())

					case "tag":
					if let value = internalGetTag() {
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
