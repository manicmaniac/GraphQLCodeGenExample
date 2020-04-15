// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class PermissionSourceQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = PermissionSource

		@discardableResult
		open func organization(aliasSuffix: String? = nil, _ subfields: (OrganizationQuery) -> Void) -> PermissionSourceQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)

			addField(field: "organization", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func permission(aliasSuffix: String? = nil) -> PermissionSourceQuery {
			addField(field: "permission", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func source(aliasSuffix: String? = nil, _ subfields: (PermissionGranterQuery) -> Void) -> PermissionSourceQuery {
			let subquery = PermissionGranterQuery()
			subfields(subquery)

			addField(field: "source", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class PermissionSource: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = PermissionSourceQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "organization":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PermissionSource.self, field: fieldName, value: fieldValue)
				}
				return try Organization(fields: value)

				case "permission":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PermissionSource.self, field: fieldName, value: fieldValue)
				}
				return DefaultRepositoryPermissionField(rawValue: value) ?? .unknownValue

				case "source":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PermissionSource.self, field: fieldName, value: fieldValue)
				}
				return try UnknownPermissionGranter.create(fields: value)

				default:
				throw SchemaViolationError(type: PermissionSource.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "PermissionSource" }

		open var organization: ExampleSchema.Organization {
			return internalGetOrganization()
		}

		func internalGetOrganization(aliasSuffix: String? = nil) -> ExampleSchema.Organization {
			return field(field: "organization", aliasSuffix: aliasSuffix) as! ExampleSchema.Organization
		}

		open var permission: ExampleSchema.DefaultRepositoryPermissionField {
			return internalGetPermission()
		}

		func internalGetPermission(aliasSuffix: String? = nil) -> ExampleSchema.DefaultRepositoryPermissionField {
			return field(field: "permission", aliasSuffix: aliasSuffix) as! ExampleSchema.DefaultRepositoryPermissionField
		}

		open var source: PermissionGranter {
			return internalGetSource()
		}

		func internalGetSource(aliasSuffix: String? = nil) -> PermissionGranter {
			return field(field: "source", aliasSuffix: aliasSuffix) as! PermissionGranter
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "organization":

				return .object

				case "permission":

				return .scalar

				case "source":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "organization":
				return internalGetOrganization()

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
					case "organization":
					response.append(internalGetOrganization())
					response.append(contentsOf: internalGetOrganization().childResponseObjectMap())

					case "source":
					response.append(internalGetSource() as! GraphQL.AbstractResponse)
					response.append(contentsOf: internalGetSource().childResponseObjectMap())

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
