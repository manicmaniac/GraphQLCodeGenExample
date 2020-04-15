// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class PullRequestCommitQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = PullRequestCommit

		@discardableResult
		open func commit(aliasSuffix: String? = nil, _ subfields: (CommitQuery) -> Void) -> PullRequestCommitQuery {
			let subquery = CommitQuery()
			subfields(subquery)

			addField(field: "commit", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> PullRequestCommitQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pullRequest(aliasSuffix: String? = nil, _ subfields: (PullRequestQuery) -> Void) -> PullRequestCommitQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)

			addField(field: "pullRequest", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> PullRequestCommitQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> PullRequestCommitQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class PullRequestCommit: GraphQL.AbstractResponse, GraphQLObject, Node, PullRequestTimelineItems, UniformResourceLocatable {
		public typealias Query = PullRequestCommitQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "commit":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequestCommit.self, field: fieldName, value: fieldValue)
				}
				return try Commit(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestCommit.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "pullRequest":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequestCommit.self, field: fieldName, value: fieldValue)
				}
				return try PullRequest(fields: value)

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestCommit.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestCommit.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: PullRequestCommit.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "PullRequestCommit" }

		open var commit: ExampleSchema.Commit {
			return internalGetCommit()
		}

		func internalGetCommit(aliasSuffix: String? = nil) -> ExampleSchema.Commit {
			return field(field: "commit", aliasSuffix: aliasSuffix) as! ExampleSchema.Commit
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var pullRequest: ExampleSchema.PullRequest {
			return internalGetPullRequest()
		}

		func internalGetPullRequest(aliasSuffix: String? = nil) -> ExampleSchema.PullRequest {
			return field(field: "pullRequest", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequest
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "commit":

				return .object

				case "id":

				return .scalar

				case "pullRequest":

				return .object

				case "resourcePath":

				return .scalar

				case "url":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "commit":
				return internalGetCommit()

				case "pullRequest":
				return internalGetPullRequest()

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
					case "commit":
					response.append(internalGetCommit())
					response.append(contentsOf: internalGetCommit().childResponseObjectMap())

					case "pullRequest":
					response.append(internalGetPullRequest())
					response.append(contentsOf: internalGetPullRequest().childResponseObjectMap())

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
