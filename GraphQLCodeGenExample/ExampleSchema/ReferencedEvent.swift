// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ReferencedEventQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ReferencedEvent

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> ReferencedEventQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func commit(aliasSuffix: String? = nil, _ subfields: (CommitQuery) -> Void) -> ReferencedEventQuery {
			let subquery = CommitQuery()
			subfields(subquery)

			addField(field: "commit", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func commitRepository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> ReferencedEventQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "commitRepository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> ReferencedEventQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> ReferencedEventQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isCrossRepository(aliasSuffix: String? = nil) -> ReferencedEventQuery {
			addField(field: "isCrossRepository", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isDirectReference(aliasSuffix: String? = nil) -> ReferencedEventQuery {
			addField(field: "isDirectReference", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func subject(aliasSuffix: String? = nil, _ subfields: (ReferencedSubjectQuery) -> Void) -> ReferencedEventQuery {
			let subquery = ReferencedSubjectQuery()
			subfields(subquery)

			addField(field: "subject", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class ReferencedEvent: GraphQL.AbstractResponse, GraphQLObject, IssueTimelineItem, IssueTimelineItems, Node, PullRequestTimelineItem, PullRequestTimelineItems {
		public typealias Query = ReferencedEventQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ReferencedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "commit":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ReferencedEvent.self, field: fieldName, value: fieldValue)
				}
				return try Commit(fields: value)

				case "commitRepository":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ReferencedEvent.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReferencedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReferencedEvent.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "isCrossRepository":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: ReferencedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isDirectReference":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: ReferencedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "subject":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ReferencedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownReferencedSubject.create(fields: value)

				default:
				throw SchemaViolationError(type: ReferencedEvent.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ReferencedEvent" }

		open var actor: Actor? {
			return internalGetActor()
		}

		func internalGetActor(aliasSuffix: String? = nil) -> Actor? {
			return field(field: "actor", aliasSuffix: aliasSuffix) as! Actor?
		}

		open var commit: ExampleSchema.Commit? {
			return internalGetCommit()
		}

		func internalGetCommit(aliasSuffix: String? = nil) -> ExampleSchema.Commit? {
			return field(field: "commit", aliasSuffix: aliasSuffix) as! ExampleSchema.Commit?
		}

		open var commitRepository: ExampleSchema.Repository {
			return internalGetCommitRepository()
		}

		func internalGetCommitRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository {
			return field(field: "commitRepository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository
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

		open var isDirectReference: Bool {
			return internalGetIsDirectReference()
		}

		func internalGetIsDirectReference(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isDirectReference", aliasSuffix: aliasSuffix) as! Bool
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

				case "commit":

				return .object

				case "commitRepository":

				return .object

				case "createdAt":

				return .scalar

				case "id":

				return .scalar

				case "isCrossRepository":

				return .scalar

				case "isDirectReference":

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

				case "commit":
				return internalGetCommit()

				case "commitRepository":
				return internalGetCommitRepository()

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

					case "commit":
					if let value = internalGetCommit() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "commitRepository":
					response.append(internalGetCommitRepository())
					response.append(contentsOf: internalGetCommitRepository().childResponseObjectMap())

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
