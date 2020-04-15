// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class StatusCheckRollupQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = StatusCheckRollup

		@discardableResult
		open func commit(aliasSuffix: String? = nil, _ subfields: (CommitQuery) -> Void) -> StatusCheckRollupQuery {
			let subquery = CommitQuery()
			subfields(subquery)

			addField(field: "commit", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func contexts(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (StatusCheckRollupContextConnectionQuery) -> Void) -> StatusCheckRollupQuery {
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

			let subquery = StatusCheckRollupContextConnectionQuery()
			subfields(subquery)

			addField(field: "contexts", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> StatusCheckRollupQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func state(aliasSuffix: String? = nil) -> StatusCheckRollupQuery {
			addField(field: "state", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class StatusCheckRollup: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = StatusCheckRollupQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "commit":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: StatusCheckRollup.self, field: fieldName, value: fieldValue)
				}
				return try Commit(fields: value)

				case "contexts":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: StatusCheckRollup.self, field: fieldName, value: fieldValue)
				}
				return try StatusCheckRollupContextConnection(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: StatusCheckRollup.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "state":
				guard let value = value as? String else {
					throw SchemaViolationError(type: StatusCheckRollup.self, field: fieldName, value: fieldValue)
				}
				return StatusState(rawValue: value) ?? .unknownValue

				default:
				throw SchemaViolationError(type: StatusCheckRollup.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "StatusCheckRollup" }

		open var commit: ExampleSchema.Commit? {
			return internalGetCommit()
		}

		func internalGetCommit(aliasSuffix: String? = nil) -> ExampleSchema.Commit? {
			return field(field: "commit", aliasSuffix: aliasSuffix) as! ExampleSchema.Commit?
		}

		open var contexts: ExampleSchema.StatusCheckRollupContextConnection {
			return internalGetContexts()
		}

		open func aliasedContexts(aliasSuffix: String) -> ExampleSchema.StatusCheckRollupContextConnection {
			return internalGetContexts(aliasSuffix: aliasSuffix)
		}

		func internalGetContexts(aliasSuffix: String? = nil) -> ExampleSchema.StatusCheckRollupContextConnection {
			return field(field: "contexts", aliasSuffix: aliasSuffix) as! ExampleSchema.StatusCheckRollupContextConnection
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

				case "contexts":

				return .object

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

				case "contexts":
				return internalGetContexts()

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

					case "contexts":
					response.append(internalGetContexts())
					response.append(contentsOf: internalGetContexts().childResponseObjectMap())

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
