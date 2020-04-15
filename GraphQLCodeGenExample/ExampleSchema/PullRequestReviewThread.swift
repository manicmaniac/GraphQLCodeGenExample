// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class PullRequestReviewThreadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = PullRequestReviewThread

		@discardableResult
		open func comments(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, skip: Int32? = nil, _ subfields: (PullRequestReviewCommentConnectionQuery) -> Void) -> PullRequestReviewThreadQuery {
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

			if let skip = skip {
				args.append("skip:\(skip)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = PullRequestReviewCommentConnectionQuery()
			subfields(subquery)

			addField(field: "comments", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func diffSide(aliasSuffix: String? = nil) -> PullRequestReviewThreadQuery {
			addField(field: "diffSide", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> PullRequestReviewThreadQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isResolved(aliasSuffix: String? = nil) -> PullRequestReviewThreadQuery {
			addField(field: "isResolved", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func line(aliasSuffix: String? = nil) -> PullRequestReviewThreadQuery {
			addField(field: "line", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func originalLine(aliasSuffix: String? = nil) -> PullRequestReviewThreadQuery {
			addField(field: "originalLine", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func originalStartLine(aliasSuffix: String? = nil) -> PullRequestReviewThreadQuery {
			addField(field: "originalStartLine", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pullRequest(aliasSuffix: String? = nil, _ subfields: (PullRequestQuery) -> Void) -> PullRequestReviewThreadQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)

			addField(field: "pullRequest", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> PullRequestReviewThreadQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func resolvedBy(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> PullRequestReviewThreadQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "resolvedBy", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func startDiffSide(aliasSuffix: String? = nil) -> PullRequestReviewThreadQuery {
			addField(field: "startDiffSide", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func startLine(aliasSuffix: String? = nil) -> PullRequestReviewThreadQuery {
			addField(field: "startLine", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanResolve(aliasSuffix: String? = nil) -> PullRequestReviewThreadQuery {
			addField(field: "viewerCanResolve", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanUnresolve(aliasSuffix: String? = nil) -> PullRequestReviewThreadQuery {
			addField(field: "viewerCanUnresolve", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class PullRequestReviewThread: GraphQL.AbstractResponse, GraphQLObject, Node, PullRequestTimelineItem, PullRequestTimelineItems {
		public typealias Query = PullRequestReviewThreadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "comments":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequestReviewThread.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestReviewCommentConnection(fields: value)

				case "diffSide":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestReviewThread.self, field: fieldName, value: fieldValue)
				}
				return DiffSide(rawValue: value) ?? .unknownValue

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestReviewThread.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "isResolved":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequestReviewThread.self, field: fieldName, value: fieldValue)
				}
				return value

				case "line":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: PullRequestReviewThread.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "originalLine":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: PullRequestReviewThread.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "originalStartLine":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: PullRequestReviewThread.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "pullRequest":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequestReviewThread.self, field: fieldName, value: fieldValue)
				}
				return try PullRequest(fields: value)

				case "repository":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequestReviewThread.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "resolvedBy":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequestReviewThread.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				case "startDiffSide":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestReviewThread.self, field: fieldName, value: fieldValue)
				}
				return DiffSide(rawValue: value) ?? .unknownValue

				case "startLine":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: PullRequestReviewThread.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "viewerCanResolve":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequestReviewThread.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanUnresolve":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: PullRequestReviewThread.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: PullRequestReviewThread.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "PullRequestReviewThread" }

		open var comments: ExampleSchema.PullRequestReviewCommentConnection {
			return internalGetComments()
		}

		open func aliasedComments(aliasSuffix: String) -> ExampleSchema.PullRequestReviewCommentConnection {
			return internalGetComments(aliasSuffix: aliasSuffix)
		}

		func internalGetComments(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestReviewCommentConnection {
			return field(field: "comments", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestReviewCommentConnection
		}

		open var diffSide: ExampleSchema.DiffSide {
			return internalGetDiffSide()
		}

		func internalGetDiffSide(aliasSuffix: String? = nil) -> ExampleSchema.DiffSide {
			return field(field: "diffSide", aliasSuffix: aliasSuffix) as! ExampleSchema.DiffSide
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var isResolved: Bool {
			return internalGetIsResolved()
		}

		func internalGetIsResolved(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isResolved", aliasSuffix: aliasSuffix) as! Bool
		}

		open var line: Int32? {
			return internalGetLine()
		}

		func internalGetLine(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "line", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var originalLine: Int32? {
			return internalGetOriginalLine()
		}

		func internalGetOriginalLine(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "originalLine", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var originalStartLine: Int32? {
			return internalGetOriginalStartLine()
		}

		func internalGetOriginalStartLine(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "originalStartLine", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var pullRequest: ExampleSchema.PullRequest {
			return internalGetPullRequest()
		}

		func internalGetPullRequest(aliasSuffix: String? = nil) -> ExampleSchema.PullRequest {
			return field(field: "pullRequest", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequest
		}

		open var repository: ExampleSchema.Repository {
			return internalGetRepository()
		}

		func internalGetRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository {
			return field(field: "repository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository
		}

		open var resolvedBy: ExampleSchema.User? {
			return internalGetResolvedBy()
		}

		func internalGetResolvedBy(aliasSuffix: String? = nil) -> ExampleSchema.User? {
			return field(field: "resolvedBy", aliasSuffix: aliasSuffix) as! ExampleSchema.User?
		}

		open var startDiffSide: ExampleSchema.DiffSide? {
			return internalGetStartDiffSide()
		}

		func internalGetStartDiffSide(aliasSuffix: String? = nil) -> ExampleSchema.DiffSide? {
			return field(field: "startDiffSide", aliasSuffix: aliasSuffix) as! ExampleSchema.DiffSide?
		}

		open var startLine: Int32? {
			return internalGetStartLine()
		}

		func internalGetStartLine(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "startLine", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var viewerCanResolve: Bool {
			return internalGetViewerCanResolve()
		}

		func internalGetViewerCanResolve(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanResolve", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCanUnresolve: Bool {
			return internalGetViewerCanUnresolve()
		}

		func internalGetViewerCanUnresolve(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanUnresolve", aliasSuffix: aliasSuffix) as! Bool
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "comments":

				return .object

				case "diffSide":

				return .scalar

				case "id":

				return .scalar

				case "isResolved":

				return .scalar

				case "line":

				return .scalar

				case "originalLine":

				return .scalar

				case "originalStartLine":

				return .scalar

				case "pullRequest":

				return .object

				case "repository":

				return .object

				case "resolvedBy":

				return .object

				case "startDiffSide":

				return .scalar

				case "startLine":

				return .scalar

				case "viewerCanResolve":

				return .scalar

				case "viewerCanUnresolve":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "comments":
				return internalGetComments()

				case "pullRequest":
				return internalGetPullRequest()

				case "repository":
				return internalGetRepository()

				case "resolvedBy":
				return internalGetResolvedBy()

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

					case "pullRequest":
					response.append(internalGetPullRequest())
					response.append(contentsOf: internalGetPullRequest().childResponseObjectMap())

					case "repository":
					response.append(internalGetRepository())
					response.append(contentsOf: internalGetRepository().childResponseObjectMap())

					case "resolvedBy":
					if let value = internalGetResolvedBy() {
						response.append(value)
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
