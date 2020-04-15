// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RefQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Ref

		@discardableResult
		open func associatedPullRequests(aliasSuffix: String? = nil, states: [PullRequestState]? = nil, labels: [String]? = nil, headRefName: String? = nil, baseRefName: String? = nil, orderBy: IssueOrder? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (PullRequestConnectionQuery) -> Void) -> RefQuery {
			var args: [String] = []

			if let states = states {
				args.append("states:[\(states.map{ "\($0.rawValue)" }.joined(separator: ","))]")
			}

			if let labels = labels {
				args.append("labels:[\(labels.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let headRefName = headRefName {
				args.append("headRefName:\(GraphQL.quoteString(input: headRefName))")
			}

			if let baseRefName = baseRefName {
				args.append("baseRefName:\(GraphQL.quoteString(input: baseRefName))")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
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

			let subquery = PullRequestConnectionQuery()
			subfields(subquery)

			addField(field: "associatedPullRequests", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> RefQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> RefQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func `prefix`(aliasSuffix: String? = nil) -> RefQuery {
			addField(field: "prefix", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> RefQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func target(aliasSuffix: String? = nil, _ subfields: (GitObjectQuery) -> Void) -> RefQuery {
			let subquery = GitObjectQuery()
			subfields(subquery)

			addField(field: "target", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class Ref: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = RefQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "associatedPullRequests":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Ref.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestConnection(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Ref.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Ref.self, field: fieldName, value: fieldValue)
				}
				return value

				case "prefix":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Ref.self, field: fieldName, value: fieldValue)
				}
				return value

				case "repository":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Ref.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "target":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Ref.self, field: fieldName, value: fieldValue)
				}
				return try UnknownGitObject.create(fields: value)

				default:
				throw SchemaViolationError(type: Ref.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Ref" }

		open var associatedPullRequests: ExampleSchema.PullRequestConnection {
			return internalGetAssociatedPullRequests()
		}

		open func aliasedAssociatedPullRequests(aliasSuffix: String) -> ExampleSchema.PullRequestConnection {
			return internalGetAssociatedPullRequests(aliasSuffix: aliasSuffix)
		}

		func internalGetAssociatedPullRequests(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestConnection {
			return field(field: "associatedPullRequests", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestConnection
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

		open var `prefix`: String {
			return internalGetPrefix()
		}

		func internalGetPrefix(aliasSuffix: String? = nil) -> String {
			return field(field: "prefix", aliasSuffix: aliasSuffix) as! String
		}

		open var repository: ExampleSchema.Repository {
			return internalGetRepository()
		}

		func internalGetRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository {
			return field(field: "repository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository
		}

		open var target: GitObject {
			return internalGetTarget()
		}

		func internalGetTarget(aliasSuffix: String? = nil) -> GitObject {
			return field(field: "target", aliasSuffix: aliasSuffix) as! GitObject
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "associatedPullRequests":

				return .object

				case "id":

				return .scalar

				case "name":

				return .scalar

				case "prefix":

				return .scalar

				case "repository":

				return .object

				case "target":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "associatedPullRequests":
				return internalGetAssociatedPullRequests()

				case "repository":
				return internalGetRepository()

				case "target":
				return internalGetTarget().responseObject()

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
					case "associatedPullRequests":
					response.append(internalGetAssociatedPullRequests())
					response.append(contentsOf: internalGetAssociatedPullRequests().childResponseObjectMap())

					case "repository":
					response.append(internalGetRepository())
					response.append(contentsOf: internalGetRepository().childResponseObjectMap())

					case "target":
					response.append(internalGetTarget() as! GraphQL.AbstractResponse)
					response.append(contentsOf: internalGetTarget().childResponseObjectMap())

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
