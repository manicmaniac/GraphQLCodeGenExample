// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ContributionCalendarDayQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ContributionCalendarDay

		@discardableResult
		open func color(aliasSuffix: String? = nil) -> ContributionCalendarDayQuery {
			addField(field: "color", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func contributionCount(aliasSuffix: String? = nil) -> ContributionCalendarDayQuery {
			addField(field: "contributionCount", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func date(aliasSuffix: String? = nil) -> ContributionCalendarDayQuery {
			addField(field: "date", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func weekday(aliasSuffix: String? = nil) -> ContributionCalendarDayQuery {
			addField(field: "weekday", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class ContributionCalendarDay: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = ContributionCalendarDayQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "color":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ContributionCalendarDay.self, field: fieldName, value: fieldValue)
				}
				return value

				case "contributionCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ContributionCalendarDay.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "date":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ContributionCalendarDay.self, field: fieldName, value: fieldValue)
				}
				return value

				case "weekday":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ContributionCalendarDay.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				default:
				throw SchemaViolationError(type: ContributionCalendarDay.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ContributionCalendarDay" }

		open var color: String {
			return internalGetColor()
		}

		func internalGetColor(aliasSuffix: String? = nil) -> String {
			return field(field: "color", aliasSuffix: aliasSuffix) as! String
		}

		open var contributionCount: Int32 {
			return internalGetContributionCount()
		}

		func internalGetContributionCount(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "contributionCount", aliasSuffix: aliasSuffix) as! Int32
		}

		open var date: String {
			return internalGetDate()
		}

		func internalGetDate(aliasSuffix: String? = nil) -> String {
			return field(field: "date", aliasSuffix: aliasSuffix) as! String
		}

		open var weekday: Int32 {
			return internalGetWeekday()
		}

		func internalGetWeekday(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "weekday", aliasSuffix: aliasSuffix) as! Int32
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "color":

				return .scalar

				case "contributionCount":

				return .scalar

				case "date":

				return .scalar

				case "weekday":

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
