// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class DeployKeyQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = DeployKey

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> DeployKeyQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> DeployKeyQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func key(aliasSuffix: String? = nil) -> DeployKeyQuery {
			addField(field: "key", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func readOnly(aliasSuffix: String? = nil) -> DeployKeyQuery {
			addField(field: "readOnly", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func title(aliasSuffix: String? = nil) -> DeployKeyQuery {
			addField(field: "title", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func verified(aliasSuffix: String? = nil) -> DeployKeyQuery {
			addField(field: "verified", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class DeployKey: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = DeployKeyQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeployKey.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeployKey.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "key":
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeployKey.self, field: fieldName, value: fieldValue)
				}
				return value

				case "readOnly":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: DeployKey.self, field: fieldName, value: fieldValue)
				}
				return value

				case "title":
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeployKey.self, field: fieldName, value: fieldValue)
				}
				return value

				case "verified":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: DeployKey.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: DeployKey.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "DeployKey" }

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

		open var key: String {
			return internalGetKey()
		}

		func internalGetKey(aliasSuffix: String? = nil) -> String {
			return field(field: "key", aliasSuffix: aliasSuffix) as! String
		}

		open var readOnly: Bool {
			return internalGetReadOnly()
		}

		func internalGetReadOnly(aliasSuffix: String? = nil) -> Bool {
			return field(field: "readOnly", aliasSuffix: aliasSuffix) as! Bool
		}

		open var title: String {
			return internalGetTitle()
		}

		func internalGetTitle(aliasSuffix: String? = nil) -> String {
			return field(field: "title", aliasSuffix: aliasSuffix) as! String
		}

		open var verified: Bool {
			return internalGetVerified()
		}

		func internalGetVerified(aliasSuffix: String? = nil) -> Bool {
			return field(field: "verified", aliasSuffix: aliasSuffix) as! Bool
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "createdAt":

				return .scalar

				case "id":

				return .scalar

				case "key":

				return .scalar

				case "readOnly":

				return .scalar

				case "title":

				return .scalar

				case "verified":

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
