// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class BlameRangeQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = BlameRange

		@discardableResult
		open func age(aliasSuffix: String? = nil) -> BlameRangeQuery {
			addField(field: "age", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func commit(aliasSuffix: String? = nil, _ subfields: (CommitQuery) -> Void) -> BlameRangeQuery {
			let subquery = CommitQuery()
			subfields(subquery)

			addField(field: "commit", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func endingLine(aliasSuffix: String? = nil) -> BlameRangeQuery {
			addField(field: "endingLine", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func startingLine(aliasSuffix: String? = nil) -> BlameRangeQuery {
			addField(field: "startingLine", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class BlameRange: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = BlameRangeQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "age":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: BlameRange.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "commit":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: BlameRange.self, field: fieldName, value: fieldValue)
				}
				return try Commit(fields: value)

				case "endingLine":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: BlameRange.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "startingLine":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: BlameRange.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				default:
				throw SchemaViolationError(type: BlameRange.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "BlameRange" }

		open var age: Int32 {
			return internalGetAge()
		}

		func internalGetAge(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "age", aliasSuffix: aliasSuffix) as! Int32
		}

		open var commit: ExampleSchema.Commit {
			return internalGetCommit()
		}

		func internalGetCommit(aliasSuffix: String? = nil) -> ExampleSchema.Commit {
			return field(field: "commit", aliasSuffix: aliasSuffix) as! ExampleSchema.Commit
		}

		open var endingLine: Int32 {
			return internalGetEndingLine()
		}

		func internalGetEndingLine(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "endingLine", aliasSuffix: aliasSuffix) as! Int32
		}

		open var startingLine: Int32 {
			return internalGetStartingLine()
		}

		func internalGetStartingLine(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "startingLine", aliasSuffix: aliasSuffix) as! Int32
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "age":

				return .scalar

				case "commit":

				return .object

				case "endingLine":

				return .scalar

				case "startingLine":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "commit":
				return internalGetCommit()

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
					response.append(internalGetCommit())
					response.append(contentsOf: internalGetCommit().childResponseObjectMap())

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
