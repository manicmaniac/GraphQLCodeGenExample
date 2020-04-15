// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class PullRequestRevisionMarkerQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = PullRequestRevisionMarker

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> PullRequestRevisionMarkerQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func lastSeenCommit(aliasSuffix: String? = nil, _ subfields: (CommitQuery) -> Void) -> PullRequestRevisionMarkerQuery {
			let subquery = CommitQuery()
			subfields(subquery)

			addField(field: "lastSeenCommit", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func pullRequest(aliasSuffix: String? = nil, _ subfields: (PullRequestQuery) -> Void) -> PullRequestRevisionMarkerQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)

			addField(field: "pullRequest", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class PullRequestRevisionMarker: GraphQL.AbstractResponse, GraphQLObject, PullRequestTimelineItems {
		public typealias Query = PullRequestRevisionMarkerQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestRevisionMarker.self, field: fieldName, value: fieldValue)
				}
				return value

				case "lastSeenCommit":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequestRevisionMarker.self, field: fieldName, value: fieldValue)
				}
				return try Commit(fields: value)

				case "pullRequest":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequestRevisionMarker.self, field: fieldName, value: fieldValue)
				}
				return try PullRequest(fields: value)

				default:
				throw SchemaViolationError(type: PullRequestRevisionMarker.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "PullRequestRevisionMarker" }

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var lastSeenCommit: ExampleSchema.Commit {
			return internalGetLastSeenCommit()
		}

		func internalGetLastSeenCommit(aliasSuffix: String? = nil) -> ExampleSchema.Commit {
			return field(field: "lastSeenCommit", aliasSuffix: aliasSuffix) as! ExampleSchema.Commit
		}

		open var pullRequest: ExampleSchema.PullRequest {
			return internalGetPullRequest()
		}

		func internalGetPullRequest(aliasSuffix: String? = nil) -> ExampleSchema.PullRequest {
			return field(field: "pullRequest", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequest
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "createdAt":

				return .scalar

				case "lastSeenCommit":

				return .object

				case "pullRequest":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "lastSeenCommit":
				return internalGetLastSeenCommit()

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
					case "lastSeenCommit":
					response.append(internalGetLastSeenCommit())
					response.append(contentsOf: internalGetLastSeenCommit().childResponseObjectMap())

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
