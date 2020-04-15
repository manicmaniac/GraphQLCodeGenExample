// Generated from graphql_swift_gen gem
import Foundation

public protocol SearchResultItem {
	var typeName: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class SearchResultItemQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SearchResultItem

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onApp(subfields: (AppQuery) -> Void) -> SearchResultItemQuery {
			let subquery = AppQuery()
			subfields(subquery)
			addInlineFragment(on: "App", subfields: subquery)
			return self
		}

		@discardableResult
		open func onIssue(subfields: (IssueQuery) -> Void) -> SearchResultItemQuery {
			let subquery = IssueQuery()
			subfields(subquery)
			addInlineFragment(on: "Issue", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMarketplaceListing(subfields: (MarketplaceListingQuery) -> Void) -> SearchResultItemQuery {
			let subquery = MarketplaceListingQuery()
			subfields(subquery)
			addInlineFragment(on: "MarketplaceListing", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrganization(subfields: (OrganizationQuery) -> Void) -> SearchResultItemQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)
			addInlineFragment(on: "Organization", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequest(subfields: (PullRequestQuery) -> Void) -> SearchResultItemQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequest", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepository(subfields: (RepositoryQuery) -> Void) -> SearchResultItemQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)
			addInlineFragment(on: "Repository", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUser(subfields: (UserQuery) -> Void) -> SearchResultItemQuery {
			let subquery = UserQuery()
			subfields(subquery)
			addInlineFragment(on: "User", subfields: subquery)
			return self
		}
	}

	open class UnknownSearchResultItem: GraphQL.AbstractResponse, GraphQLObject, SearchResultItem {
		public typealias Query = SearchResultItemQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				default:
				throw SchemaViolationError(type: UnknownSearchResultItem.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> SearchResultItem {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownSearchResultItem.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "App":
				return try App.init(fields: fields)

				case "Issue":
				return try Issue.init(fields: fields)

				case "MarketplaceListing":
				return try MarketplaceListing.init(fields: fields)

				case "Organization":
				return try Organization.init(fields: fields)

				case "PullRequest":
				return try PullRequest.init(fields: fields)

				case "Repository":
				return try Repository.init(fields: fields)

				case "User":
				return try User.init(fields: fields)

				default:
				return try UnknownSearchResultItem.init(fields: fields)
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
