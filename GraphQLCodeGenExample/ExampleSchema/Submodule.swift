// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class SubmoduleQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Submodule

		@discardableResult
		open func branch(aliasSuffix: String? = nil) -> SubmoduleQuery {
			addField(field: "branch", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func gitUrl(aliasSuffix: String? = nil) -> SubmoduleQuery {
			addField(field: "gitUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> SubmoduleQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func path(aliasSuffix: String? = nil) -> SubmoduleQuery {
			addField(field: "path", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func subprojectCommitOid(aliasSuffix: String? = nil) -> SubmoduleQuery {
			addField(field: "subprojectCommitOid", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Submodule: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = SubmoduleQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "branch":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Submodule.self, field: fieldName, value: fieldValue)
				}
				return value

				case "gitUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Submodule.self, field: fieldName, value: fieldValue)
				}
				return value

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Submodule.self, field: fieldName, value: fieldValue)
				}
				return value

				case "path":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Submodule.self, field: fieldName, value: fieldValue)
				}
				return value

				case "subprojectCommitOid":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Submodule.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Submodule.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Submodule" }

		open var branch: String? {
			return internalGetBranch()
		}

		func internalGetBranch(aliasSuffix: String? = nil) -> String? {
			return field(field: "branch", aliasSuffix: aliasSuffix) as! String?
		}

		open var gitUrl: String {
			return internalGetGitUrl()
		}

		func internalGetGitUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "gitUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		open var path: String {
			return internalGetPath()
		}

		func internalGetPath(aliasSuffix: String? = nil) -> String {
			return field(field: "path", aliasSuffix: aliasSuffix) as! String
		}

		open var subprojectCommitOid: String? {
			return internalGetSubprojectCommitOid()
		}

		func internalGetSubprojectCommitOid(aliasSuffix: String? = nil) -> String? {
			return field(field: "subprojectCommitOid", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "branch":

				return .scalar

				case "gitUrl":

				return .scalar

				case "name":

				return .scalar

				case "path":

				return .scalar

				case "subprojectCommitOid":

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
