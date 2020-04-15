// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class HeadRefForcePushedEventQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = HeadRefForcePushedEvent

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> HeadRefForcePushedEventQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func afterCommit(aliasSuffix: String? = nil, _ subfields: (CommitQuery) -> Void) -> HeadRefForcePushedEventQuery {
			let subquery = CommitQuery()
			subfields(subquery)

			addField(field: "afterCommit", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func beforeCommit(aliasSuffix: String? = nil, _ subfields: (CommitQuery) -> Void) -> HeadRefForcePushedEventQuery {
			let subquery = CommitQuery()
			subfields(subquery)

			addField(field: "beforeCommit", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> HeadRefForcePushedEventQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> HeadRefForcePushedEventQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pullRequest(aliasSuffix: String? = nil, _ subfields: (PullRequestQuery) -> Void) -> HeadRefForcePushedEventQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)

			addField(field: "pullRequest", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func ref(aliasSuffix: String? = nil, _ subfields: (RefQuery) -> Void) -> HeadRefForcePushedEventQuery {
			let subquery = RefQuery()
			subfields(subquery)

			addField(field: "ref", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class HeadRefForcePushedEvent: GraphQL.AbstractResponse, GraphQLObject, Node, PullRequestTimelineItem, PullRequestTimelineItems {
		public typealias Query = HeadRefForcePushedEventQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: HeadRefForcePushedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "afterCommit":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: HeadRefForcePushedEvent.self, field: fieldName, value: fieldValue)
				}
				return try Commit(fields: value)

				case "beforeCommit":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: HeadRefForcePushedEvent.self, field: fieldName, value: fieldValue)
				}
				return try Commit(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: HeadRefForcePushedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: HeadRefForcePushedEvent.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "pullRequest":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: HeadRefForcePushedEvent.self, field: fieldName, value: fieldValue)
				}
				return try PullRequest(fields: value)

				case "ref":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: HeadRefForcePushedEvent.self, field: fieldName, value: fieldValue)
				}
				return try Ref(fields: value)

				default:
				throw SchemaViolationError(type: HeadRefForcePushedEvent.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "HeadRefForcePushedEvent" }

		open var actor: Actor? {
			return internalGetActor()
		}

		func internalGetActor(aliasSuffix: String? = nil) -> Actor? {
			return field(field: "actor", aliasSuffix: aliasSuffix) as! Actor?
		}

		open var afterCommit: ExampleSchema.Commit? {
			return internalGetAfterCommit()
		}

		func internalGetAfterCommit(aliasSuffix: String? = nil) -> ExampleSchema.Commit? {
			return field(field: "afterCommit", aliasSuffix: aliasSuffix) as! ExampleSchema.Commit?
		}

		open var beforeCommit: ExampleSchema.Commit? {
			return internalGetBeforeCommit()
		}

		func internalGetBeforeCommit(aliasSuffix: String? = nil) -> ExampleSchema.Commit? {
			return field(field: "beforeCommit", aliasSuffix: aliasSuffix) as! ExampleSchema.Commit?
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

		open var pullRequest: ExampleSchema.PullRequest {
			return internalGetPullRequest()
		}

		func internalGetPullRequest(aliasSuffix: String? = nil) -> ExampleSchema.PullRequest {
			return field(field: "pullRequest", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequest
		}

		open var ref: ExampleSchema.Ref? {
			return internalGetRef()
		}

		func internalGetRef(aliasSuffix: String? = nil) -> ExampleSchema.Ref? {
			return field(field: "ref", aliasSuffix: aliasSuffix) as! ExampleSchema.Ref?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "actor":

				return .object

				case "afterCommit":

				return .object

				case "beforeCommit":

				return .object

				case "createdAt":

				return .scalar

				case "id":

				return .scalar

				case "pullRequest":

				return .object

				case "ref":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "actor":
				return internalGetActor()?.responseObject()

				case "afterCommit":
				return internalGetAfterCommit()

				case "beforeCommit":
				return internalGetBeforeCommit()

				case "pullRequest":
				return internalGetPullRequest()

				case "ref":
				return internalGetRef()

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

					case "afterCommit":
					if let value = internalGetAfterCommit() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "beforeCommit":
					if let value = internalGetBeforeCommit() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "pullRequest":
					response.append(internalGetPullRequest())
					response.append(contentsOf: internalGetPullRequest().childResponseObjectMap())

					case "ref":
					if let value = internalGetRef() {
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
