// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class SecurityAdvisoryIdentifierQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SecurityAdvisoryIdentifier

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> SecurityAdvisoryIdentifierQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func value(aliasSuffix: String? = nil) -> SecurityAdvisoryIdentifierQuery {
			addField(field: "value", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class SecurityAdvisoryIdentifier: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = SecurityAdvisoryIdentifierQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SecurityAdvisoryIdentifier.self, field: fieldName, value: fieldValue)
				}
				return value

				case "value":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SecurityAdvisoryIdentifier.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: SecurityAdvisoryIdentifier.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "SecurityAdvisoryIdentifier" }

		open var type: String {
			return internalGetType()
		}

		func internalGetType(aliasSuffix: String? = nil) -> String {
			return field(field: "type", aliasSuffix: aliasSuffix) as! String
		}

		open var value: String {
			return internalGetValue()
		}

		func internalGetValue(aliasSuffix: String? = nil) -> String {
			return field(field: "value", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "type":

				return .scalar

				case "value":

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
