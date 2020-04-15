// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class IpAllowListEntryQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = IpAllowListEntry

		@discardableResult
		open func allowListValue(aliasSuffix: String? = nil) -> IpAllowListEntryQuery {
			addField(field: "allowListValue", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> IpAllowListEntryQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> IpAllowListEntryQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isActive(aliasSuffix: String? = nil) -> IpAllowListEntryQuery {
			addField(field: "isActive", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> IpAllowListEntryQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func owner(aliasSuffix: String? = nil, _ subfields: (IpAllowListOwnerQuery) -> Void) -> IpAllowListEntryQuery {
			let subquery = IpAllowListOwnerQuery()
			subfields(subquery)

			addField(field: "owner", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> IpAllowListEntryQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class IpAllowListEntry: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = IpAllowListEntryQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "allowListValue":
				guard let value = value as? String else {
					throw SchemaViolationError(type: IpAllowListEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: IpAllowListEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: IpAllowListEntry.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "isActive":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: IpAllowListEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "name":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: IpAllowListEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				case "owner":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: IpAllowListEntry.self, field: fieldName, value: fieldValue)
				}
				return try UnknownIpAllowListOwner.create(fields: value)

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: IpAllowListEntry.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: IpAllowListEntry.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "IpAllowListEntry" }

		open var allowListValue: String {
			return internalGetAllowListValue()
		}

		func internalGetAllowListValue(aliasSuffix: String? = nil) -> String {
			return field(field: "allowListValue", aliasSuffix: aliasSuffix) as! String
		}

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var isActive: Bool {
			return internalGetIsActive()
		}

		func internalGetIsActive(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isActive", aliasSuffix: aliasSuffix) as! Bool
		}

		open var name: String? {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String? {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String?
		}

		open var owner: IpAllowListOwner {
			return internalGetOwner()
		}

		func internalGetOwner(aliasSuffix: String? = nil) -> IpAllowListOwner {
			return field(field: "owner", aliasSuffix: aliasSuffix) as! IpAllowListOwner
		}

		open var updatedAt: String {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "allowListValue":

				return .scalar

				case "createdAt":

				return .scalar

				case "id":

				return .scalar

				case "isActive":

				return .scalar

				case "name":

				return .scalar

				case "owner":

				return .scalar

				case "updatedAt":

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
