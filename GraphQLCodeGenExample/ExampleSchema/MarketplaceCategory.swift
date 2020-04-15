// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class MarketplaceCategoryQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = MarketplaceCategory

		@discardableResult
		open func description(aliasSuffix: String? = nil) -> MarketplaceCategoryQuery {
			addField(field: "description", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func howItWorks(aliasSuffix: String? = nil) -> MarketplaceCategoryQuery {
			addField(field: "howItWorks", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> MarketplaceCategoryQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> MarketplaceCategoryQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func primaryListingCount(aliasSuffix: String? = nil) -> MarketplaceCategoryQuery {
			addField(field: "primaryListingCount", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> MarketplaceCategoryQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func secondaryListingCount(aliasSuffix: String? = nil) -> MarketplaceCategoryQuery {
			addField(field: "secondaryListingCount", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func slug(aliasSuffix: String? = nil) -> MarketplaceCategoryQuery {
			addField(field: "slug", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> MarketplaceCategoryQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class MarketplaceCategory: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = MarketplaceCategoryQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "description":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceCategory.self, field: fieldName, value: fieldValue)
				}
				return value

				case "howItWorks":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceCategory.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceCategory.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceCategory.self, field: fieldName, value: fieldValue)
				}
				return value

				case "primaryListingCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: MarketplaceCategory.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceCategory.self, field: fieldName, value: fieldValue)
				}
				return value

				case "secondaryListingCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: MarketplaceCategory.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "slug":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceCategory.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceCategory.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: MarketplaceCategory.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "MarketplaceCategory" }

		open var description: String? {
			return internalGetDescription()
		}

		func internalGetDescription(aliasSuffix: String? = nil) -> String? {
			return field(field: "description", aliasSuffix: aliasSuffix) as! String?
		}

		open var howItWorks: String? {
			return internalGetHowItWorks()
		}

		func internalGetHowItWorks(aliasSuffix: String? = nil) -> String? {
			return field(field: "howItWorks", aliasSuffix: aliasSuffix) as! String?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		open var primaryListingCount: Int32 {
			return internalGetPrimaryListingCount()
		}

		func internalGetPrimaryListingCount(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "primaryListingCount", aliasSuffix: aliasSuffix) as! Int32
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var secondaryListingCount: Int32 {
			return internalGetSecondaryListingCount()
		}

		func internalGetSecondaryListingCount(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "secondaryListingCount", aliasSuffix: aliasSuffix) as! Int32
		}

		open var slug: String {
			return internalGetSlug()
		}

		func internalGetSlug(aliasSuffix: String? = nil) -> String {
			return field(field: "slug", aliasSuffix: aliasSuffix) as! String
		}

		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "description":

				return .scalar

				case "howItWorks":

				return .scalar

				case "id":

				return .scalar

				case "name":

				return .scalar

				case "primaryListingCount":

				return .scalar

				case "resourcePath":

				return .scalar

				case "secondaryListingCount":

				return .scalar

				case "slug":

				return .scalar

				case "url":

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
