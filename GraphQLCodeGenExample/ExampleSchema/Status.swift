// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class StatusQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Status

		@discardableResult
		open func commit(aliasSuffix: String? = nil, _ subfields: (CommitQuery) -> Void) -> StatusQuery {
			let subquery = CommitQuery()
			subfields(subquery)

			addField(field: "commit", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func context(aliasSuffix: String? = nil, name: String, _ subfields: (StatusContextQuery) -> Void) -> StatusQuery {
			var args: [String] = []

			args.append("name:\(GraphQL.quoteString(input: name))")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = StatusContextQuery()
			subfields(subquery)

			addField(field: "context", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func contexts(aliasSuffix: String? = nil, _ subfields: (StatusContextQuery) -> Void) -> StatusQuery {
			let subquery = StatusContextQuery()
			subfields(subquery)

			addField(field: "contexts", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> StatusQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func state(aliasSuffix: String? = nil) -> StatusQuery {
			addField(field: "state", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Status: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = StatusQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "commit":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Status.self, field: fieldName, value: fieldValue)
				}
				return try Commit(fields: value)

				case "context":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Status.self, field: fieldName, value: fieldValue)
				}
				return try StatusContext(fields: value)

				case "contexts":
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: Status.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try StatusContext(fields: $0) }

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Status.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "state":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Status.self, field: fieldName, value: fieldValue)
				}
				return StatusState(rawValue: value) ?? .unknownValue

				default:
				throw SchemaViolationError(type: Status.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Status" }

		open var commit: ExampleSchema.Commit? {
			return internalGetCommit()
		}

		func internalGetCommit(aliasSuffix: String? = nil) -> ExampleSchema.Commit? {
			return field(field: "commit", aliasSuffix: aliasSuffix) as! ExampleSchema.Commit?
		}

		open var context: ExampleSchema.StatusContext? {
			return internalGetContext()
		}

		open func aliasedContext(aliasSuffix: String) -> ExampleSchema.StatusContext? {
			return internalGetContext(aliasSuffix: aliasSuffix)
		}

		func internalGetContext(aliasSuffix: String? = nil) -> ExampleSchema.StatusContext? {
			return field(field: "context", aliasSuffix: aliasSuffix) as! ExampleSchema.StatusContext?
		}

		open var contexts: [ExampleSchema.StatusContext] {
			return internalGetContexts()
		}

		func internalGetContexts(aliasSuffix: String? = nil) -> [ExampleSchema.StatusContext] {
			return field(field: "contexts", aliasSuffix: aliasSuffix) as! [ExampleSchema.StatusContext]
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

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "commit":

				return .object

				case "context":

				return .object

				case "contexts":

				return .objectList

				case "id":

				return .scalar

				case "state":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "commit":
				return internalGetCommit()

				case "context":
				return internalGetContext()

				default:
				break
			}
			return nil
		}

		override open func fetchChildObjectList(key: String) -> [GraphQL.AbstractResponse] {
			switch(key) {
				case "contexts":
				return internalGetContexts()

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

					case "context":
					if let value = internalGetContext() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "contexts":
					internalGetContexts().forEach {
						response.append($0)
						response.append(contentsOf: $0.childResponseObjectMap())
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
