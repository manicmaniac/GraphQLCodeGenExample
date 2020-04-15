// Generated from graphql_swift_gen gem
import Foundation

public protocol Minimizable {
	var typeName: String { get }

	var isMinimized: Bool { get }

	var minimizedReason: String? { get }

	var viewerCanMinimize: Bool { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class MinimizableQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Minimizable

		@discardableResult
		open func isMinimized(aliasSuffix: String? = nil) -> MinimizableQuery {
			addField(field: "isMinimized", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func minimizedReason(aliasSuffix: String? = nil) -> MinimizableQuery {
			addField(field: "minimizedReason", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanMinimize(aliasSuffix: String? = nil) -> MinimizableQuery {
			addField(field: "viewerCanMinimize", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onCommitComment(subfields: (CommitCommentQuery) -> Void) -> MinimizableQuery {
			let subquery = CommitCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "CommitComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onGistComment(subfields: (GistCommentQuery) -> Void) -> MinimizableQuery {
			let subquery = GistCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "GistComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onIssueComment(subfields: (IssueCommentQuery) -> Void) -> MinimizableQuery {
			let subquery = IssueCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "IssueComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestReviewComment(subfields: (PullRequestReviewCommentQuery) -> Void) -> MinimizableQuery {
			let subquery = PullRequestReviewCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestReviewComment", subfields: subquery)
			return self
		}
	}

	open class UnknownMinimizable: GraphQL.AbstractResponse, GraphQLObject, Minimizable {
		public typealias Query = MinimizableQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "isMinimized":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownMinimizable.self, field: fieldName, value: fieldValue)
				}
				return value

				case "minimizedReason":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownMinimizable.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanMinimize":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownMinimizable.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownMinimizable.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> Minimizable {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownMinimizable.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "CommitComment":
				return try CommitComment.init(fields: fields)

				case "GistComment":
				return try GistComment.init(fields: fields)

				case "IssueComment":
				return try IssueComment.init(fields: fields)

				case "PullRequestReviewComment":
				return try PullRequestReviewComment.init(fields: fields)

				default:
				return try UnknownMinimizable.init(fields: fields)
			}
		}

		open var isMinimized: Bool {
			return internalGetIsMinimized()
		}

		func internalGetIsMinimized(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isMinimized", aliasSuffix: aliasSuffix) as! Bool
		}

		open var minimizedReason: String? {
			return internalGetMinimizedReason()
		}

		func internalGetMinimizedReason(aliasSuffix: String? = nil) -> String? {
			return field(field: "minimizedReason", aliasSuffix: aliasSuffix) as! String?
		}

		open var viewerCanMinimize: Bool {
			return internalGetViewerCanMinimize()
		}

		func internalGetViewerCanMinimize(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanMinimize", aliasSuffix: aliasSuffix) as! Bool
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "isMinimized":

				return .scalar

				case "minimizedReason":

				return .scalar

				case "viewerCanMinimize":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
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
			return []
		}

		open func responseObject() -> GraphQL.AbstractResponse {
			return self as GraphQL.AbstractResponse
		}
	}
}
