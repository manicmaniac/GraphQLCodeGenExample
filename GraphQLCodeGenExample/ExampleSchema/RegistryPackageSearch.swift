// Generated from graphql_swift_gen gem
import Foundation

public protocol RegistryPackageSearch {
	var typeName: String { get }

	var id: GraphQL.ID { get }

	@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageSearch` object instead. Removal on 2020-04-01 UTC.")
	var registryPackagesForQuery: ExampleSchema.RegistryPackageConnection { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class RegistryPackageSearchQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RegistryPackageSearch

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> RegistryPackageSearchQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageSearch` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func registryPackagesForQuery(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, query: String? = nil, packageType: RegistryPackageType? = nil, _ subfields: (RegistryPackageConnectionQuery) -> Void) -> RegistryPackageSearchQuery {
			var args: [String] = []

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

			if let query = query {
				args.append("query:\(GraphQL.quoteString(input: query))")
			}

			if let packageType = packageType {
				args.append("packageType:\(packageType.rawValue)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = RegistryPackageConnectionQuery()
			subfields(subquery)

			addField(field: "registryPackagesForQuery", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onOrganization(subfields: (OrganizationQuery) -> Void) -> RegistryPackageSearchQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)
			addInlineFragment(on: "Organization", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepository(subfields: (RepositoryQuery) -> Void) -> RegistryPackageSearchQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)
			addInlineFragment(on: "Repository", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUser(subfields: (UserQuery) -> Void) -> RegistryPackageSearchQuery {
			let subquery = UserQuery()
			subfields(subquery)
			addInlineFragment(on: "User", subfields: subquery)
			return self
		}
	}

	open class UnknownRegistryPackageSearch: GraphQL.AbstractResponse, GraphQLObject, RegistryPackageSearch {
		public typealias Query = RegistryPackageSearchQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRegistryPackageSearch.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "registryPackagesForQuery":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownRegistryPackageSearch.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageConnection(fields: value)

				default:
				throw SchemaViolationError(type: UnknownRegistryPackageSearch.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> RegistryPackageSearch {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownRegistryPackageSearch.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Organization":
				return try Organization.init(fields: fields)

				case "Repository":
				return try Repository.init(fields: fields)

				case "User":
				return try User.init(fields: fields)

				default:
				return try UnknownRegistryPackageSearch.init(fields: fields)
			}
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageSearch` object instead. Removal on 2020-04-01 UTC.")
		open var registryPackagesForQuery: ExampleSchema.RegistryPackageConnection {
			return internalGetRegistryPackagesForQuery()
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageSearch` object instead. Removal on 2020-04-01 UTC.")
		open func aliasedRegistryPackagesForQuery(aliasSuffix: String) -> ExampleSchema.RegistryPackageConnection {
			return internalGetRegistryPackagesForQuery(aliasSuffix: aliasSuffix)
		}

		func internalGetRegistryPackagesForQuery(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageConnection {
			return field(field: "registryPackagesForQuery", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageConnection
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "id":

				return .scalar

				case "registryPackagesForQuery":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "registryPackagesForQuery":
				return internalGetRegistryPackagesForQuery()

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
					case "registryPackagesForQuery":
					response.append(internalGetRegistryPackagesForQuery())
					response.append(contentsOf: internalGetRegistryPackagesForQuery().childResponseObjectMap())

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
