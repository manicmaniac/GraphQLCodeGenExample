// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ReactionGroupQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ReactionGroup

		@discardableResult
		open func content(aliasSuffix: String? = nil) -> ReactionGroupQuery {
			addField(field: "content", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> ReactionGroupQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func subject(aliasSuffix: String? = nil, _ subfields: (ReactableQuery) -> Void) -> ReactionGroupQuery {
			let subquery = ReactableQuery()
			subfields(subquery)

			addField(field: "subject", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func users(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (ReactingUserConnectionQuery) -> Void) -> ReactionGroupQuery {
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

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = ReactingUserConnectionQuery()
			subfields(subquery)

			addField(field: "users", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func viewerHasReacted(aliasSuffix: String? = nil) -> ReactionGroupQuery {
			addField(field: "viewerHasReacted", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class ReactionGroup: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = ReactionGroupQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "content":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReactionGroup.self, field: fieldName, value: fieldValue)
				}
				return ReactionContent(rawValue: value) ?? .unknownValue

				case "createdAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReactionGroup.self, field: fieldName, value: fieldValue)
				}
				return value

				case "subject":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ReactionGroup.self, field: fieldName, value: fieldValue)
				}
				return try UnknownReactable.create(fields: value)

				case "users":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ReactionGroup.self, field: fieldName, value: fieldValue)
				}
				return try ReactingUserConnection(fields: value)

				case "viewerHasReacted":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: ReactionGroup.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: ReactionGroup.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ReactionGroup" }

		open var content: ExampleSchema.ReactionContent {
			return internalGetContent()
		}

		func internalGetContent(aliasSuffix: String? = nil) -> ExampleSchema.ReactionContent {
			return field(field: "content", aliasSuffix: aliasSuffix) as! ExampleSchema.ReactionContent
		}

		open var createdAt: String? {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String?
		}

		open var subject: Reactable {
			return internalGetSubject()
		}

		func internalGetSubject(aliasSuffix: String? = nil) -> Reactable {
			return field(field: "subject", aliasSuffix: aliasSuffix) as! Reactable
		}

		open var users: ExampleSchema.ReactingUserConnection {
			return internalGetUsers()
		}

		open func aliasedUsers(aliasSuffix: String) -> ExampleSchema.ReactingUserConnection {
			return internalGetUsers(aliasSuffix: aliasSuffix)
		}

		func internalGetUsers(aliasSuffix: String? = nil) -> ExampleSchema.ReactingUserConnection {
			return field(field: "users", aliasSuffix: aliasSuffix) as! ExampleSchema.ReactingUserConnection
		}

		open var viewerHasReacted: Bool {
			return internalGetViewerHasReacted()
		}

		func internalGetViewerHasReacted(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerHasReacted", aliasSuffix: aliasSuffix) as! Bool
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "content":

				return .scalar

				case "createdAt":

				return .scalar

				case "subject":

				return .object

				case "users":

				return .object

				case "viewerHasReacted":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "subject":
				return internalGetSubject().responseObject()

				case "users":
				return internalGetUsers()

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
					case "subject":
					response.append(internalGetSubject() as! GraphQL.AbstractResponse)
					response.append(contentsOf: internalGetSubject().childResponseObjectMap())

					case "users":
					response.append(internalGetUsers())
					response.append(contentsOf: internalGetUsers().childResponseObjectMap())

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
