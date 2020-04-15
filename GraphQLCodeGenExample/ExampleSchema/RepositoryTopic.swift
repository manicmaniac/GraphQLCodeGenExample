// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RepositoryTopicQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RepositoryTopic

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> RepositoryTopicQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> RepositoryTopicQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func topic(aliasSuffix: String? = nil, _ subfields: (TopicQuery) -> Void) -> RepositoryTopicQuery {
			let subquery = TopicQuery()
			subfields(subquery)

			addField(field: "topic", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> RepositoryTopicQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class RepositoryTopic: GraphQL.AbstractResponse, GraphQLObject, Node, UniformResourceLocatable {
		public typealias Query = RepositoryTopicQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RepositoryTopic.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RepositoryTopic.self, field: fieldName, value: fieldValue)
				}
				return value

				case "topic":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RepositoryTopic.self, field: fieldName, value: fieldValue)
				}
				return try Topic(fields: value)

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RepositoryTopic.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: RepositoryTopic.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "RepositoryTopic" }

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var topic: ExampleSchema.Topic {
			return internalGetTopic()
		}

		func internalGetTopic(aliasSuffix: String? = nil) -> ExampleSchema.Topic {
			return field(field: "topic", aliasSuffix: aliasSuffix) as! ExampleSchema.Topic
		}

		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "id":

				return .scalar

				case "resourcePath":

				return .scalar

				case "topic":

				return .object

				case "url":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "topic":
				return internalGetTopic()

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
					case "topic":
					response.append(internalGetTopic())
					response.append(contentsOf: internalGetTopic().childResponseObjectMap())

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
