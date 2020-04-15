// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ExternalIdentityScimAttributesQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ExternalIdentityScimAttributes

		@discardableResult
		open func username(aliasSuffix: String? = nil) -> ExternalIdentityScimAttributesQuery {
			addField(field: "username", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class ExternalIdentityScimAttributes: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = ExternalIdentityScimAttributesQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "username":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ExternalIdentityScimAttributes.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: ExternalIdentityScimAttributes.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ExternalIdentityScimAttributes" }

		open var username: String? {
			return internalGetUsername()
		}

		func internalGetUsername(aliasSuffix: String? = nil) -> String? {
			return field(field: "username", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "username":

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
