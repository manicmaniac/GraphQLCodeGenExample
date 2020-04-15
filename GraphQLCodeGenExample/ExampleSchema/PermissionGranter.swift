// Generated from graphql_swift_gen gem
import Foundation

public protocol PermissionGranter {
	var typeName: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class PermissionGranterQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = PermissionGranter

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onOrganization(subfields: (OrganizationQuery) -> Void) -> PermissionGranterQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)
			addInlineFragment(on: "Organization", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepository(subfields: (RepositoryQuery) -> Void) -> PermissionGranterQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)
			addInlineFragment(on: "Repository", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeam(subfields: (TeamQuery) -> Void) -> PermissionGranterQuery {
			let subquery = TeamQuery()
			subfields(subquery)
			addInlineFragment(on: "Team", subfields: subquery)
			return self
		}
	}

	open class UnknownPermissionGranter: GraphQL.AbstractResponse, GraphQLObject, PermissionGranter {
		public typealias Query = PermissionGranterQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				default:
				throw SchemaViolationError(type: UnknownPermissionGranter.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> PermissionGranter {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownPermissionGranter.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Organization":
				return try Organization.init(fields: fields)

				case "Repository":
				return try Repository.init(fields: fields)

				case "Team":
				return try Team.init(fields: fields)

				default:
				return try UnknownPermissionGranter.init(fields: fields)
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
