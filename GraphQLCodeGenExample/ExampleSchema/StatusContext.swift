// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class StatusContextQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = StatusContext

		@discardableResult
		open func avatarUrl(aliasSuffix: String? = nil, size: Int32? = nil) -> StatusContextQuery {
			var args: [String] = []

			if let size = size {
				args.append("size:\(size)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "avatarUrl", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func commit(aliasSuffix: String? = nil, _ subfields: (CommitQuery) -> Void) -> StatusContextQuery {
			let subquery = CommitQuery()
			subfields(subquery)

			addField(field: "commit", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func context(aliasSuffix: String? = nil) -> StatusContextQuery {
			addField(field: "context", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> StatusContextQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func creator(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> StatusContextQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "creator", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func description(aliasSuffix: String? = nil) -> StatusContextQuery {
			addField(field: "description", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> StatusContextQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func state(aliasSuffix: String? = nil) -> StatusContextQuery {
			addField(field: "state", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func targetUrl(aliasSuffix: String? = nil) -> StatusContextQuery {
			addField(field: "targetUrl", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class StatusContext: GraphQL.AbstractResponse, GraphQLObject, Node, StatusCheckRollupContext {
		public typealias Query = StatusContextQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "avatarUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: StatusContext.self, field: fieldName, value: fieldValue)
				}
				return value

				case "commit":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: StatusContext.self, field: fieldName, value: fieldValue)
				}
				return try Commit(fields: value)

				case "context":
				guard let value = value as? String else {
					throw SchemaViolationError(type: StatusContext.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: StatusContext.self, field: fieldName, value: fieldValue)
				}
				return value

				case "creator":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: StatusContext.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "description":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: StatusContext.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: StatusContext.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "state":
				guard let value = value as? String else {
					throw SchemaViolationError(type: StatusContext.self, field: fieldName, value: fieldValue)
				}
				return StatusState(rawValue: value) ?? .unknownValue

				case "targetUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: StatusContext.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: StatusContext.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "StatusContext" }

		open var avatarUrl: String? {
			return internalGetAvatarUrl()
		}

		open func aliasedAvatarUrl(aliasSuffix: String) -> String? {
			return internalGetAvatarUrl(aliasSuffix: aliasSuffix)
		}

		func internalGetAvatarUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "avatarUrl", aliasSuffix: aliasSuffix) as! String?
		}

		open var commit: ExampleSchema.Commit? {
			return internalGetCommit()
		}

		func internalGetCommit(aliasSuffix: String? = nil) -> ExampleSchema.Commit? {
			return field(field: "commit", aliasSuffix: aliasSuffix) as! ExampleSchema.Commit?
		}

		open var context: String {
			return internalGetContext()
		}

		func internalGetContext(aliasSuffix: String? = nil) -> String {
			return field(field: "context", aliasSuffix: aliasSuffix) as! String
		}

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var creator: Actor? {
			return internalGetCreator()
		}

		func internalGetCreator(aliasSuffix: String? = nil) -> Actor? {
			return field(field: "creator", aliasSuffix: aliasSuffix) as! Actor?
		}

		open var description: String? {
			return internalGetDescription()
		}

		func internalGetDescription(aliasSuffix: String? = nil) -> String? {
			return field(field: "description", aliasSuffix: aliasSuffix) as! String?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var state: ExampleSchema.StatusState {
			return internalGetState()
		}

		func internalGetState(aliasSuffix: String? = nil) -> ExampleSchema.StatusState {
			return field(field: "state", aliasSuffix: aliasSuffix) as! ExampleSchema.StatusState
		}

		open var targetUrl: String? {
			return internalGetTargetUrl()
		}

		func internalGetTargetUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "targetUrl", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "avatarUrl":

				return .scalar

				case "commit":

				return .object

				case "context":

				return .scalar

				case "createdAt":

				return .scalar

				case "creator":

				return .object

				case "description":

				return .scalar

				case "id":

				return .scalar

				case "state":

				return .scalar

				case "targetUrl":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "commit":
				return internalGetCommit()

				case "creator":
				return internalGetCreator()?.responseObject()

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
					case "commit":
					if let value = internalGetCommit() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "creator":
					if let value = internalGetCreator() {
						response.append(value as! GraphQL.AbstractResponse)
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
