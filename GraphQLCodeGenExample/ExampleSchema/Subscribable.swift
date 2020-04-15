// Generated from graphql_swift_gen gem
import Foundation

public protocol Subscribable {
	var typeName: String { get }

	var id: GraphQL.ID { get }

	var viewerCanSubscribe: Bool { get }

	var viewerSubscription: ExampleSchema.SubscriptionState? { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class SubscribableQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Subscribable

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> SubscribableQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanSubscribe(aliasSuffix: String? = nil) -> SubscribableQuery {
			addField(field: "viewerCanSubscribe", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerSubscription(aliasSuffix: String? = nil) -> SubscribableQuery {
			addField(field: "viewerSubscription", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onCommit(subfields: (CommitQuery) -> Void) -> SubscribableQuery {
			let subquery = CommitQuery()
			subfields(subquery)
			addInlineFragment(on: "Commit", subfields: subquery)
			return self
		}

		@discardableResult
		open func onIssue(subfields: (IssueQuery) -> Void) -> SubscribableQuery {
			let subquery = IssueQuery()
			subfields(subquery)
			addInlineFragment(on: "Issue", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequest(subfields: (PullRequestQuery) -> Void) -> SubscribableQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequest", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepository(subfields: (RepositoryQuery) -> Void) -> SubscribableQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)
			addInlineFragment(on: "Repository", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeam(subfields: (TeamQuery) -> Void) -> SubscribableQuery {
			let subquery = TeamQuery()
			subfields(subquery)
			addInlineFragment(on: "Team", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTeamDiscussion(subfields: (TeamDiscussionQuery) -> Void) -> SubscribableQuery {
			let subquery = TeamDiscussionQuery()
			subfields(subquery)
			addInlineFragment(on: "TeamDiscussion", subfields: subquery)
			return self
		}
	}

	open class UnknownSubscribable: GraphQL.AbstractResponse, GraphQLObject, Subscribable {
		public typealias Query = SubscribableQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownSubscribable.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "viewerCanSubscribe":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownSubscribable.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerSubscription":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownSubscribable.self, field: fieldName, value: fieldValue)
				}
				return SubscriptionState(rawValue: value) ?? .unknownValue

				default:
				throw SchemaViolationError(type: UnknownSubscribable.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> Subscribable {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownSubscribable.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Commit":
				return try Commit.init(fields: fields)

				case "Issue":
				return try Issue.init(fields: fields)

				case "PullRequest":
				return try PullRequest.init(fields: fields)

				case "Repository":
				return try Repository.init(fields: fields)

				case "Team":
				return try Team.init(fields: fields)

				case "TeamDiscussion":
				return try TeamDiscussion.init(fields: fields)

				default:
				return try UnknownSubscribable.init(fields: fields)
			}
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var viewerCanSubscribe: Bool {
			return internalGetViewerCanSubscribe()
		}

		func internalGetViewerCanSubscribe(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanSubscribe", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerSubscription: ExampleSchema.SubscriptionState? {
			return internalGetViewerSubscription()
		}

		func internalGetViewerSubscription(aliasSuffix: String? = nil) -> ExampleSchema.SubscriptionState? {
			return field(field: "viewerSubscription", aliasSuffix: aliasSuffix) as! ExampleSchema.SubscriptionState?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "id":

				return .scalar

				case "viewerCanSubscribe":

				return .scalar

				case "viewerSubscription":

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
