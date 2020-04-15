// Generated from graphql_swift_gen gem
import Foundation

public protocol TopicAuditEntryData {
	var typeName: String { get }

	var topic: ExampleSchema.Topic? { get }

	var topicName: String? { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class TopicAuditEntryDataQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = TopicAuditEntryData

		@discardableResult
		open func topic(aliasSuffix: String? = nil, _ subfields: (TopicQuery) -> Void) -> TopicAuditEntryDataQuery {
			let subquery = TopicQuery()
			subfields(subquery)

			addField(field: "topic", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func topicName(aliasSuffix: String? = nil) -> TopicAuditEntryDataQuery {
			addField(field: "topicName", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onRepoAddTopicAuditEntry(subfields: (RepoAddTopicAuditEntryQuery) -> Void) -> TopicAuditEntryDataQuery {
			let subquery = RepoAddTopicAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoAddTopicAuditEntry", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepoRemoveTopicAuditEntry(subfields: (RepoRemoveTopicAuditEntryQuery) -> Void) -> TopicAuditEntryDataQuery {
			let subquery = RepoRemoveTopicAuditEntryQuery()
			subfields(subquery)
			addInlineFragment(on: "RepoRemoveTopicAuditEntry", subfields: subquery)
			return self
		}
	}

	open class UnknownTopicAuditEntryData: GraphQL.AbstractResponse, GraphQLObject, TopicAuditEntryData {
		public typealias Query = TopicAuditEntryDataQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "topic":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownTopicAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return try Topic(fields: value)

				case "topicName":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownTopicAuditEntryData.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownTopicAuditEntryData.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> TopicAuditEntryData {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownTopicAuditEntryData.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "RepoAddTopicAuditEntry":
				return try RepoAddTopicAuditEntry.init(fields: fields)

				case "RepoRemoveTopicAuditEntry":
				return try RepoRemoveTopicAuditEntry.init(fields: fields)

				default:
				return try UnknownTopicAuditEntryData.init(fields: fields)
			}
		}

		open var topic: ExampleSchema.Topic? {
			return internalGetTopic()
		}

		func internalGetTopic(aliasSuffix: String? = nil) -> ExampleSchema.Topic? {
			return field(field: "topic", aliasSuffix: aliasSuffix) as! ExampleSchema.Topic?
		}

		open var topicName: String? {
			return internalGetTopicName()
		}

		func internalGetTopicName(aliasSuffix: String? = nil) -> String? {
			return field(field: "topicName", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "topic":

				return .object

				case "topicName":

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
