// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class LockLockablePayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = LockLockablePayload

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> LockLockablePayloadQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> LockLockablePayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func lockedRecord(aliasSuffix: String? = nil, _ subfields: (LockableQuery) -> Void) -> LockLockablePayloadQuery {
			let subquery = LockableQuery()
			subfields(subquery)

			addField(field: "lockedRecord", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class LockLockablePayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = LockLockablePayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: LockLockablePayload.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: LockLockablePayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "lockedRecord":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: LockLockablePayload.self, field: fieldName, value: fieldValue)
				}
				return try UnknownLockable.create(fields: value)

				default:
				throw SchemaViolationError(type: LockLockablePayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "LockLockablePayload" }

		open var actor: Actor? {
			return internalGetActor()
		}

		func internalGetActor(aliasSuffix: String? = nil) -> Actor? {
			return field(field: "actor", aliasSuffix: aliasSuffix) as! Actor?
		}

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var lockedRecord: Lockable? {
			return internalGetLockedRecord()
		}

		func internalGetLockedRecord(aliasSuffix: String? = nil) -> Lockable? {
			return field(field: "lockedRecord", aliasSuffix: aliasSuffix) as! Lockable?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "actor":

				return .object

				case "clientMutationId":

				return .scalar

				case "lockedRecord":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "actor":
				return internalGetActor()?.responseObject()

				case "lockedRecord":
				return internalGetLockedRecord()?.responseObject()

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

					case "lockedRecord":
					if let value = internalGetLockedRecord() {
						response.append(value as! GraphQL.AbstractResponse)
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
