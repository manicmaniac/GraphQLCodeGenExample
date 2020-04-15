// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class DisconnectedEventQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = DisconnectedEvent

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> DisconnectedEventQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> DisconnectedEventQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> DisconnectedEventQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isCrossRepository(aliasSuffix: String? = nil) -> DisconnectedEventQuery {
			addField(field: "isCrossRepository", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func source(aliasSuffix: String? = nil, _ subfields: (ReferencedSubjectQuery) -> Void) -> DisconnectedEventQuery {
			let subquery = ReferencedSubjectQuery()
			subfields(subquery)

			addField(field: "source", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func subject(aliasSuffix: String? = nil, _ subfields: (ReferencedSubjectQuery) -> Void) -> DisconnectedEventQuery {
			let subquery = ReferencedSubjectQuery()
			subfields(subquery)

			addField(field: "subject", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class DisconnectedEvent: GraphQL.AbstractResponse, GraphQLObject, IssueTimelineItems, Node, PullRequestTimelineItems {
		public typealias Query = DisconnectedEventQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: DisconnectedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: DisconnectedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: DisconnectedEvent.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "isCrossRepository":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: DisconnectedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "source":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: DisconnectedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownReferencedSubject.create(fields: value)

				case "subject":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: DisconnectedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownReferencedSubject.create(fields: value)

				default:
				throw SchemaViolationError(type: DisconnectedEvent.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "DisconnectedEvent" }

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

		open var isCrossRepository: Bool {
			return internalGetIsCrossRepository()
		}

		func internalGetIsCrossRepository(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isCrossRepository", aliasSuffix: aliasSuffix) as! Bool
		}

		open var source: ReferencedSubject {
			return internalGetSource()
		}

		func internalGetSource(aliasSuffix: String? = nil) -> ReferencedSubject {
			return field(field: "source", aliasSuffix: aliasSuffix) as! ReferencedSubject
		}

		open var subject: ReferencedSubject {
			return internalGetSubject()
		}

		func internalGetSubject(aliasSuffix: String? = nil) -> ReferencedSubject {
			return field(field: "subject", aliasSuffix: aliasSuffix) as! ReferencedSubject
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "actor":

				return .object

				case "createdAt":

				return .scalar

				case "id":

				return .scalar

				case "isCrossRepository":

				return .scalar

				case "source":

				return .scalar

				case "subject":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "actor":
				return internalGetActor()?.responseObject()

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

					case "source":
					response.append(internalGetSource() as! GraphQL.AbstractResponse)
					response.append(contentsOf: internalGetSource().childResponseObjectMap())

					case "subject":
					response.append(internalGetSubject() as! GraphQL.AbstractResponse)
					response.append(contentsOf: internalGetSubject().childResponseObjectMap())

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
