// Generated from graphql_swift_gen gem
import Foundation

public protocol Closable {
	var typeName: String { get }

	var closed: Bool { get }

	var closedAt: String? { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class ClosableQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Closable

		@discardableResult
		open func closed(aliasSuffix: String? = nil) -> ClosableQuery {
			addField(field: "closed", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func closedAt(aliasSuffix: String? = nil) -> ClosableQuery {
			addField(field: "closedAt", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onIssue(subfields: (IssueQuery) -> Void) -> ClosableQuery {
			let subquery = IssueQuery()
			subfields(subquery)
			addInlineFragment(on: "Issue", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMilestone(subfields: (MilestoneQuery) -> Void) -> ClosableQuery {
			let subquery = MilestoneQuery()
			subfields(subquery)
			addInlineFragment(on: "Milestone", subfields: subquery)
			return self
		}

		@discardableResult
		open func onProject(subfields: (ProjectQuery) -> Void) -> ClosableQuery {
			let subquery = ProjectQuery()
			subfields(subquery)
			addInlineFragment(on: "Project", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequest(subfields: (PullRequestQuery) -> Void) -> ClosableQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequest", subfields: subquery)
			return self
		}
	}

	open class UnknownClosable: GraphQL.AbstractResponse, GraphQLObject, Closable {
		public typealias Query = ClosableQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "closed":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownClosable.self, field: fieldName, value: fieldValue)
				}
				return value

				case "closedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownClosable.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownClosable.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> Closable {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownClosable.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Issue":
				return try Issue.init(fields: fields)

				case "Milestone":
				return try Milestone.init(fields: fields)

				case "Project":
				return try Project.init(fields: fields)

				case "PullRequest":
				return try PullRequest.init(fields: fields)

				default:
				return try UnknownClosable.init(fields: fields)
			}
		}

		open var closed: Bool {
			return internalGetClosed()
		}

		func internalGetClosed(aliasSuffix: String? = nil) -> Bool {
			return field(field: "closed", aliasSuffix: aliasSuffix) as! Bool
		}

		open var closedAt: String? {
			return internalGetClosedAt()
		}

		func internalGetClosedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "closedAt", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "closed":

				return .scalar

				case "closedAt":

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
