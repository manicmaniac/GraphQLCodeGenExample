// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class SecurityAdvisoryReferenceQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SecurityAdvisoryReference

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> SecurityAdvisoryReferenceQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class SecurityAdvisoryReference: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = SecurityAdvisoryReferenceQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SecurityAdvisoryReference.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: SecurityAdvisoryReference.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "SecurityAdvisoryReference" }

		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "url":

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
