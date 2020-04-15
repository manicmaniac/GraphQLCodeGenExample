// Generated from graphql_swift_gen gem
import Foundation

public protocol AuditEntryActor {
	var typeName: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class AuditEntryActorQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = AuditEntryActor

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onBot(subfields: (BotQuery) -> Void) -> AuditEntryActorQuery {
			let subquery = BotQuery()
			subfields(subquery)
			addInlineFragment(on: "Bot", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrganization(subfields: (OrganizationQuery) -> Void) -> AuditEntryActorQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)
			addInlineFragment(on: "Organization", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUser(subfields: (UserQuery) -> Void) -> AuditEntryActorQuery {
			let subquery = UserQuery()
			subfields(subquery)
			addInlineFragment(on: "User", subfields: subquery)
			return self
		}
	}

	open class UnknownAuditEntryActor: GraphQL.AbstractResponse, GraphQLObject, AuditEntryActor {
		public typealias Query = AuditEntryActorQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				default:
				throw SchemaViolationError(type: UnknownAuditEntryActor.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> AuditEntryActor {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownAuditEntryActor.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Bot":
				return try Bot.init(fields: fields)

				case "Organization":
				return try Organization.init(fields: fields)

				case "User":
				return try User.init(fields: fields)

				default:
				return try UnknownAuditEntryActor.init(fields: fields)
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
