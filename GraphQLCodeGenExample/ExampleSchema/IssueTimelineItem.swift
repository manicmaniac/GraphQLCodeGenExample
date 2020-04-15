// Generated from graphql_swift_gen gem
import Foundation

public protocol IssueTimelineItem {
	var typeName: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class IssueTimelineItemQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = IssueTimelineItem

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onAssignedEvent(subfields: (AssignedEventQuery) -> Void) -> IssueTimelineItemQuery {
			let subquery = AssignedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "AssignedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onClosedEvent(subfields: (ClosedEventQuery) -> Void) -> IssueTimelineItemQuery {
			let subquery = ClosedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ClosedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCommit(subfields: (CommitQuery) -> Void) -> IssueTimelineItemQuery {
			let subquery = CommitQuery()
			subfields(subquery)
			addInlineFragment(on: "Commit", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCrossReferencedEvent(subfields: (CrossReferencedEventQuery) -> Void) -> IssueTimelineItemQuery {
			let subquery = CrossReferencedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "CrossReferencedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onDemilestonedEvent(subfields: (DemilestonedEventQuery) -> Void) -> IssueTimelineItemQuery {
			let subquery = DemilestonedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "DemilestonedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onIssueComment(subfields: (IssueCommentQuery) -> Void) -> IssueTimelineItemQuery {
			let subquery = IssueCommentQuery()
			subfields(subquery)
			addInlineFragment(on: "IssueComment", subfields: subquery)
			return self
		}

		@discardableResult
		open func onLabeledEvent(subfields: (LabeledEventQuery) -> Void) -> IssueTimelineItemQuery {
			let subquery = LabeledEventQuery()
			subfields(subquery)
			addInlineFragment(on: "LabeledEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onLockedEvent(subfields: (LockedEventQuery) -> Void) -> IssueTimelineItemQuery {
			let subquery = LockedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "LockedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMilestonedEvent(subfields: (MilestonedEventQuery) -> Void) -> IssueTimelineItemQuery {
			let subquery = MilestonedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "MilestonedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReferencedEvent(subfields: (ReferencedEventQuery) -> Void) -> IssueTimelineItemQuery {
			let subquery = ReferencedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReferencedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRenamedTitleEvent(subfields: (RenamedTitleEventQuery) -> Void) -> IssueTimelineItemQuery {
			let subquery = RenamedTitleEventQuery()
			subfields(subquery)
			addInlineFragment(on: "RenamedTitleEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReopenedEvent(subfields: (ReopenedEventQuery) -> Void) -> IssueTimelineItemQuery {
			let subquery = ReopenedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "ReopenedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSubscribedEvent(subfields: (SubscribedEventQuery) -> Void) -> IssueTimelineItemQuery {
			let subquery = SubscribedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "SubscribedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTransferredEvent(subfields: (TransferredEventQuery) -> Void) -> IssueTimelineItemQuery {
			let subquery = TransferredEventQuery()
			subfields(subquery)
			addInlineFragment(on: "TransferredEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnassignedEvent(subfields: (UnassignedEventQuery) -> Void) -> IssueTimelineItemQuery {
			let subquery = UnassignedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnassignedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnlabeledEvent(subfields: (UnlabeledEventQuery) -> Void) -> IssueTimelineItemQuery {
			let subquery = UnlabeledEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnlabeledEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnlockedEvent(subfields: (UnlockedEventQuery) -> Void) -> IssueTimelineItemQuery {
			let subquery = UnlockedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnlockedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnsubscribedEvent(subfields: (UnsubscribedEventQuery) -> Void) -> IssueTimelineItemQuery {
			let subquery = UnsubscribedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UnsubscribedEvent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUserBlockedEvent(subfields: (UserBlockedEventQuery) -> Void) -> IssueTimelineItemQuery {
			let subquery = UserBlockedEventQuery()
			subfields(subquery)
			addInlineFragment(on: "UserBlockedEvent", subfields: subquery)
			return self
		}
	}

	open class UnknownIssueTimelineItem: GraphQL.AbstractResponse, GraphQLObject, IssueTimelineItem {
		public typealias Query = IssueTimelineItemQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				default:
				throw SchemaViolationError(type: UnknownIssueTimelineItem.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> IssueTimelineItem {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownIssueTimelineItem.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "AssignedEvent":
				return try AssignedEvent.init(fields: fields)

				case "ClosedEvent":
				return try ClosedEvent.init(fields: fields)

				case "Commit":
				return try Commit.init(fields: fields)

				case "CrossReferencedEvent":
				return try CrossReferencedEvent.init(fields: fields)

				case "DemilestonedEvent":
				return try DemilestonedEvent.init(fields: fields)

				case "IssueComment":
				return try IssueComment.init(fields: fields)

				case "LabeledEvent":
				return try LabeledEvent.init(fields: fields)

				case "LockedEvent":
				return try LockedEvent.init(fields: fields)

				case "MilestonedEvent":
				return try MilestonedEvent.init(fields: fields)

				case "ReferencedEvent":
				return try ReferencedEvent.init(fields: fields)

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

				case "UnsubscribedEvent":
				return try UnsubscribedEvent.init(fields: fields)

				case "UserBlockedEvent":
				return try UserBlockedEvent.init(fields: fields)

				default:
				return try UnknownIssueTimelineItem.init(fields: fields)
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
