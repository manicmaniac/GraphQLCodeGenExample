// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class PublicKeyQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = PublicKey

		@discardableResult
		open func accessedAt(aliasSuffix: String? = nil) -> PublicKeyQuery {
			addField(field: "accessedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> PublicKeyQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func fingerprint(aliasSuffix: String? = nil) -> PublicKeyQuery {
			addField(field: "fingerprint", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> PublicKeyQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isReadOnly(aliasSuffix: String? = nil) -> PublicKeyQuery {
			addField(field: "isReadOnly", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func key(aliasSuffix: String? = nil) -> PublicKeyQuery {
			addField(field: "key", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> PublicKeyQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class PublicKey: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = PublicKeyQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "accessedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PublicKey.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PublicKey.self, field: fieldName, value: fieldValue)
				}
				return value

				case "fingerprint":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PublicKey.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PublicKey.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "isReadOnly":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PublicKey.self, field: fieldName, value: fieldValue)
				}
				return value

				case "key":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PublicKey.self, field: fieldName, value: fieldValue)
				}
				return value

				case "updatedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PublicKey.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: PublicKey.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "PublicKey" }

		open var accessedAt: String? {
			return internalGetAccessedAt()
		}

		func internalGetAccessedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "accessedAt", aliasSuffix: aliasSuffix) as! String?
		}

		open var createdAt: String? {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String?
		}

		open var fingerprint: String {
			return internalGetFingerprint()
		}

		func internalGetFingerprint(aliasSuffix: String? = nil) -> String {
			return field(field: "fingerprint", aliasSuffix: aliasSuffix) as! String
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var isReadOnly: Bool? {
			return internalGetIsReadOnly()
		}

		func internalGetIsReadOnly(aliasSuffix: String? = nil) -> Bool? {
			return field(field: "isReadOnly", aliasSuffix: aliasSuffix) as! Bool?
		}

		open var key: String {
			return internalGetKey()
		}

		func internalGetKey(aliasSuffix: String? = nil) -> String {
			return field(field: "key", aliasSuffix: aliasSuffix) as! String
		}

		open var updatedAt: String? {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "accessedAt":

				return .scalar

				case "createdAt":

				return .scalar

				case "fingerprint":

				return .scalar

				case "id":

				return .scalar

				case "isReadOnly":

				return .scalar

				case "key":

				return .scalar

				case "updatedAt":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
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
			return []
		}

		open func responseObject() -> GraphQL.AbstractResponse {
			return self as GraphQL.AbstractResponse
		}
	}
}
