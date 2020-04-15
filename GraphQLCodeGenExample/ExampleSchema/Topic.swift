// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class TopicQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Topic

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> TopicQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> TopicQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func relatedTopics(aliasSuffix: String? = nil, first: Int32? = nil, _ subfields: (TopicQuery) -> Void) -> TopicQuery {
			var args: [String] = []

			if let first = first {
				args.append("first:\(first)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = TopicQuery()
			subfields(subquery)

			addField(field: "relatedTopics", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func stargazers(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: StarOrder? = nil, _ subfields: (StargazerConnectionQuery) -> Void) -> TopicQuery {
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
		open func viewerHasStarred(aliasSuffix: String? = nil) -> TopicQuery {
			addField(field: "viewerHasStarred", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Topic: GraphQL.AbstractResponse, GraphQLObject, Node, Starrable {
		public typealias Query = TopicQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Topic.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Topic.self, field: fieldName, value: fieldValue)
				}
				return value

				case "relatedTopics":
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: Topic.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try Topic(fields: $0) }

				case "stargazers":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Topic.self, field: fieldName, value: fieldValue)
				}
				return try StargazerConnection(fields: value)

				case "viewerHasStarred":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Topic.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Topic.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Topic" }

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

		open var relatedTopics: [ExampleSchema.Topic] {
			return internalGetRelatedTopics()
		}

		open func aliasedRelatedTopics(aliasSuffix: String) -> [ExampleSchema.Topic] {
			return internalGetRelatedTopics(aliasSuffix: aliasSuffix)
		}

		func internalGetRelatedTopics(aliasSuffix: String? = nil) -> [ExampleSchema.Topic] {
			return field(field: "relatedTopics", aliasSuffix: aliasSuffix) as! [ExampleSchema.Topic]
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

				case "name":

				return .scalar

				case "relatedTopics":

				return .objectList

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
				case "relatedTopics":
				return internalGetRelatedTopics()

				default:
				return []
			}
		}

		open func childResponseObjectMap() -> [GraphQL.AbstractResponse]  {
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "relatedTopics":
					internalGetRelatedTopics().forEach {
						response.append($0)
						response.append(contentsOf: $0.childResponseObjectMap())
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
