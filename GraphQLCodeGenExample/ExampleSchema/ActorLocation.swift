// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ActorLocationQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ActorLocation

		@discardableResult
		open func city(aliasSuffix: String? = nil) -> ActorLocationQuery {
			addField(field: "city", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func country(aliasSuffix: String? = nil) -> ActorLocationQuery {
			addField(field: "country", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func countryCode(aliasSuffix: String? = nil) -> ActorLocationQuery {
			addField(field: "countryCode", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func region(aliasSuffix: String? = nil) -> ActorLocationQuery {
			addField(field: "region", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func regionCode(aliasSuffix: String? = nil) -> ActorLocationQuery {
			addField(field: "regionCode", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class ActorLocation: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = ActorLocationQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "city":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ActorLocation.self, field: fieldName, value: fieldValue)
				}
				return value

				case "country":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ActorLocation.self, field: fieldName, value: fieldValue)
				}
				return value

				case "countryCode":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ActorLocation.self, field: fieldName, value: fieldValue)
				}
				return value

				case "region":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ActorLocation.self, field: fieldName, value: fieldValue)
				}
				return value

				case "regionCode":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ActorLocation.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: ActorLocation.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ActorLocation" }

		open var city: String? {
			return internalGetCity()
		}

		func internalGetCity(aliasSuffix: String? = nil) -> String? {
			return field(field: "city", aliasSuffix: aliasSuffix) as! String?
		}

		open var country: String? {
			return internalGetCountry()
		}

		func internalGetCountry(aliasSuffix: String? = nil) -> String? {
			return field(field: "country", aliasSuffix: aliasSuffix) as! String?
		}

		open var countryCode: String? {
			return internalGetCountryCode()
		}

		func internalGetCountryCode(aliasSuffix: String? = nil) -> String? {
			return field(field: "countryCode", aliasSuffix: aliasSuffix) as! String?
		}

		open var region: String? {
			return internalGetRegion()
		}

		func internalGetRegion(aliasSuffix: String? = nil) -> String? {
			return field(field: "region", aliasSuffix: aliasSuffix) as! String?
		}

		open var regionCode: String? {
			return internalGetRegionCode()
		}

		func internalGetRegionCode(aliasSuffix: String? = nil) -> String? {
			return field(field: "regionCode", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "city":

				return .scalar

				case "country":

				return .scalar

				case "countryCode":

				return .scalar

				case "region":

				return .scalar

				case "regionCode":

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
