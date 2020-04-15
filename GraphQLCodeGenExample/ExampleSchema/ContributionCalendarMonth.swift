// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ContributionCalendarMonthQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ContributionCalendarMonth

		@discardableResult
		open func firstDay(aliasSuffix: String? = nil) -> ContributionCalendarMonthQuery {
			addField(field: "firstDay", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> ContributionCalendarMonthQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func totalWeeks(aliasSuffix: String? = nil) -> ContributionCalendarMonthQuery {
			addField(field: "totalWeeks", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func year(aliasSuffix: String? = nil) -> ContributionCalendarMonthQuery {
			addField(field: "year", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class ContributionCalendarMonth: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = ContributionCalendarMonthQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "firstDay":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ContributionCalendarMonth.self, field: fieldName, value: fieldValue)
				}
				return value

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ContributionCalendarMonth.self, field: fieldName, value: fieldValue)
				}
				return value

				case "totalWeeks":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ContributionCalendarMonth.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "year":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ContributionCalendarMonth.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				default:
				throw SchemaViolationError(type: ContributionCalendarMonth.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ContributionCalendarMonth" }

		open var firstDay: String {
			return internalGetFirstDay()
		}

		func internalGetFirstDay(aliasSuffix: String? = nil) -> String {
			return field(field: "firstDay", aliasSuffix: aliasSuffix) as! String
		}

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		open var totalWeeks: Int32 {
			return internalGetTotalWeeks()
		}

		func internalGetTotalWeeks(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "totalWeeks", aliasSuffix: aliasSuffix) as! Int32
		}

		open var year: Int32 {
			return internalGetYear()
		}

		func internalGetYear(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "year", aliasSuffix: aliasSuffix) as! Int32
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "firstDay":

				return .scalar

				case "name":

				return .scalar

				case "totalWeeks":

				return .scalar

				case "year":

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
