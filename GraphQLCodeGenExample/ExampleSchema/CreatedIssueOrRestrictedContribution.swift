// Generated from graphql_swift_gen gem
import Foundation

public protocol CreatedIssueOrRestrictedContribution {
	var typeName: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class CreatedIssueOrRestrictedContributionQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = CreatedIssueOrRestrictedContribution

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onCreatedIssueContribution(subfields: (CreatedIssueContributionQuery) -> Void) -> CreatedIssueOrRestrictedContributionQuery {
			let subquery = CreatedIssueContributionQuery()
			subfields(subquery)
			addInlineFragment(on: "CreatedIssueContribution", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRestrictedContribution(subfields: (RestrictedContributionQuery) -> Void) -> CreatedIssueOrRestrictedContributionQuery {
			let subquery = RestrictedContributionQuery()
			subfields(subquery)
			addInlineFragment(on: "RestrictedContribution", subfields: subquery)
			return self
		}
	}

	open class UnknownCreatedIssueOrRestrictedContribution: GraphQL.AbstractResponse, GraphQLObject, CreatedIssueOrRestrictedContribution {
		public typealias Query = CreatedIssueOrRestrictedContributionQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				default:
				throw SchemaViolationError(type: UnknownCreatedIssueOrRestrictedContribution.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> CreatedIssueOrRestrictedContribution {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownCreatedIssueOrRestrictedContribution.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "CreatedIssueContribution":
				return try CreatedIssueContribution.init(fields: fields)

				case "RestrictedContribution":
				return try RestrictedContribution.init(fields: fields)

				default:
				return try UnknownCreatedIssueOrRestrictedContribution.init(fields: fields)
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
