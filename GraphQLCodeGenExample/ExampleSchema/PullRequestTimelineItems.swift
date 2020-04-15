// Generated from graphql_swift_gen gem
import Foundation

public protocol PullRequestTimelineItems {
	var typeName: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class PullRequestTimelineItemsQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = PullRequestTimelineItems

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onAddedToProjectEvent(subfields: (AddedToProjectEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = AddedToProjectEventQuery()
			subfields(subquery)
			addInlineFragment(on: "AddedToProjectEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onAssignedEvent(subfields: (AssignedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = AssignedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "AssignedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onBaseRefChangedEvent(subfields: (BaseRefChangedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = BaseRefChangedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "BaseRefChangedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onBaseRefForcePushedEvent(subfields: (BaseRefForcePushedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = BaseRefForcePushedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "BaseRefForcePushedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onClosedEvent(subfields: (ClosedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = ClosedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ClosedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCommentDeletedEvent(subfields: (CommentDeletedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = CommentDeletedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "CommentDeletedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onConnectedEvent(subfields: (ConnectedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = ConnectedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ConnectedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onConvertToDraftEvent(subfields: (ConvertToDraftEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = ConvertToDraftEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ConvertToDraftEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onConvertedNoteToIssueEvent(subfields: (ConvertedNoteToIssueEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = ConvertedNoteToIssueEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ConvertedNoteToIssueEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCrossReferencedEvent(subfields: (CrossReferencedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = CrossReferencedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "CrossReferencedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onDemilestonedEvent(subfields: (DemilestonedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = DemilestonedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "DemilestonedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onDeployedEvent(subfields: (DeployedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = DeployedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "DeployedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onDeploymentEnvironmentChangedEvent(subfields: (DeploymentEnvironmentChangedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = DeploymentEnvironmentChangedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "DeploymentEnvironmentChangedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onDisconnectedEvent(subfields: (DisconnectedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = DisconnectedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "DisconnectedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onHeadRefDeletedEvent(subfields: (HeadRefDeletedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = HeadRefDeletedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "HeadRefDeletedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onHeadRefForcePushedEvent(subfields: (HeadRefForcePushedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = HeadRefForcePushedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "HeadRefForcePushedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onHeadRefRestoredEvent(subfields: (HeadRefRestoredEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = HeadRefRestoredEventQuery()
			subfields(subquery)
			addInlineFragment(on: "HeadRefRestoredEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onIssueComment(subfields: (IssueCommentQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = IssueCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "IssueComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onLabeledEvent(subfields: (LabeledEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = LabeledEventQuery()
			subfields(subquery)
			addInlineFragment(on: "LabeledEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onLockedEvent(subfields: (LockedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = LockedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "LockedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMarkedAsDuplicateEvent(subfields: (MarkedAsDuplicateEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = MarkedAsDuplicateEventQuery()
			subfields(subquery)
			addInlineFragment(on: "MarkedAsDuplicateEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMentionedEvent(subfields: (MentionedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = MentionedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "MentionedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMergedEvent(subfields: (MergedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = MergedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "MergedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMilestonedEvent(subfields: (MilestonedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = MilestonedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "MilestonedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMovedColumnsInProjectEvent(subfields: (MovedColumnsInProjectEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = MovedColumnsInProjectEventQuery()
			subfields(subquery)
			addInlineFragment(on: "MovedColumnsInProjectEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPinnedEvent(subfields: (PinnedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = PinnedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "PinnedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestCommit(subfields: (PullRequestCommitQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = PullRequestCommitQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestCommit", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestCommitCommentThread(subfields: (PullRequestCommitCommentThreadQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = PullRequestCommitCommentThreadQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestCommitCommentThread", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestReview(subfields: (PullRequestReviewQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = PullRequestReviewQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestReview", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestReviewThread(subfields: (PullRequestReviewThreadQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = PullRequestReviewThreadQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestReviewThread", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequestRevisionMarker(subfields: (PullRequestRevisionMarkerQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = PullRequestRevisionMarkerQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequestRevisionMarker", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReadyForReviewEvent(subfields: (ReadyForReviewEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = ReadyForReviewEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReadyForReviewEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReferencedEvent(subfields: (ReferencedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = ReferencedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReferencedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRemovedFromProjectEvent(subfields: (RemovedFromProjectEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = RemovedFromProjectEventQuery()
			subfields(subquery)
			addInlineFragment(on: "RemovedFromProjectEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRenamedTitleEvent(subfields: (RenamedTitleEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = RenamedTitleEventQuery()
			subfields(subquery)
			addInlineFragment(on: "RenamedTitleEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReopenedEvent(subfields: (ReopenedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = ReopenedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReopenedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReviewDismissedEvent(subfields: (ReviewDismissedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = ReviewDismissedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReviewDismissedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReviewRequestRemovedEvent(subfields: (ReviewRequestRemovedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = ReviewRequestRemovedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReviewRequestRemovedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReviewRequestedEvent(subfields: (ReviewRequestedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = ReviewRequestedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReviewRequestedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSubscribedEvent(subfields: (SubscribedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = SubscribedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "SubscribedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTransferredEvent(subfields: (TransferredEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = TransferredEventQuery()
			subfields(subquery)
			addInlineFragment(on: "TransferredEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnassignedEvent(subfields: (UnassignedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = UnassignedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnassignedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnlabeledEvent(subfields: (UnlabeledEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = UnlabeledEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnlabeledEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnlockedEvent(subfields: (UnlockedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = UnlockedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnlockedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnmarkedAsDuplicateEvent(subfields: (UnmarkedAsDuplicateEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = UnmarkedAsDuplicateEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnmarkedAsDuplicateEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnpinnedEvent(subfields: (UnpinnedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = UnpinnedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnpinnedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnsubscribedEvent(subfields: (UnsubscribedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = UnsubscribedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnsubscribedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUserBlockedEvent(subfields: (UserBlockedEventQuery) -> Void) -> PullRequestTimelineItemsQuery {
			let subquery = UserBlockedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UserBlockedEvent", subfields: subquery)
			return self
		}
	}

	open class UnknownPullRequestTimelineItems: GraphQL.AbstractResponse, GraphQLObject, PullRequestTimelineItems {
		public typealias Query = PullRequestTimelineItemsQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				default:
				throw SchemaViolationError(type: UnknownPullRequestTimelineItems.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> PullRequestTimelineItems {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownPullRequestTimelineItems.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "AddedToProjectEvent":
				return try AddedToProjectEvent.init(fields: fields)

				case "AssignedEvent":
				return try AssignedEvent.init(fields: fields)

				case "BaseRefChangedEvent":
				return try BaseRefChangedEvent.init(fields: fields)

				case "BaseRefForcePushedEvent":
				return try BaseRefForcePushedEvent.init(fields: fields)

				case "ClosedEvent":
				return try ClosedEvent.init(fields: fields)

				case "CommentDeletedEvent":
				return try CommentDeletedEvent.init(fields: fields)

				case "ConnectedEvent":
				return try ConnectedEvent.init(fields: fields)

				case "ConvertToDraftEvent":
				return try ConvertToDraftEvent.init(fields: fields)

				case "ConvertedNoteToIssueEvent":
				return try ConvertedNoteToIssueEvent.init(fields: fields)

				case "CrossReferencedEvent":
				return try CrossReferencedEvent.init(fields: fields)

				case "DemilestonedEvent":
				return try DemilestonedEvent.init(fields: fields)

				case "DeployedEvent":
				return try DeployedEvent.init(fields: fields)

				case "DeploymentEnvironmentChangedEvent":
				return try DeploymentEnvironmentChangedEvent.init(fields: fields)

				case "DisconnectedEvent":
				return try DisconnectedEvent.init(fields: fields)

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

				case "MarkedAsDuplicateEvent":
				return try MarkedAsDuplicateEvent.init(fields: fields)

				case "MentionedEvent":
				return try MentionedEvent.init(fields: fields)

				case "MergedEvent":
				return try MergedEvent.init(fields: fields)

				case "MilestonedEvent":
				return try MilestonedEvent.init(fields: fields)

				case "MovedColumnsInProjectEvent":
				return try MovedColumnsInProjectEvent.init(fields: fields)

				case "PinnedEvent":
				return try PinnedEvent.init(fields: fields)

				case "PullRequestCommit":
				return try PullRequestCommit.init(fields: fields)

				case "PullRequestCommitCommentThread":
				return try PullRequestCommitCommentThread.init(fields: fields)

				case "PullRequestReview":
				return try PullRequestReview.init(fields: fields)

				case "PullRequestReviewThread":
				return try PullRequestReviewThread.init(fields: fields)

				case "PullRequestRevisionMarker":
				return try PullRequestRevisionMarker.init(fields: fields)

				case "ReadyForReviewEvent":
				return try ReadyForReviewEvent.init(fields: fields)

				case "ReferencedEvent":
				return try ReferencedEvent.init(fields: fields)

				case "RemovedFromProjectEvent":
				return try RemovedFromProjectEvent.init(fields: fields)

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

				case "TransferredEvent":
				return try TransferredEvent.init(fields: fields)

				case "UnassignedEvent":
				return try UnassignedEvent.init(fields: fields)

				case "UnlabeledEvent":
				return try UnlabeledEvent.init(fields: fields)

				case "UnlockedEvent":
				return try UnlockedEvent.init(fields: fields)

				case "UnmarkedAsDuplicateEvent":
				return try UnmarkedAsDuplicateEvent.init(fields: fields)

				case "UnpinnedEvent":
				return try UnpinnedEvent.init(fields: fields)

				case "UnsubscribedEvent":
				return try UnsubscribedEvent.init(fields: fields)

				case "UserBlockedEvent":
				return try UserBlockedEvent.init(fields: fields)

				default:
				return try UnknownPullRequestTimelineItems.init(fields: fields)
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
