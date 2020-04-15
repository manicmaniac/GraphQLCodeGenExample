// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class LockedEventQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = LockedEvent

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> LockedEventQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> LockedEventQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> LockedEventQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func lockReason(aliasSuffix: String? = nil) -> LockedEventQuery {
			addField(field: "lockReason", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func lockable(aliasSuffix: String? = nil, _ subfields: (LockableQuery) -> Void) -> LockedEventQuery {
			let subquery = LockableQuery()
			subfields(subquery)

			addField(field: "lockable", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class LockedEvent: GraphQL.AbstractResponse, GraphQLObject, IssueTimelineItem, IssueTimelineItems, Node, PullRequestTimelineItem, PullRequestTimelineItems {
		public typealias Query = LockedEventQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: LockedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: LockedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: LockedEvent.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "lockReason":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: LockedEvent.self, field: fieldName, value: fieldValue)
				}
				return LockReason(rawValue: value) ?? .unknownValue

				case "lockable":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: LockedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownLockable.create(fields: value)

				default:
				throw SchemaViolationError(type: LockedEvent.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "LockedEvent" }

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

		open var lockReason: ExampleSchema.LockReason? {
			return internalGetLockReason()
		}

		func internalGetLockReason(aliasSuffix: String? = nil) -> ExampleSchema.LockReason? {
			return field(field: "lockReason", aliasSuffix: aliasSuffix) as! ExampleSchema.LockReason?
		}

		open var lockable: Lockable {
			return internalGetLockable()
		}

		func internalGetLockable(aliasSuffix: String? = nil) -> Lockable {
			return field(field: "lockable", aliasSuffix: aliasSuffix) as! Lockable
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "actor":

				return .object

				case "createdAt":

				return .scalar

				case "id":

				return .scalar

				case "lockReason":

				return .scalar

				case "lockable":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "actor":
				return internalGetActor()?.responseObject()

				case "lockable":
				return internalGetLockable().responseObject()

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

					case "lockable":
					response.append(internalGetLockable() as! GraphQL.AbstractResponse)
					response.append(contentsOf: internalGetLockable().childResponseObjectMap())

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
