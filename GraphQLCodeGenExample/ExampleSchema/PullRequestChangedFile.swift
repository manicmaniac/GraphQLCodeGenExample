// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class PullRequestChangedFileQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = PullRequestChangedFile

		@discardableResult
		open func additions(aliasSuffix: String? = nil) -> PullRequestChangedFileQuery {
			addField(field: "additions", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func deletions(aliasSuffix: String? = nil) -> PullRequestChangedFileQuery {
			addField(field: "deletions", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func path(aliasSuffix: String? = nil) -> PullRequestChangedFileQuery {
			addField(field: "path", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class PullRequestChangedFile: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = PullRequestChangedFileQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "additions":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: PullRequestChangedFile.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "deletions":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: PullRequestChangedFile.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "path":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestChangedFile.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: PullRequestChangedFile.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "PullRequestChangedFile" }

		open var additions: Int32 {
			return internalGetAdditions()
		}

		func internalGetAdditions(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "additions", aliasSuffix: aliasSuffix) as! Int32
		}

		open var deletions: Int32 {
			return internalGetDeletions()
		}

		func internalGetDeletions(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "deletions", aliasSuffix: aliasSuffix) as! Int32
		}

		open var path: String {
			return internalGetPath()
		}

		func internalGetPath(aliasSuffix: String? = nil) -> String {
			return field(field: "path", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "additions":

				return .scalar

				case "deletions":

				return .scalar

				case "path":

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
