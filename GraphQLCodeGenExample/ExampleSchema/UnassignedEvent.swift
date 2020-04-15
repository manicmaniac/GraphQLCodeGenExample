// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UnassignedEventQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UnassignedEvent

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> UnassignedEventQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func assignable(aliasSuffix: String? = nil, _ subfields: (AssignableQuery) -> Void) -> UnassignedEventQuery {
			let subquery = AssignableQuery()
			subfields(subquery)

			addField(field: "assignable", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func assignee(aliasSuffix: String? = nil, _ subfields: (AssigneeQuery) -> Void) -> UnassignedEventQuery {
			let subquery = AssigneeQuery()
			subfields(subquery)

			addField(field: "assignee", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> UnassignedEventQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> UnassignedEventQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Assignees can now be mannequins. Use the `assignee` field instead. Removal on 2020-01-01 UTC.")
		@discardableResult
		open func user(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> UnassignedEventQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class UnassignedEvent: GraphQL.AbstractResponse, GraphQLObject, IssueTimelineItem, IssueTimelineItems, Node, PullRequestTimelineItem, PullRequestTimelineItems {
		public typealias Query = UnassignedEventQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnassignedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "assignable":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnassignedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownAssignable.create(fields: value)

				case "assignee":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnassignedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownAssignee.create(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnassignedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnassignedEvent.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "user":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnassignedEvent.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				default:
				throw SchemaViolationError(type: UnassignedEvent.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UnassignedEvent" }

		open var actor: Actor? {
			return internalGetActor()
		}

		func internalGetActor(aliasSuffix: String? = nil) -> Actor? {
			return field(field: "actor", aliasSuffix: aliasSuffix) as! Actor?
		}

		open var assignable: Assignable {
			return internalGetAssignable()
		}

		func internalGetAssignable(aliasSuffix: String? = nil) -> Assignable {
			return field(field: "assignable", aliasSuffix: aliasSuffix) as! Assignable
		}

		open var assignee: Assignee? {
			return internalGetAssignee()
		}

		func internalGetAssignee(aliasSuffix: String? = nil) -> Assignee? {
			return field(field: "assignee", aliasSuffix: aliasSuffix) as! Assignee?
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

		@available(*, deprecated, message:"Assignees can now be mannequins. Use the `assignee` field instead. Removal on 2020-01-01 UTC.")
		open var user: ExampleSchema.User? {
			return internalGetUser()
		}

		func internalGetUser(aliasSuffix: String? = nil) -> ExampleSchema.User? {
			return field(field: "user", aliasSuffix: aliasSuffix) as! ExampleSchema.User?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "actor":

				return .object

				case "assignable":

				return .object

				case "assignee":

				return .scalar

				case "createdAt":

				return .scalar

				case "id":

				return .scalar

				case "user":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "actor":
				return internalGetActor()?.responseObject()

				case "assignable":
				return internalGetAssignable().responseObject()

				case "user":
				return internalGetUser()

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

					case "assignable":
					response.append(internalGetAssignable() as! GraphQL.AbstractResponse)
					response.append(contentsOf: internalGetAssignable().childResponseObjectMap())

					case "assignee":
					if let value = internalGetAssignee() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "user":
					if let value = internalGetUser() {
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
