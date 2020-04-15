// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ContributionCalendarQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ContributionCalendar

		@discardableResult
		open func colors(aliasSuffix: String? = nil) -> ContributionCalendarQuery {
			addField(field: "colors", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isHalloween(aliasSuffix: String? = nil) -> ContributionCalendarQuery {
			addField(field: "isHalloween", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func months(aliasSuffix: String? = nil, _ subfields: (ContributionCalendarMonthQuery) -> Void) -> ContributionCalendarQuery {
			let subquery = ContributionCalendarMonthQuery()
			subfields(subquery)

			addField(field: "months", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func totalContributions(aliasSuffix: String? = nil) -> ContributionCalendarQuery {
			addField(field: "totalContributions", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func weeks(aliasSuffix: String? = nil, _ subfields: (ContributionCalendarWeekQuery) -> Void) -> ContributionCalendarQuery {
			let subquery = ContributionCalendarWeekQuery()
			subfields(subquery)

			addField(field: "weeks", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class ContributionCalendar: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = ContributionCalendarQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "colors":
				guard let value = value as? [String] else {
					throw SchemaViolationError(type: ContributionCalendar.self, field: fieldName, value: fieldValue)
				}
				return value.map { return $0 }

				case "isHalloween":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: ContributionCalendar.self, field: fieldName, value: fieldValue)
				}
				return value

				case "months":
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: ContributionCalendar.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try ContributionCalendarMonth(fields: $0) }

				case "totalContributions":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ContributionCalendar.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "weeks":
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: ContributionCalendar.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try ContributionCalendarWeek(fields: $0) }

				default:
				throw SchemaViolationError(type: ContributionCalendar.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ContributionCalendar" }

		open var colors: [String] {
			return internalGetColors()
		}

		func internalGetColors(aliasSuffix: String? = nil) -> [String] {
			return field(field: "colors", aliasSuffix: aliasSuffix) as! [String]
		}

		open var isHalloween: Bool {
			return internalGetIsHalloween()
		}

		func internalGetIsHalloween(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isHalloween", aliasSuffix: aliasSuffix) as! Bool
		}

		open var months: [ExampleSchema.ContributionCalendarMonth] {
			return internalGetMonths()
		}

		func internalGetMonths(aliasSuffix: String? = nil) -> [ExampleSchema.ContributionCalendarMonth] {
			return field(field: "months", aliasSuffix: aliasSuffix) as! [ExampleSchema.ContributionCalendarMonth]
		}

		open var totalContributions: Int32 {
			return internalGetTotalContributions()
		}

		func internalGetTotalContributions(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "totalContributions", aliasSuffix: aliasSuffix) as! Int32
		}

		open var weeks: [ExampleSchema.ContributionCalendarWeek] {
			return internalGetWeeks()
		}

		func internalGetWeeks(aliasSuffix: String? = nil) -> [ExampleSchema.ContributionCalendarWeek] {
			return field(field: "weeks", aliasSuffix: aliasSuffix) as! [ExampleSchema.ContributionCalendarWeek]
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "colors":

				return .scalarList

				case "isHalloween":

				return .scalar

				case "months":

				return .objectList

				case "totalContributions":

				return .scalar

				case "weeks":

				return .objectList

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
				case "months":
				return internalGetMonths()

				case "weeks":
				return internalGetWeeks()

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
