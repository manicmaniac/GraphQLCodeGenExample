// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class EnterpriseRepositoryInfoQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EnterpriseRepositoryInfo

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> EnterpriseRepositoryInfoQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isPrivate(aliasSuffix: String? = nil) -> EnterpriseRepositoryInfoQuery {
			addField(field: "isPrivate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> EnterpriseRepositoryInfoQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func nameWithOwner(aliasSuffix: String? = nil) -> EnterpriseRepositoryInfoQuery {
			addField(field: "nameWithOwner", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class EnterpriseRepositoryInfo: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = EnterpriseRepositoryInfoQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "isPrivate":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: EnterpriseRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "nameWithOwner":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: EnterpriseRepositoryInfo.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EnterpriseRepositoryInfo" }

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var isPrivate: Bool {
			return internalGetIsPrivate()
		}

		func internalGetIsPrivate(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isPrivate", aliasSuffix: aliasSuffix) as! Bool
		}

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		open var nameWithOwner: String {
			return internalGetNameWithOwner()
		}

		func internalGetNameWithOwner(aliasSuffix: String? = nil) -> String {
			return field(field: "nameWithOwner", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "id":

				return .scalar

				case "isPrivate":

				return .scalar

				case "name":

				return .scalar

				case "nameWithOwner":

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
