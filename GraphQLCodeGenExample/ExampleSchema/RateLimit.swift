// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RateLimitQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RateLimit

		@discardableResult
		open func cost(aliasSuffix: String? = nil) -> RateLimitQuery {
			addField(field: "cost", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func limit(aliasSuffix: String? = nil) -> RateLimitQuery {
			addField(field: "limit", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func nodeCount(aliasSuffix: String? = nil) -> RateLimitQuery {
			addField(field: "nodeCount", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func remaining(aliasSuffix: String? = nil) -> RateLimitQuery {
			addField(field: "remaining", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func resetAt(aliasSuffix: String? = nil) -> RateLimitQuery {
			addField(field: "resetAt", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class RateLimit: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = RateLimitQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "cost":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: RateLimit.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "limit":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: RateLimit.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "nodeCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: RateLimit.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "remaining":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: RateLimit.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "resetAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RateLimit.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: RateLimit.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "RateLimit" }

		open var cost: Int32 {
			return internalGetCost()
		}

		func internalGetCost(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "cost", aliasSuffix: aliasSuffix) as! Int32
		}

		open var limit: Int32 {
			return internalGetLimit()
		}

		func internalGetLimit(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "limit", aliasSuffix: aliasSuffix) as! Int32
		}

		open var nodeCount: Int32 {
			return internalGetNodeCount()
		}

		func internalGetNodeCount(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "nodeCount", aliasSuffix: aliasSuffix) as! Int32
		}

		open var remaining: Int32 {
			return internalGetRemaining()
		}

		func internalGetRemaining(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "remaining", aliasSuffix: aliasSuffix) as! Int32
		}

		open var resetAt: String {
			return internalGetResetAt()
		}

		func internalGetResetAt(aliasSuffix: String? = nil) -> String {
			return field(field: "resetAt", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "cost":

				return .scalar

				case "limit":

				return .scalar

				case "nodeCount":

				return .scalar

				case "remaining":

				return .scalar

				case "resetAt":

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
