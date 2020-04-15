// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CommitCommentThreadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = CommitCommentThread

		@discardableResult
		open func comments(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (CommitCommentConnectionQuery) -> Void) -> CommitCommentThreadQuery {
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

			let subquery = CommitCommentConnectionQuery()
			subfields(subquery)

			addField(field: "comments", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func commit(aliasSuffix: String? = nil, _ subfields: (CommitQuery) -> Void) -> CommitCommentThreadQuery {
			let subquery = CommitQuery()
			subfields(subquery)

			addField(field: "commit", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> CommitCommentThreadQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func path(aliasSuffix: String? = nil) -> CommitCommentThreadQuery {
			addField(field: "path", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func position(aliasSuffix: String? = nil) -> CommitCommentThreadQuery {
			addField(field: "position", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> CommitCommentThreadQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class CommitCommentThread: GraphQL.AbstractResponse, GraphQLObject, Node, PullRequestTimelineItem, RepositoryNode {
		public typealias Query = CommitCommentThreadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "comments":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: CommitCommentThread.self, field: fieldName, value: fieldValue)
				}
				return try CommitCommentConnection(fields: value)

				case "commit":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: CommitCommentThread.self, field: fieldName, value: fieldValue)
				}
				return try Commit(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: CommitCommentThread.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "path":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: CommitCommentThread.self, field: fieldName, value: fieldValue)
				}
				return value

				case "position":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: CommitCommentThread.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "repository":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: CommitCommentThread.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				default:
				throw SchemaViolationError(type: CommitCommentThread.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "CommitCommentThread" }

		open var comments: ExampleSchema.CommitCommentConnection {
			return internalGetComments()
		}

		open func aliasedComments(aliasSuffix: String) -> ExampleSchema.CommitCommentConnection {
			return internalGetComments(aliasSuffix: aliasSuffix)
		}

		func internalGetComments(aliasSuffix: String? = nil) -> ExampleSchema.CommitCommentConnection {
			return field(field: "comments", aliasSuffix: aliasSuffix) as! ExampleSchema.CommitCommentConnection
		}

		open var commit: ExampleSchema.Commit? {
			return internalGetCommit()
		}

		func internalGetCommit(aliasSuffix: String? = nil) -> ExampleSchema.Commit? {
			return field(field: "commit", aliasSuffix: aliasSuffix) as! ExampleSchema.Commit?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var path: String? {
			return internalGetPath()
		}

		func internalGetPath(aliasSuffix: String? = nil) -> String? {
			return field(field: "path", aliasSuffix: aliasSuffix) as! String?
		}

		open var position: Int32? {
			return internalGetPosition()
		}

		func internalGetPosition(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "position", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var repository: ExampleSchema.Repository {
			return internalGetRepository()
		}

		func internalGetRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository {
			return field(field: "repository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "comments":

				return .object

				case "commit":

				return .object

				case "id":

				return .scalar

				case "path":

				return .scalar

				case "position":

				return .scalar

				case "repository":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "comments":
				return internalGetComments()

				case "commit":
				return internalGetCommit()

				case "repository":
				return internalGetRepository()

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
					case "comments":
					response.append(internalGetComments())
					response.append(contentsOf: internalGetComments().childResponseObjectMap())

					case "commit":
					if let value = internalGetCommit() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "repository":
					response.append(internalGetRepository())
					response.append(contentsOf: internalGetRepository().childResponseObjectMap())

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
