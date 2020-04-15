// Generated from graphql_swift_gen gem
import Foundation

public protocol RegistryPackageOwner {
	var typeName: String { get }

	var id: GraphQL.ID { get }

	@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageOwner` object instead. Removal on 2020-04-01 UTC.")
	var registryPackages: ExampleSchema.RegistryPackageConnection { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class RegistryPackageOwnerQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RegistryPackageOwner

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> RegistryPackageOwnerQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageOwner` object instead. Removal on 2020-04-01 UTC.")
		@discardableResult
		open func registryPackages(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, name: String? = nil, names: [String]? = nil, repositoryId: GraphQL.ID? = nil, packageType: RegistryPackageType? = nil, registryPackageType: String? = nil, publicOnly: Bool? = nil, _ subfields: (RegistryPackageConnectionQuery) -> Void) -> RegistryPackageOwnerQuery {
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

			if let name = name {
				args.append("name:\(GraphQL.quoteString(input: name))")
			}

			if let names = names {
				args.append("names:[\(names.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let repositoryId = repositoryId {
				args.append("repositoryId:\(GraphQL.quoteString(input: "\(repositoryId.rawValue)"))")
			}

			if let packageType = packageType {
				args.append("packageType:\(packageType.rawValue)")
			}

			if let registryPackageType = registryPackageType {
				args.append("registryPackageType:\(GraphQL.quoteString(input: registryPackageType))")
			}

			if let publicOnly = publicOnly {
				args.append("publicOnly:\(publicOnly)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = RegistryPackageConnectionQuery()
			subfields(subquery)

			addField(field: "registryPackages", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onOrganization(subfields: (OrganizationQuery) -> Void) -> RegistryPackageOwnerQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)
			addInlineFragment(on: "Organization", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepository(subfields: (RepositoryQuery) -> Void) -> RegistryPackageOwnerQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)
			addInlineFragment(on: "Repository", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUser(subfields: (UserQuery) -> Void) -> RegistryPackageOwnerQuery {
			let subquery = UserQuery()
			subfields(subquery)
			addInlineFragment(on: "User", subfields: subquery)
			return self
		}
	}

	open class UnknownRegistryPackageOwner: GraphQL.AbstractResponse, GraphQLObject, RegistryPackageOwner {
		public typealias Query = RegistryPackageOwnerQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRegistryPackageOwner.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "registryPackages":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownRegistryPackageOwner.self, field: fieldName, value: fieldValue)
				}
				return try RegistryPackageConnection(fields: value)

				default:
				throw SchemaViolationError(type: UnknownRegistryPackageOwner.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> RegistryPackageOwner {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownRegistryPackageOwner.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Organization":
				return try Organization.init(fields: fields)

				case "Repository":
				return try Repository.init(fields: fields)

				case "User":
				return try User.init(fields: fields)

				default:
				return try UnknownRegistryPackageOwner.init(fields: fields)
			}
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageOwner` object instead. Removal on 2020-04-01 UTC.")
		open var registryPackages: ExampleSchema.RegistryPackageConnection {
			return internalGetRegistryPackages()
		}

		@available(*, deprecated, message:"Renaming GitHub Packages fields and objects. Use the `PackageOwner` object instead. Removal on 2020-04-01 UTC.")
		open func aliasedRegistryPackages(aliasSuffix: String) -> ExampleSchema.RegistryPackageConnection {
			return internalGetRegistryPackages(aliasSuffix: aliasSuffix)
		}

		func internalGetRegistryPackages(aliasSuffix: String? = nil) -> ExampleSchema.RegistryPackageConnection {
			return field(field: "registryPackages", aliasSuffix: aliasSuffix) as! ExampleSchema.RegistryPackageConnection
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "id":

				return .scalar

				case "registryPackages":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "registryPackages":
				return internalGetRegistryPackages()

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
					case "registryPackages":
					response.append(internalGetRegistryPackages())
					response.append(contentsOf: internalGetRegistryPackages().childResponseObjectMap())

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
