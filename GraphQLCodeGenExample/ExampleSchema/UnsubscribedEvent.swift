// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UnsubscribedEventQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UnsubscribedEvent

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> UnsubscribedEventQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> UnsubscribedEventQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> UnsubscribedEventQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func subscribable(aliasSuffix: String? = nil, _ subfields: (SubscribableQuery) -> Void) -> UnsubscribedEventQuery {
			let subquery = SubscribableQuery()
			subfields(subquery)

			addField(field: "subscribable", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class UnsubscribedEvent: GraphQL.AbstractResponse, GraphQLObject, IssueTimelineItem, IssueTimelineItems, Node, PullRequestTimelineItem, PullRequestTimelineItems {
		public typealias Query = UnsubscribedEventQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnsubscribedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnsubscribedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnsubscribedEvent.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "subscribable":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnsubscribedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownSubscribable.create(fields: value)

				default:
				throw SchemaViolationError(type: UnsubscribedEvent.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UnsubscribedEvent" }

		open var actor: Actor? {
			return internalGetActor()
		}

		func internalGetActor(aliasSuffix: String? = nil) -> Actor? {
			return field(field: "actor", aliasSuffix: aliasSuffix) as! Actor?
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

		open var subscribable: Subscribable {
			return internalGetSubscribable()
		}

		func internalGetSubscribable(aliasSuffix: String? = nil) -> Subscribable {
			return field(field: "subscribable", aliasSuffix: aliasSuffix) as! Subscribable
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "actor":

				return .object

				case "createdAt":

				return .scalar

				case "id":

				return .scalar

				case "subscribable":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "actor":
				return internalGetActor()?.responseObject()

				case "subscribable":
				return internalGetSubscribable().responseObject()

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

					case "subscribable":
					response.append(internalGetSubscribable() as! GraphQL.AbstractResponse)
					response.append(contentsOf: internalGetSubscribable().childResponseObjectMap())

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
