// Generated from graphql_swift_gen gem
import Foundation

public protocol Lockable {
	var typeName: String { get }

	var activeLockReason: ExampleSchema.LockReason? { get }

	var locked: Bool { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class LockableQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Lockable

		@discardableResult
		open func activeLockReason(aliasSuffix: String? = nil) -> LockableQuery {
			addField(field: "activeLockReason", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func locked(aliasSuffix: String? = nil) -> LockableQuery {
			addField(field: "locked", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onIssue(subfields: (IssueQuery) -> Void) -> LockableQuery {
			let subquery = IssueQuery()
			subfields(subquery)
			addInlineFragment(on: "Issue", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequest(subfields: (PullRequestQuery) -> Void) -> LockableQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequest", subfields: subquery)
			return self
		}
	}

	open class UnknownLockable: GraphQL.AbstractResponse, GraphQLObject, Lockable {
		public typealias Query = LockableQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "activeLockReason":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownLockable.self, field: fieldName, value: fieldValue)
				}
				return LockReason(rawValue: value) ?? .unknownValue

				case "locked":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownLockable.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownLockable.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> Lockable {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownLockable.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Issue":
				return try Issue.init(fields: fields)

				case "PullRequest":
				return try PullRequest.init(fields: fields)

				default:
				return try UnknownLockable.init(fields: fields)
			}
		}

		open var activeLockReason: ExampleSchema.LockReason? {
			return internalGetActiveLockReason()
		}

		func internalGetActiveLockReason(aliasSuffix: String? = nil) -> ExampleSchema.LockReason? {
			return field(field: "activeLockReason", aliasSuffix: aliasSuffix) as! ExampleSchema.LockReason?
		}

		open var locked: Bool {
			return internalGetLocked()
		}

		func internalGetLocked(aliasSuffix: String? = nil) -> Bool {
			return field(field: "locked", aliasSuffix: aliasSuffix) as! Bool
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "activeLockReason":

				return .scalar

				case "locked":

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
