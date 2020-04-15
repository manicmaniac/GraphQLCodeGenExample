// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CrossReferencedEventQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = CrossReferencedEvent

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> CrossReferencedEventQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> CrossReferencedEventQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> CrossReferencedEventQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isCrossRepository(aliasSuffix: String? = nil) -> CrossReferencedEventQuery {
			addField(field: "isCrossRepository", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func referencedAt(aliasSuffix: String? = nil) -> CrossReferencedEventQuery {
			addField(field: "referencedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> CrossReferencedEventQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func source(aliasSuffix: String? = nil, _ subfields: (ReferencedSubjectQuery) -> Void) -> CrossReferencedEventQuery {
			let subquery = ReferencedSubjectQuery()
			subfields(subquery)

			addField(field: "source", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func target(aliasSuffix: String? = nil, _ subfields: (ReferencedSubjectQuery) -> Void) -> CrossReferencedEventQuery {
			let subquery = ReferencedSubjectQuery()
			subfields(subquery)

			addField(field: "target", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> CrossReferencedEventQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func willCloseTarget(aliasSuffix: String? = nil) -> CrossReferencedEventQuery {
			addField(field: "willCloseTarget", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class CrossReferencedEvent: GraphQL.AbstractResponse, GraphQLObject, IssueTimelineItem, IssueTimelineItems, Node, PullRequestTimelineItem, PullRequestTimelineItems, UniformResourceLocatable {
		public typealias Query = CrossReferencedEventQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: CrossReferencedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: CrossReferencedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: CrossReferencedEvent.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "isCrossRepository":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: CrossReferencedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "referencedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: CrossReferencedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: CrossReferencedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "source":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: CrossReferencedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownReferencedSubject.create(fields: value)

				case "target":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: CrossReferencedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownReferencedSubject.create(fields: value)

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: CrossReferencedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "willCloseTarget":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: CrossReferencedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: CrossReferencedEvent.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "CrossReferencedEvent" }

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

		open var referencedAt: String {
			return internalGetReferencedAt()
		}

		func internalGetReferencedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "referencedAt", aliasSuffix: aliasSuffix) as! String
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var source: ReferencedSubject {
			return internalGetSource()
		}

		func internalGetSource(aliasSuffix: String? = nil) -> ReferencedSubject {
			return field(field: "source", aliasSuffix: aliasSuffix) as! ReferencedSubject
		}

		open var target: ReferencedSubject {
			return internalGetTarget()
		}

		func internalGetTarget(aliasSuffix: String? = nil) -> ReferencedSubject {
			return field(field: "target", aliasSuffix: aliasSuffix) as! ReferencedSubject
		}

		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		open var willCloseTarget: Bool {
			return internalGetWillCloseTarget()
		}

		func internalGetWillCloseTarget(aliasSuffix: String? = nil) -> Bool {
			return field(field: "willCloseTarget", aliasSuffix: aliasSuffix) as! Bool
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

				case "referencedAt":

				return .scalar

				case "resourcePath":

				return .scalar

				case "source":

				return .scalar

				case "target":

				return .scalar

				case "url":

				return .scalar

				case "willCloseTarget":

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

					case "target":
					response.append(internalGetTarget() as! GraphQL.AbstractResponse)
					response.append(contentsOf: internalGetTarget().childResponseObjectMap())

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
