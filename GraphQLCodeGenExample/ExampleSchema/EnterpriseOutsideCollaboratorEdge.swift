// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class EnterpriseOutsideCollaboratorEdgeQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EnterpriseOutsideCollaboratorEdge

		@discardableResult
		open func cursor(aliasSuffix: String? = nil) -> EnterpriseOutsideCollaboratorEdgeQuery {
			addField(field: "cursor", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isUnlicensed(aliasSuffix: String? = nil) -> EnterpriseOutsideCollaboratorEdgeQuery {
			addField(field: "isUnlicensed", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func node(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> EnterpriseOutsideCollaboratorEdgeQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "node", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func repositories(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: RepositoryOrder? = nil, _ subfields: (EnterpriseRepositoryInfoConnectionQuery) -> Void) -> EnterpriseOutsideCollaboratorEdgeQuery {
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

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = EnterpriseRepositoryInfoConnectionQuery()
			subfields(subquery)

			addField(field: "repositories", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}
	}

	open class EnterpriseOutsideCollaboratorEdge: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = EnterpriseOutsideCollaboratorEdgeQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "cursor":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseOutsideCollaboratorEdge.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isUnlicensed":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: EnterpriseOutsideCollaboratorEdge.self, field: fieldName, value: fieldValue)
				}
				return value

				case "node":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOutsideCollaboratorEdge.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				case "repositories":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseOutsideCollaboratorEdge.self, field: fieldName, value: fieldValue)
				}
				return try EnterpriseRepositoryInfoConnection(fields: value)

				default:
				throw SchemaViolationError(type: EnterpriseOutsideCollaboratorEdge.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EnterpriseOutsideCollaboratorEdge" }

		open var cursor: String {
			return internalGetCursor()
		}

		func internalGetCursor(aliasSuffix: String? = nil) -> String {
			return field(field: "cursor", aliasSuffix: aliasSuffix) as! String
		}

		open var isUnlicensed: Bool {
			return internalGetIsUnlicensed()
		}

		func internalGetIsUnlicensed(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isUnlicensed", aliasSuffix: aliasSuffix) as! Bool
		}

		open var node: ExampleSchema.User? {
			return internalGetNode()
		}

		func internalGetNode(aliasSuffix: String? = nil) -> ExampleSchema.User? {
			return field(field: "node", aliasSuffix: aliasSuffix) as! ExampleSchema.User?
		}

		open var repositories: ExampleSchema.EnterpriseRepositoryInfoConnection {
			return internalGetRepositories()
		}

		open func aliasedRepositories(aliasSuffix: String) -> ExampleSchema.EnterpriseRepositoryInfoConnection {
			return internalGetRepositories(aliasSuffix: aliasSuffix)
		}

		func internalGetRepositories(aliasSuffix: String? = nil) -> ExampleSchema.EnterpriseRepositoryInfoConnection {
			return field(field: "repositories", aliasSuffix: aliasSuffix) as! ExampleSchema.EnterpriseRepositoryInfoConnection
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "cursor":

				return .scalar

				case "isUnlicensed":

				return .scalar

				case "node":

				return .object

				case "repositories":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "node":
				return internalGetNode()

				case "repositories":
				return internalGetRepositories()

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
					case "node":
					if let value = internalGetNode() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "repositories":
					response.append(internalGetRepositories())
					response.append(contentsOf: internalGetRepositories().childResponseObjectMap())

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
