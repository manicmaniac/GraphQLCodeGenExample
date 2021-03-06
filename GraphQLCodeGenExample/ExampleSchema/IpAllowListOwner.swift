// Generated from graphql_swift_gen gem
import Foundation

public protocol IpAllowListOwner {
	var typeName: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class IpAllowListOwnerQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = IpAllowListOwner

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onEnterprise(subfields: (EnterpriseQuery) -> Void) -> IpAllowListOwnerQuery {
			let subquery = EnterpriseQuery()
			subfields(subquery)
			addInlineFragment(on: "Enterprise", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrganization(subfields: (OrganizationQuery) -> Void) -> IpAllowListOwnerQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)
			addInlineFragment(on: "Organization", subfields: subquery)
			return self
		}
	}

	open class UnknownIpAllowListOwner: GraphQL.AbstractResponse, GraphQLObject, IpAllowListOwner {
		public typealias Query = IpAllowListOwnerQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				default:
				throw SchemaViolationError(type: UnknownIpAllowListOwner.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> IpAllowListOwner {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownIpAllowListOwner.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Enterprise":
				return try Enterprise.init(fields: fields)

				case "Organization":
				return try Organization.init(fields: fields)

				default:
				return try UnknownIpAllowListOwner.init(fields: fields)
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
