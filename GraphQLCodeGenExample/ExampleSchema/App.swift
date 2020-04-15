// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class AppQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = App

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> AppQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> AppQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func description(aliasSuffix: String? = nil) -> AppQuery {
			addField(field: "description", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> AppQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func logoBackgroundColor(aliasSuffix: String? = nil) -> AppQuery {
			addField(field: "logoBackgroundColor", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func logoUrl(aliasSuffix: String? = nil, size: Int32? = nil) -> AppQuery {
			var args: [String] = []

			if let size = size {
				args.append("size:\(size)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "logoUrl", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> AppQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func slug(aliasSuffix: String? = nil) -> AppQuery {
			addField(field: "slug", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> AppQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> AppQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class App: GraphQL.AbstractResponse, GraphQLObject, Node, PushAllowanceActor, SearchResultItem {
		public typealias Query = AppQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: App.self, field: fieldName, value: fieldValue)
				}
				return value

				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: App.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "description":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: App.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: App.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "logoBackgroundColor":
				guard let value = value as? String else {
					throw SchemaViolationError(type: App.self, field: fieldName, value: fieldValue)
				}
				return value

				case "logoUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: App.self, field: fieldName, value: fieldValue)
				}
				return value

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: App.self, field: fieldName, value: fieldValue)
				}
				return value

				case "slug":
				guard let value = value as? String else {
					throw SchemaViolationError(type: App.self, field: fieldName, value: fieldValue)
				}
				return value

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: App.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: App.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: App.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "App" }

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var databaseId: Int32? {
			return internalGetDatabaseId()
		}

		func internalGetDatabaseId(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "databaseId", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var description: String? {
			return internalGetDescription()
		}

		func internalGetDescription(aliasSuffix: String? = nil) -> String? {
			return field(field: "description", aliasSuffix: aliasSuffix) as! String?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var logoBackgroundColor: String {
			return internalGetLogoBackgroundColor()
		}

		func internalGetLogoBackgroundColor(aliasSuffix: String? = nil) -> String {
			return field(field: "logoBackgroundColor", aliasSuffix: aliasSuffix) as! String
		}

		open var logoUrl: String {
			return internalGetLogoUrl()
		}

		open func aliasedLogoUrl(aliasSuffix: String) -> String {
			return internalGetLogoUrl(aliasSuffix: aliasSuffix)
		}

		func internalGetLogoUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "logoUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		open var slug: String {
			return internalGetSlug()
		}

		func internalGetSlug(aliasSuffix: String? = nil) -> String {
			return field(field: "slug", aliasSuffix: aliasSuffix) as! String
		}

		open var updatedAt: String {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String
		}

		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "createdAt":

				return .scalar

				case "databaseId":

				return .scalar

				case "description":

				return .scalar

				case "id":

				return .scalar

				case "logoBackgroundColor":

				return .scalar

				case "logoUrl":

				return .scalar

				case "name":

				return .scalar

				case "slug":

				return .scalar

				case "updatedAt":

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
