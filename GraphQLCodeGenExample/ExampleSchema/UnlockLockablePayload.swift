// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UnlockLockablePayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UnlockLockablePayload

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> UnlockLockablePayloadQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> UnlockLockablePayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func unlockedRecord(aliasSuffix: String? = nil, _ subfields: (LockableQuery) -> Void) -> UnlockLockablePayloadQuery {
			let subquery = LockableQuery()
			subfields(subquery)

			addField(field: "unlockedRecord", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class UnlockLockablePayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = UnlockLockablePayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnlockLockablePayload.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnlockLockablePayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "unlockedRecord":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnlockLockablePayload.self, field: fieldName, value: fieldValue)
				}
				return try UnknownLockable.create(fields: value)

				default:
				throw SchemaViolationError(type: UnlockLockablePayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UnlockLockablePayload" }

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

		open var unlockedRecord: Lockable? {
			return internalGetUnlockedRecord()
		}

		func internalGetUnlockedRecord(aliasSuffix: String? = nil) -> Lockable? {
			return field(field: "unlockedRecord", aliasSuffix: aliasSuffix) as! Lockable?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "actor":

				return .object

				case "clientMutationId":

				return .scalar

				case "unlockedRecord":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "actor":
				return internalGetActor()?.responseObject()

				case "unlockedRecord":
				return internalGetUnlockedRecord()?.responseObject()

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

					case "unlockedRecord":
					if let value = internalGetUnlockedRecord() {
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
