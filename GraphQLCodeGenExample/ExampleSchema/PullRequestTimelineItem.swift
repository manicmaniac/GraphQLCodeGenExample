// Generated from graphql_swift_gen gem
import Foundation

public protocol PullRequestTimelineItem {
	var typeName: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class PullRequestTimelineItemQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = PullRequestTimelineItem

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onAssignedEvent(subfields: (AssignedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = AssignedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "AssignedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onBaseRefForcePushedEvent(subfields: (BaseRefForcePushedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = BaseRefForcePushedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "BaseRefForcePushedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onClosedEvent(subfields: (ClosedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = ClosedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ClosedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCommit(subfields: (CommitQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = CommitQuery()
			subfields(subquery)
			addInlineFragment(on: "Commit", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCommitCommentThread(subfields: (CommitCommentThreadQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = CommitCommentThreadQuery()
			subfields(subquery)
			addInlineFragment(on: "CommitCommentThread", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCrossReferencedEvent(subfields: (CrossReferencedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = CrossReferencedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "CrossReferencedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onDemilestonedEvent(subfields: (DemilestonedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = DemilestonedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "DemilestonedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onDeployedEvent(subfields: (DeployedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = DeployedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "DeployedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onDeploymentEnvironmentChangedEvent(subfields: (DeploymentEnvironmentChangedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = DeploymentEnvironmentChangedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "DeploymentEnvironmentChangedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onHeadRefDeletedEvent(subfields: (HeadRefDeletedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = HeadRefDeletedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "HeadRefDeletedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onHeadRefForcePushedEvent(subfields: (HeadRefForcePushedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = HeadRefForcePushedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "HeadRefForcePushedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onHeadRefRestoredEvent(subfields: (HeadRefRestoredEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = HeadRefRestoredEventQuery()
			subfields(subquery)
			addInlineFragment(on: "HeadRefRestoredEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onIssueComment(subfields: (IssueCommentQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = IssueCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "IssueComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onLabeledEvent(subfields: (LabeledEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = LabeledEventQuery()
			subfields(subquery)
			addInlineFragment(on: "LabeledEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onLockedEvent(subfields: (LockedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = LockedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "LockedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMergedEvent(subfields: (MergedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = MergedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "MergedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMilestonedEvent(subfields: (MilestonedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = MilestonedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "MilestonedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestReview(subfields: (PullRequestReviewQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = PullRequestReviewQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestReview", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestReviewComment(subfields: (PullRequestReviewCommentQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = PullRequestReviewCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestReviewComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestReviewThread(subfields: (PullRequestReviewThreadQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = PullRequestReviewThreadQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestReviewThread", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReferencedEvent(subfields: (ReferencedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = ReferencedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReferencedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRenamedTitleEvent(subfields: (RenamedTitleEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = RenamedTitleEventQuery()
			subfields(subquery)
			addInlineFragment(on: "RenamedTitleEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReopenedEvent(subfields: (ReopenedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = ReopenedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReopenedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReviewDismissedEvent(subfields: (ReviewDismissedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = ReviewDismissedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReviewDismissedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReviewRequestRemovedEvent(subfields: (ReviewRequestRemovedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = ReviewRequestRemovedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReviewRequestRemovedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReviewRequestedEvent(subfields: (ReviewRequestedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = ReviewRequestedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReviewRequestedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSubscribedEvent(subfields: (SubscribedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = SubscribedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "SubscribedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnassignedEvent(subfields: (UnassignedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = UnassignedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnassignedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnlabeledEvent(subfields: (UnlabeledEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = UnlabeledEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnlabeledEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnlockedEvent(subfields: (UnlockedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = UnlockedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnlockedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnsubscribedEvent(subfields: (UnsubscribedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = UnsubscribedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnsubscribedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUserBlockedEvent(subfields: (UserBlockedEventQuery) -> Void) -> PullRequestTimelineItemQuery {
			let subquery = UserBlockedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UserBlockedEvent", subfields: subquery)
			return self
		}
	}

	open class UnknownPullRequestTimelineItem: GraphQL.AbstractResponse, GraphQLObject, PullRequestTimelineItem {
		public typealias Query = PullRequestTimelineItemQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				default:
				throw SchemaViolationError(type: UnknownPullRequestTimelineItem.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> PullRequestTimelineItem {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownPullRequestTimelineItem.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "AssignedEvent":
				return try AssignedEvent.init(fields: fields)

				case "BaseRefForcePushedEvent":
				return try BaseRefForcePushedEvent.init(fields: fields)

				case "ClosedEvent":
				return try ClosedEvent.init(fields: fields)

				case "Commit":
				return try Commit.init(fields: fields)

				case "CommitCommentThread":
				return try CommitCommentThread.init(fields: fields)

				case "CrossReferencedEvent":
				return try CrossReferencedEvent.init(fields: fields)

				case "DemilestonedEvent":
				return try DemilestonedEvent.init(fields: fields)

				case "DeployedEvent":
				return try DeployedEvent.init(fields: fields)

				case "DeploymentEnvironmentChangedEvent":
				return try DeploymentEnvironmentChangedEvent.init(fields: fields)

				case "HeadRefDeletedEvent":
				return try HeadRefDeletedEvent.init(fields: fields)

				case "HeadRefForcePushedEvent":
				return try HeadRefForcePushedEvent.init(fields: fields)

				case "HeadRefRestoredEvent":
				return try HeadRefRestoredEvent.init(fields: fields)

				case "IssueComment":
				return try IssueComment.init(fields: fields)

				case "LabeledEvent":
				return try LabeledEvent.init(fields: fields)

				case "LockedEvent":
				return try LockedEvent.init(fields: fields)

				case "MergedEvent":
				return try MergedEvent.init(fields: fields)

				case "MilestonedEvent":
				return try MilestonedEvent.init(fields: fields)

				case "PullRequestReview":
				return try PullRequestReview.init(fields: fields)

				case "PullRequestReviewComment":
				return try PullRequestReviewComment.init(fields: fields)

				case "PullRequestReviewThread":
				return try PullRequestReviewThread.init(fields: fields)

				case "ReferencedEvent":
				return try ReferencedEvent.init(fields: fields)

				case "RenamedTitleEvent":
				return try RenamedTitleEvent.init(fields: fields)

				case "ReopenedEvent":
				return try ReopenedEvent.init(fields: fields)

				case "ReviewDismissedEvent":
				return try ReviewDismissedEvent.init(fields: fields)

				case "ReviewRequestRemovedEvent":
				return try ReviewRequestRemovedEvent.init(fields: fields)

				case "ReviewRequestedEvent":
				return try ReviewRequestedEvent.init(fields: fields)

				case "SubscribedEvent":
				return try SubscribedEvent.init(fields: fields)

				case "UnassignedEvent":
				return try UnassignedEvent.init(fields: fields)

				case "UnlabeledEvent":
				return try UnlabeledEvent.init(fields: fields)

				case "UnlockedEvent":
				return try UnlockedEvent.init(fields: fields)

				case "UnsubscribedEvent":
				return try UnsubscribedEvent.init(fields: fields)

				case "UserBlockedEvent":
				return try UserBlockedEvent.init(fields: fields)

				default:
				return try UnknownPullRequestTimelineItem.init(fields: fields)
			}
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
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
