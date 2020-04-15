// Generated from graphql_swift_gen gem
import Foundation

public protocol Assignable {
	var typeName: String { get }

	var assignees: ExampleSchema.UserConnection { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class AssignableQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Assignable

		@discardableResult
		open func assignees(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (UserConnectionQuery) -> Void) -> AssignableQuery {
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

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = UserConnectionQuery()
			subfields(subquery)

			addField(field: "assignees", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onIssue(subfields: (IssueQuery) -> Void) -> AssignableQuery {
			let subquery = IssueQuery()
			subfields(subquery)
			addInlineFragment(on: "Issue", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequest(subfields: (PullRequestQuery) -> Void) -> AssignableQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequest", subfields: subquery)
			return self
		}
	}

	open class UnknownAssignable: GraphQL.AbstractResponse, GraphQLObject, Assignable {
		public typealias Query = AssignableQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "assignees":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownAssignable.self, field: fieldName, value: fieldValue)
				}
				return try UserConnection(fields: value)

				default:
				throw SchemaViolationError(type: UnknownAssignable.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> Assignable {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownAssignable.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Issue":
				return try Issue.init(fields: fields)

				case "PullRequest":
				return try PullRequest.init(fields: fields)

				default:
				return try UnknownAssignable.init(fields: fields)
			}
		}

		open var assignees: ExampleSchema.UserConnection {
			return internalGetAssignees()
		}

		open func aliasedAssignees(aliasSuffix: String) -> ExampleSchema.UserConnection {
			return internalGetAssignees(aliasSuffix: aliasSuffix)
		}

		func internalGetAssignees(aliasSuffix: String? = nil) -> ExampleSchema.UserConnection {
			return field(field: "assignees", aliasSuffix: aliasSuffix) as! ExampleSchema.UserConnection
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "assignees":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "assignees":
				return internalGetAssignees()

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
					case "assignees":
					response.append(internalGetAssignees())
					response.append(contentsOf: internalGetAssignees().childResponseObjectMap())

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
