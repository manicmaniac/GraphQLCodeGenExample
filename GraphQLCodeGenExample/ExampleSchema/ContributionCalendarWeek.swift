// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ContributionCalendarWeekQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ContributionCalendarWeek

		@discardableResult
		open func contributionDays(aliasSuffix: String? = nil, _ subfields: (ContributionCalendarDayQuery) -> Void) -> ContributionCalendarWeekQuery {
			let subquery = ContributionCalendarDayQuery()
			subfields(subquery)

			addField(field: "contributionDays", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func firstDay(aliasSuffix: String? = nil) -> ContributionCalendarWeekQuery {
			addField(field: "firstDay", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class ContributionCalendarWeek: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = ContributionCalendarWeekQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contributionDays":
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: ContributionCalendarWeek.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try ContributionCalendarDay(fields: $0) }

				case "firstDay":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ContributionCalendarWeek.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: ContributionCalendarWeek.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ContributionCalendarWeek" }

		open var contributionDays: [ExampleSchema.ContributionCalendarDay] {
			return internalGetContributionDays()
		}

		func internalGetContributionDays(aliasSuffix: String? = nil) -> [ExampleSchema.ContributionCalendarDay] {
			return field(field: "contributionDays", aliasSuffix: aliasSuffix) as! [ExampleSchema.ContributionCalendarDay]
		}

		open var firstDay: String {
			return internalGetFirstDay()
		}

		func internalGetFirstDay(aliasSuffix: String? = nil) -> String {
			return field(field: "firstDay", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contributionDays":

				return .objectList

				case "firstDay":

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
				case "contributionDays":
				return internalGetContributionDays()

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
