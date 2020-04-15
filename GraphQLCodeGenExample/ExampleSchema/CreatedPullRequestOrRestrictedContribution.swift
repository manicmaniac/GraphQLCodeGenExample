// Generated from graphql_swift_gen gem
import Foundation

public protocol CreatedPullRequestOrRestrictedContribution {
	var typeName: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class CreatedPullRequestOrRestrictedContributionQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = CreatedPullRequestOrRestrictedContribution

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onCreatedPullRequestContribution(subfields: (CreatedPullRequestContributionQuery) -> Void) -> CreatedPullRequestOrRestrictedContributionQuery {
			let subquery = CreatedPullRequestContributionQuery()
			subfields(subquery)
			addInlineFragment(on: "CreatedPullRequestContribution", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRestrictedContribution(subfields: (RestrictedContributionQuery) -> Void) -> CreatedPullRequestOrRestrictedContributionQuery {
			let subquery = RestrictedContributionQuery()
			subfields(subquery)
			addInlineFragment(on: "RestrictedContribution", subfields: subquery)
			return self
		}
	}

	open class UnknownCreatedPullRequestOrRestrictedContribution: GraphQL.AbstractResponse, GraphQLObject, CreatedPullRequestOrRestrictedContribution {
		public typealias Query = CreatedPullRequestOrRestrictedContributionQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				default:
				throw SchemaViolationError(type: UnknownCreatedPullRequestOrRestrictedContribution.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> CreatedPullRequestOrRestrictedContribution {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownCreatedPullRequestOrRestrictedContribution.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "CreatedPullRequestContribution":
				return try CreatedPullRequestContribution.init(fields: fields)

				case "RestrictedContribution":
				return try RestrictedContribution.init(fields: fields)

				default:
				return try UnknownCreatedPullRequestOrRestrictedContribution.init(fields: fields)
			}
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
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
