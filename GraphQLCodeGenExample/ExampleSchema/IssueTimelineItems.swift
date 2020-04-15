// Generated from graphql_swift_gen gem
import Foundation

public protocol IssueTimelineItems {
	var typeName: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class IssueTimelineItemsQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = IssueTimelineItems

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onAddedToProjectEvent(subfields: (AddedToProjectEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = AddedToProjectEventQuery()
			subfields(subquery)
			addInlineFragment(on: "AddedToProjectEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onAssignedEvent(subfields: (AssignedEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = AssignedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "AssignedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onClosedEvent(subfields: (ClosedEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = ClosedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ClosedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCommentDeletedEvent(subfields: (CommentDeletedEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = CommentDeletedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "CommentDeletedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onConnectedEvent(subfields: (ConnectedEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = ConnectedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ConnectedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onConvertedNoteToIssueEvent(subfields: (ConvertedNoteToIssueEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = ConvertedNoteToIssueEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ConvertedNoteToIssueEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCrossReferencedEvent(subfields: (CrossReferencedEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = CrossReferencedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "CrossReferencedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onDemilestonedEvent(subfields: (DemilestonedEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = DemilestonedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "DemilestonedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onDisconnectedEvent(subfields: (DisconnectedEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = DisconnectedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "DisconnectedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onIssueComment(subfields: (IssueCommentQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = IssueCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "IssueComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onLabeledEvent(subfields: (LabeledEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = LabeledEventQuery()
			subfields(subquery)
			addInlineFragment(on: "LabeledEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onLockedEvent(subfields: (LockedEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = LockedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "LockedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMarkedAsDuplicateEvent(subfields: (MarkedAsDuplicateEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = MarkedAsDuplicateEventQuery()
			subfields(subquery)
			addInlineFragment(on: "MarkedAsDuplicateEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMentionedEvent(subfields: (MentionedEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = MentionedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "MentionedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMilestonedEvent(subfields: (MilestonedEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = MilestonedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "MilestonedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMovedColumnsInProjectEvent(subfields: (MovedColumnsInProjectEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = MovedColumnsInProjectEventQuery()
			subfields(subquery)
			addInlineFragment(on: "MovedColumnsInProjectEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPinnedEvent(subfields: (PinnedEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = PinnedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "PinnedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReferencedEvent(subfields: (ReferencedEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = ReferencedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReferencedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRemovedFromProjectEvent(subfields: (RemovedFromProjectEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = RemovedFromProjectEventQuery()
			subfields(subquery)
			addInlineFragment(on: "RemovedFromProjectEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRenamedTitleEvent(subfields: (RenamedTitleEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = RenamedTitleEventQuery()
			subfields(subquery)
			addInlineFragment(on: "RenamedTitleEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReopenedEvent(subfields: (ReopenedEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = ReopenedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReopenedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSubscribedEvent(subfields: (SubscribedEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = SubscribedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "SubscribedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTransferredEvent(subfields: (TransferredEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = TransferredEventQuery()
			subfields(subquery)
			addInlineFragment(on: "TransferredEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnassignedEvent(subfields: (UnassignedEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = UnassignedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnassignedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnlabeledEvent(subfields: (UnlabeledEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = UnlabeledEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnlabeledEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnlockedEvent(subfields: (UnlockedEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = UnlockedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnlockedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnmarkedAsDuplicateEvent(subfields: (UnmarkedAsDuplicateEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = UnmarkedAsDuplicateEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnmarkedAsDuplicateEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnpinnedEvent(subfields: (UnpinnedEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = UnpinnedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnpinnedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnsubscribedEvent(subfields: (UnsubscribedEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = UnsubscribedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnsubscribedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUserBlockedEvent(subfields: (UserBlockedEventQuery) -> Void) -> IssueTimelineItemsQuery {
			let subquery = UserBlockedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UserBlockedEvent", subfields: subquery)
			return self
		}
	}

	open class UnknownIssueTimelineItems: GraphQL.AbstractResponse, GraphQLObject, IssueTimelineItems {
		public typealias Query = IssueTimelineItemsQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				default:
				throw SchemaViolationError(type: UnknownIssueTimelineItems.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> IssueTimelineItems {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownIssueTimelineItems.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "AddedToProjectEvent":
				return try AddedToProjectEvent.init(fields: fields)

				case "AssignedEvent":
				return try AssignedEvent.init(fields: fields)

				case "ClosedEvent":
				return try ClosedEvent.init(fields: fields)

				case "CommentDeletedEvent":
				return try CommentDeletedEvent.init(fields: fields)

				case "ConnectedEvent":
				return try ConnectedEvent.init(fields: fields)

				case "ConvertedNoteToIssueEvent":
				return try ConvertedNoteToIssueEvent.init(fields: fields)

				case "CrossReferencedEvent":
				return try CrossReferencedEvent.init(fields: fields)

				case "DemilestonedEvent":
				return try DemilestonedEvent.init(fields: fields)

				case "DisconnectedEvent":
				return try DisconnectedEvent.init(fields: fields)

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

				case "MilestonedEvent":
				return try MilestonedEvent.init(fields: fields)

				case "MovedColumnsInProjectEvent":
				return try MovedColumnsInProjectEvent.init(fields: fields)

				case "PinnedEvent":
				return try PinnedEvent.init(fields: fields)

				case "ReferencedEvent":
				return try ReferencedEvent.init(fields: fields)

				case "RemovedFromProjectEvent":
				return try RemovedFromProjectEvent.init(fields: fields)

				case "RenamedTitleEvent":
				return try RenamedTitleEvent.init(fields: fields)

				case "ReopenedEvent":
				return try ReopenedEvent.init(fields: fields)

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
				return try UnknownIssueTimelineItems.init(fields: fields)
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
