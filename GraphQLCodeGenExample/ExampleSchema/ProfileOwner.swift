// Generated from graphql_swift_gen gem
import Foundation

public protocol ProfileOwner {
	var typeName: String { get }

	var anyPinnableItems: Bool { get }

	var email: String? { get }

	var id: GraphQL.ID { get }

	var itemShowcase: ExampleSchema.ProfileItemShowcase { get }

	var location: String? { get }

	var login: String { get }

	var name: String? { get }

	var pinnableItems: ExampleSchema.PinnableItemConnection { get }

	var pinnedItems: ExampleSchema.PinnableItemConnection { get }

	var pinnedItemsRemaining: Int32 { get }

	var viewerCanChangePinnedItems: Bool { get }

	var websiteUrl: String? { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class ProfileOwnerQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ProfileOwner

		@discardableResult
		open func anyPinnableItems(aliasSuffix: String? = nil, type: PinnableItemType? = nil) -> ProfileOwnerQuery {
			var args: [String] = []

			if let type = type {
				args.append("type:\(type.rawValue)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "anyPinnableItems", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func email(aliasSuffix: String? = nil) -> ProfileOwnerQuery {
			addField(field: "email", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> ProfileOwnerQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func itemShowcase(aliasSuffix: String? = nil, _ subfields: (ProfileItemShowcaseQuery) -> Void) -> ProfileOwnerQuery {
			let subquery = ProfileItemShowcaseQuery()
			subfields(subquery)

			addField(field: "itemShowcase", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func location(aliasSuffix: String? = nil) -> ProfileOwnerQuery {
			addField(field: "location", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func login(aliasSuffix: String? = nil) -> ProfileOwnerQuery {
			addField(field: "login", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> ProfileOwnerQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pinnableItems(aliasSuffix: String? = nil, types: [PinnableItemType]? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (PinnableItemConnectionQuery) -> Void) -> ProfileOwnerQuery {
			var args: [String] = []

			if let types = types {
				args.append("types:[\(types.map{ "\($0.rawValue)" }.joined(separator: ","))]")
			}

			if let after = after {
				args.append("after:\(GraphQL.quoteString(input: after))")
			}

			if let before = before {
				args.append("before:\(GraphQL.quoteString(input: before))")
			}

			if let first = first {
				args.append("first:\(first)")
			}

			if let last = last {
				args.append("last:\(last)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = PinnableItemConnectionQuery()
			subfields(subquery)

			addField(field: "pinnableItems", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func pinnedItems(aliasSuffix: String? = nil, types: [PinnableItemType]? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (PinnableItemConnectionQuery) -> Void) -> ProfileOwnerQuery {
			var args: [String] = []

			if let types = types {
				args.append("types:[\(types.map{ "\($0.rawValue)" }.joined(separator: ","))]")
			}

			if let after = after {
				args.append("after:\(GraphQL.quoteString(input: after))")
			}

			if let before = before {
				args.append("before:\(GraphQL.quoteString(input: before))")
			}

			if let first = first {
				args.append("first:\(first)")
			}

			if let last = last {
				args.append("last:\(last)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = PinnableItemConnectionQuery()
			subfields(subquery)

			addField(field: "pinnedItems", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func pinnedItemsRemaining(aliasSuffix: String? = nil) -> ProfileOwnerQuery {
			addField(field: "pinnedItemsRemaining", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanChangePinnedItems(aliasSuffix: String? = nil) -> ProfileOwnerQuery {
			addField(field: "viewerCanChangePinnedItems", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func websiteUrl(aliasSuffix: String? = nil) -> ProfileOwnerQuery {
			addField(field: "websiteUrl", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onOrganization(subfields: (OrganizationQuery) -> Void) -> ProfileOwnerQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)
			addInlineFragment(on: "Organization", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUser(subfields: (UserQuery) -> Void) -> ProfileOwnerQuery {
			let subquery = UserQuery()
			subfields(subquery)
			addInlineFragment(on: "User", subfields: subquery)
			return self
		}
	}

	open class UnknownProfileOwner: GraphQL.AbstractResponse, GraphQLObject, ProfileOwner {
		public typealias Query = ProfileOwnerQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "anyPinnableItems":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownProfileOwner.self, field: fieldName, value: fieldValue)
				}
				return value

				case "email":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownProfileOwner.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownProfileOwner.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "itemShowcase":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownProfileOwner.self, field: fieldName, value: fieldValue)
				}
				return try ProfileItemShowcase(fields: value)

				case "location":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownProfileOwner.self, field: fieldName, value: fieldValue)
				}
				return value

				case "login":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownProfileOwner.self, field: fieldName, value: fieldValue)
				}
				return value

				case "name":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownProfileOwner.self, field: fieldName, value: fieldValue)
				}
				return value

				case "pinnableItems":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownProfileOwner.self, field: fieldName, value: fieldValue)
				}
				return try PinnableItemConnection(fields: value)

				case "pinnedItems":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownProfileOwner.self, field: fieldName, value: fieldValue)
				}
				return try PinnableItemConnection(fields: value)

				case "pinnedItemsRemaining":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: UnknownProfileOwner.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "viewerCanChangePinnedItems":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownProfileOwner.self, field: fieldName, value: fieldValue)
				}
				return value

				case "websiteUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownProfileOwner.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownProfileOwner.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> ProfileOwner {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownProfileOwner.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Organization":
				return try Organization.init(fields: fields)

				case "User":
				return try User.init(fields: fields)

				default:
				return try UnknownProfileOwner.init(fields: fields)
			}
		}

		open var anyPinnableItems: Bool {
			return internalGetAnyPinnableItems()
		}

		open func aliasedAnyPinnableItems(aliasSuffix: String) -> Bool {
			return internalGetAnyPinnableItems(aliasSuffix: aliasSuffix)
		}

		func internalGetAnyPinnableItems(aliasSuffix: String? = nil) -> Bool {
			return field(field: "anyPinnableItems", aliasSuffix: aliasSuffix) as! Bool
		}

		open var email: String? {
			return internalGetEmail()
		}

		func internalGetEmail(aliasSuffix: String? = nil) -> String? {
			return field(field: "email", aliasSuffix: aliasSuffix) as! String?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var itemShowcase: ExampleSchema.ProfileItemShowcase {
			return internalGetItemShowcase()
		}

		func internalGetItemShowcase(aliasSuffix: String? = nil) -> ExampleSchema.ProfileItemShowcase {
			return field(field: "itemShowcase", aliasSuffix: aliasSuffix) as! ExampleSchema.ProfileItemShowcase
		}

		open var location: String? {
			return internalGetLocation()
		}

		func internalGetLocation(aliasSuffix: String? = nil) -> String? {
			return field(field: "location", aliasSuffix: aliasSuffix) as! String?
		}

		open var login: String {
			return internalGetLogin()
		}

		func internalGetLogin(aliasSuffix: String? = nil) -> String {
			return field(field: "login", aliasSuffix: aliasSuffix) as! String
		}

		open var name: String? {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String? {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String?
		}

		open var pinnableItems: ExampleSchema.PinnableItemConnection {
			return internalGetPinnableItems()
		}

		open func aliasedPinnableItems(aliasSuffix: String) -> ExampleSchema.PinnableItemConnection {
			return internalGetPinnableItems(aliasSuffix: aliasSuffix)
		}

		func internalGetPinnableItems(aliasSuffix: String? = nil) -> ExampleSchema.PinnableItemConnection {
			return field(field: "pinnableItems", aliasSuffix: aliasSuffix) as! ExampleSchema.PinnableItemConnection
		}

		open var pinnedItems: ExampleSchema.PinnableItemConnection {
			return internalGetPinnedItems()
		}

		open func aliasedPinnedItems(aliasSuffix: String) -> ExampleSchema.PinnableItemConnection {
			return internalGetPinnedItems(aliasSuffix: aliasSuffix)
		}

		func internalGetPinnedItems(aliasSuffix: String? = nil) -> ExampleSchema.PinnableItemConnection {
			return field(field: "pinnedItems", aliasSuffix: aliasSuffix) as! ExampleSchema.PinnableItemConnection
		}

		open var pinnedItemsRemaining: Int32 {
			return internalGetPinnedItemsRemaining()
		}

		func internalGetPinnedItemsRemaining(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "pinnedItemsRemaining", aliasSuffix: aliasSuffix) as! Int32
		}

		open var viewerCanChangePinnedItems: Bool {
			return internalGetViewerCanChangePinnedItems()
		}

		func internalGetViewerCanChangePinnedItems(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanChangePinnedItems", aliasSuffix: aliasSuffix) as! Bool
		}

		open var websiteUrl: String? {
			return internalGetWebsiteUrl()
		}

		func internalGetWebsiteUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "websiteUrl", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "anyPinnableItems":

				return .scalar

				case "email":

				return .scalar

				case "id":

				return .scalar

				case "itemShowcase":

				return .object

				case "location":

				return .scalar

				case "login":

				return .scalar

				case "name":

				return .scalar

				case "pinnableItems":

				return .object

				case "pinnedItems":

				return .object

				case "pinnedItemsRemaining":

				return .scalar

				case "viewerCanChangePinnedItems":

				return .scalar

				case "websiteUrl":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "itemShowcase":
				return internalGetItemShowcase()

				case "pinnableItems":
				return internalGetPinnableItems()

				case "pinnedItems":
				return internalGetPinnedItems()

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
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "itemShowcase":
					response.append(internalGetItemShowcase())
					response.append(contentsOf: internalGetItemShowcase().childResponseObjectMap())

					case "pinnableItems":
					response.append(internalGetPinnableItems())
					response.append(contentsOf: internalGetPinnableItems().childResponseObjectMap())

					case "pinnedItems":
					response.append(internalGetPinnedItems())
					response.append(contentsOf: internalGetPinnedItems().childResponseObjectMap())

					default:
					break
				}
			})
			return response
		}

		open func responseObject() -> GraphQL.AbstractResponse {
			return self as GraphQL.AbstractResponse
		}
	}
}
