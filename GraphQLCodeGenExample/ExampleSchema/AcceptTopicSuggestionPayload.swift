// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class AcceptTopicSuggestionPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = AcceptTopicSuggestionPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> AcceptTopicSuggestionPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func topic(aliasSuffix: String? = nil, _ subfields: (TopicQuery) -> Void) -> AcceptTopicSuggestionPayloadQuery {
			let subquery = TopicQuery()
			subfields(subquery)

			addField(field: "topic", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class AcceptTopicSuggestionPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = AcceptTopicSuggestionPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: AcceptTopicSuggestionPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "topic":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: AcceptTopicSuggestionPayload.self, field: fieldName, value: fieldValue)
				}
				return try Topic(fields: value)

				default:
				throw SchemaViolationError(type: AcceptTopicSuggestionPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "AcceptTopicSuggestionPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var topic: ExampleSchema.Topic? {
			return internalGetTopic()
		}

		func internalGetTopic(aliasSuffix: String? = nil) -> ExampleSchema.Topic? {
			return field(field: "topic", aliasSuffix: aliasSuffix) as! ExampleSchema.Topic?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "topic":

				return .object

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
					if let value = internalGetTopic() {
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
