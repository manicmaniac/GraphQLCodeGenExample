// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class GistQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Gist

		@discardableResult
		open func comments(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (GistCommentConnectionQuery) -> Void) -> GistQuery {
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

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = GistCommentConnectionQuery()
			subfields(subquery)

			addField(field: "comments", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> GistQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func description(aliasSuffix: String? = nil) -> GistQuery {
			addField(field: "description", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func files(aliasSuffix: String? = nil, limit: Int32? = nil, oid: String? = nil, _ subfields: (GistFileQuery) -> Void) -> GistQuery {
			var args: [String] = []

			if let limit = limit {
				args.append("limit:\(limit)")
			}

			if let oid = oid {
				args.append("oid:\(GraphQL.quoteString(input: oid))")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = GistFileQuery()
			subfields(subquery)

			addField(field: "files", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func forks(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: GistOrder? = nil, _ subfields: (GistConnectionQuery) -> Void) -> GistQuery {
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

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = GistConnectionQuery()
			subfields(subquery)

			addField(field: "forks", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> GistQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isFork(aliasSuffix: String? = nil) -> GistQuery {
			addField(field: "isFork", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isPublic(aliasSuffix: String? = nil) -> GistQuery {
			addField(field: "isPublic", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> GistQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func owner(aliasSuffix: String? = nil, _ subfields: (RepositoryOwnerQuery) -> Void) -> GistQuery {
			let subquery = RepositoryOwnerQuery()
			subfields(subquery)

			addField(field: "owner", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func pushedAt(aliasSuffix: String? = nil) -> GistQuery {
			addField(field: "pushedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> GistQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func stargazers(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: StarOrder? = nil, _ subfields: (StargazerConnectionQuery) -> Void) -> GistQuery {
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

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = StargazerConnectionQuery()
			subfields(subquery)

			addField(field: "stargazers", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> GistQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> GistQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerHasStarred(aliasSuffix: String? = nil) -> GistQuery {
			addField(field: "viewerHasStarred", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Gist: GraphQL.AbstractResponse, GraphQLObject, Node, PinnableItem, Starrable, UniformResourceLocatable {
		public typealias Query = GistQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "comments":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Gist.self, field: fieldName, value: fieldValue)
				}
				return try GistCommentConnection(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Gist.self, field: fieldName, value: fieldValue)
				}
				return value

				case "description":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Gist.self, field: fieldName, value: fieldValue)
				}
				return value

				case "files":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Gist.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Gist.self, field: fieldName, value: fieldValue)
				}
				return try GistFile(fields: value) } as [Any?]

				case "forks":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Gist.self, field: fieldName, value: fieldValue)
				}
				return try GistConnection(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Gist.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "isFork":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Gist.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isPublic":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Gist.self, field: fieldName, value: fieldValue)
				}
				return value

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Gist.self, field: fieldName, value: fieldValue)
				}
				return value

				case "owner":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Gist.self, field: fieldName, value: fieldValue)
				}
				return try UnknownRepositoryOwner.create(fields: value)

				case "pushedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Gist.self, field: fieldName, value: fieldValue)
				}
				return value

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Gist.self, field: fieldName, value: fieldValue)
				}
				return value

				case "stargazers":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Gist.self, field: fieldName, value: fieldValue)
				}
				return try StargazerConnection(fields: value)

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Gist.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Gist.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerHasStarred":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Gist.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Gist.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Gist" }

		open var comments: ExampleSchema.GistCommentConnection {
			return internalGetComments()
		}

		open func aliasedComments(aliasSuffix: String) -> ExampleSchema.GistCommentConnection {
			return internalGetComments(aliasSuffix: aliasSuffix)
		}

		func internalGetComments(aliasSuffix: String? = nil) -> ExampleSchema.GistCommentConnection {
			return field(field: "comments", aliasSuffix: aliasSuffix) as! ExampleSchema.GistCommentConnection
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

		open var files: [ExampleSchema.GistFile?]? {
			return internalGetFiles()
		}

		open func aliasedFiles(aliasSuffix: String) -> [ExampleSchema.GistFile?]? {
			return internalGetFiles(aliasSuffix: aliasSuffix)
		}

		func internalGetFiles(aliasSuffix: String? = nil) -> [ExampleSchema.GistFile?]? {
			return field(field: "files", aliasSuffix: aliasSuffix) as! [ExampleSchema.GistFile?]?
		}

		open var forks: ExampleSchema.GistConnection {
			return internalGetForks()
		}

		open func aliasedForks(aliasSuffix: String) -> ExampleSchema.GistConnection {
			return internalGetForks(aliasSuffix: aliasSuffix)
		}

		func internalGetForks(aliasSuffix: String? = nil) -> ExampleSchema.GistConnection {
			return field(field: "forks", aliasSuffix: aliasSuffix) as! ExampleSchema.GistConnection
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var isFork: Bool {
			return internalGetIsFork()
		}

		func internalGetIsFork(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isFork", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isPublic: Bool {
			return internalGetIsPublic()
		}

		func internalGetIsPublic(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isPublic", aliasSuffix: aliasSuffix) as! Bool
		}

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		open var owner: RepositoryOwner? {
			return internalGetOwner()
		}

		func internalGetOwner(aliasSuffix: String? = nil) -> RepositoryOwner? {
			return field(field: "owner", aliasSuffix: aliasSuffix) as! RepositoryOwner?
		}

		open var pushedAt: String? {
			return internalGetPushedAt()
		}

		func internalGetPushedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "pushedAt", aliasSuffix: aliasSuffix) as! String?
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var stargazers: ExampleSchema.StargazerConnection {
			return internalGetStargazers()
		}

		open func aliasedStargazers(aliasSuffix: String) -> ExampleSchema.StargazerConnection {
			return internalGetStargazers(aliasSuffix: aliasSuffix)
		}

		func internalGetStargazers(aliasSuffix: String? = nil) -> ExampleSchema.StargazerConnection {
			return field(field: "stargazers", aliasSuffix: aliasSuffix) as! ExampleSchema.StargazerConnection
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

		open var viewerHasStarred: Bool {
			return internalGetViewerHasStarred()
		}

		func internalGetViewerHasStarred(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerHasStarred", aliasSuffix: aliasSuffix) as! Bool
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "comments":

				return .object

				case "createdAt":

				return .scalar

				case "description":

				return .scalar

				case "files":

				return .objectList

				case "forks":

				return .object

				case "id":

				return .scalar

				case "isFork":

				return .scalar

				case "isPublic":

				return .scalar

				case "name":

				return .scalar

				case "owner":

				return .object

				case "pushedAt":

				return .scalar

				case "resourcePath":

				return .scalar

				case "stargazers":

				return .object

				case "updatedAt":

				return .scalar

				case "url":

				return .scalar

				case "viewerHasStarred":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "comments":
				return internalGetComments()

				case "forks":
				return internalGetForks()

				case "owner":
				return internalGetOwner()?.responseObject()

				case "stargazers":
				return internalGetStargazers()

				default:
				break
			}
			return nil
		}

		override open func fetchChildObjectList(key: String) -> [GraphQL.AbstractResponse] {
			switch(key) {
				case "files":
				return internalGetFiles() ?? []

				default:
				return []
			}
		}

		open func childResponseObjectMap() -> [GraphQL.AbstractResponse]  {
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "comments":
					response.append(internalGetComments())
					response.append(contentsOf: internalGetComments().childResponseObjectMap())

					case "files":
					if let value = internalGetFiles() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "forks":
					response.append(internalGetForks())
					response.append(contentsOf: internalGetForks().childResponseObjectMap())

					case "owner":
					if let value = internalGetOwner() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "stargazers":
					response.append(internalGetStargazers())
					response.append(contentsOf: internalGetStargazers().childResponseObjectMap())

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
