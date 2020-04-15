// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ReopenedEventQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ReopenedEvent

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> ReopenedEventQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func closable(aliasSuffix: String? = nil, _ subfields: (ClosableQuery) -> Void) -> ReopenedEventQuery {
			let subquery = ClosableQuery()
			subfields(subquery)

			addField(field: "closable", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> ReopenedEventQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> ReopenedEventQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class ReopenedEvent: GraphQL.AbstractResponse, GraphQLObject, IssueTimelineItem, IssueTimelineItems, Node, PullRequestTimelineItem, PullRequestTimelineItems {
		public typealias Query = ReopenedEventQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ReopenedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "closable":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ReopenedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownClosable.create(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReopenedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReopenedEvent.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				default:
				throw SchemaViolationError(type: ReopenedEvent.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ReopenedEvent" }

		open var actor: Actor? {
			return internalGetActor()
		}

		func internalGetActor(aliasSuffix: String? = nil) -> Actor? {
			return field(field: "actor", aliasSuffix: aliasSuffix) as! Actor?
		}

		open var closable: Closable {
			return internalGetClosable()
		}

		func internalGetClosable(aliasSuffix: String? = nil) -> Closable {
			return field(field: "closable", aliasSuffix: aliasSuffix) as! Closable
		}

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "actor":

				return .object

				case "closable":

				return .object

				case "createdAt":

				return .scalar

				case "id":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "actor":
				return internalGetActor()?.responseObject()

				case "closable":
				return internalGetClosable().responseObject()

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
					case "actor":
					if let value = internalGetActor() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "closable":
					response.append(internalGetClosable() as! GraphQL.AbstractResponse)
					response.append(contentsOf: internalGetClosable().childResponseObjectMap())

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
