// Generated from graphql_swift_gen gem
import Foundation

public protocol Starrable {
	var typeName: String { get }

	var id: GraphQL.ID { get }

	var stargazers: ExampleSchema.StargazerConnection { get }

	var viewerHasStarred: Bool { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class StarrableQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Starrable

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> StarrableQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func stargazers(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: StarOrder? = nil, _ subfields: (StargazerConnectionQuery) -> Void) -> StarrableQuery {
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
		open func viewerHasStarred(aliasSuffix: String? = nil) -> StarrableQuery {
			addField(field: "viewerHasStarred", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onGist(subfields: (GistQuery) -> Void) -> StarrableQuery {
			let subquery = GistQuery()
			subfields(subquery)
			addInlineFragment(on: "Gist", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepository(subfields: (RepositoryQuery) -> Void) -> StarrableQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)
			addInlineFragment(on: "Repository", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTopic(subfields: (TopicQuery) -> Void) -> StarrableQuery {
			let subquery = TopicQuery()
			subfields(subquery)
			addInlineFragment(on: "Topic", subfields: subquery)
			return self
		}
	}

	open class UnknownStarrable: GraphQL.AbstractResponse, GraphQLObject, Starrable {
		public typealias Query = StarrableQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownStarrable.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "stargazers":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownStarrable.self, field: fieldName, value: fieldValue)
				}
				return try StargazerConnection(fields: value)

				case "viewerHasStarred":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownStarrable.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownStarrable.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> Starrable {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownStarrable.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Gist":
				return try Gist.init(fields: fields)

				case "Repository":
				return try Repository.init(fields: fields)

				case "Topic":
				return try Topic.init(fields: fields)

				default:
				return try UnknownStarrable.init(fields: fields)
			}
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
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

		open var viewerHasStarred: Bool {
			return internalGetViewerHasStarred()
		}

		func internalGetViewerHasStarred(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerHasStarred", aliasSuffix: aliasSuffix) as! Bool
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "id":

				return .scalar

				case "stargazers":

				return .object

				case "viewerHasStarred":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "stargazers":
				return internalGetStargazers()

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
