// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RepositoryInvitationQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RepositoryInvitation

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> RepositoryInvitationQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func invitee(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> RepositoryInvitationQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "invitee", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func inviter(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> RepositoryInvitationQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "inviter", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func permission(aliasSuffix: String? = nil) -> RepositoryInvitationQuery {
			addField(field: "permission", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryInfoQuery) -> Void) -> RepositoryInvitationQuery {
			let subquery = RepositoryInfoQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class RepositoryInvitation: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = RepositoryInvitationQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RepositoryInvitation.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "invitee":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RepositoryInvitation.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				case "inviter":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RepositoryInvitation.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				case "permission":
				guard let value = value as? String else {
					throw SchemaViolationError(type: RepositoryInvitation.self, field: fieldName, value: fieldValue)
				}
				return RepositoryPermission(rawValue: value) ?? .unknownValue

				case "repository":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RepositoryInvitation.self, field: fieldName, value: fieldValue)
				}
				return try UnknownRepositoryInfo.create(fields: value)

				default:
				throw SchemaViolationError(type: RepositoryInvitation.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "RepositoryInvitation" }

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var invitee: ExampleSchema.User {
			return internalGetInvitee()
		}

		func internalGetInvitee(aliasSuffix: String? = nil) -> ExampleSchema.User {
			return field(field: "invitee", aliasSuffix: aliasSuffix) as! ExampleSchema.User
		}

		open var inviter: ExampleSchema.User {
			return internalGetInviter()
		}

		func internalGetInviter(aliasSuffix: String? = nil) -> ExampleSchema.User {
			return field(field: "inviter", aliasSuffix: aliasSuffix) as! ExampleSchema.User
		}

		open var permission: ExampleSchema.RepositoryPermission {
			return internalGetPermission()
		}

		func internalGetPermission(aliasSuffix: String? = nil) -> ExampleSchema.RepositoryPermission {
			return field(field: "permission", aliasSuffix: aliasSuffix) as! ExampleSchema.RepositoryPermission
		}

		open var repository: RepositoryInfo? {
			return internalGetRepository()
		}

		func internalGetRepository(aliasSuffix: String? = nil) -> RepositoryInfo? {
			return field(field: "repository", aliasSuffix: aliasSuffix) as! RepositoryInfo?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "id":

				return .scalar

				case "invitee":

				return .object

				case "inviter":

				return .object

				case "permission":

				return .scalar

				case "repository":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "invitee":
				return internalGetInvitee()

				case "inviter":
				return internalGetInviter()

				case "repository":
				return internalGetRepository()?.responseObject()

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
					case "invitee":
					response.append(internalGetInvitee())
					response.append(contentsOf: internalGetInvitee().childResponseObjectMap())

					case "inviter":
					response.append(internalGetInviter())
					response.append(contentsOf: internalGetInviter().childResponseObjectMap())

					case "repository":
					if let value = internalGetRepository() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

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
