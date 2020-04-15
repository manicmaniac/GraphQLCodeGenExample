// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CodeOfConductQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = CodeOfConduct

		@discardableResult
		open func body(aliasSuffix: String? = nil) -> CodeOfConductQuery {
			addField(field: "body", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> CodeOfConductQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func key(aliasSuffix: String? = nil) -> CodeOfConductQuery {
			addField(field: "key", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> CodeOfConductQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> CodeOfConductQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> CodeOfConductQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class CodeOfConduct: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = CodeOfConductQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "body":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: CodeOfConduct.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: CodeOfConduct.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "key":
				guard let value = value as? String else {
					throw SchemaViolationError(type: CodeOfConduct.self, field: fieldName, value: fieldValue)
				}
				return value

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: CodeOfConduct.self, field: fieldName, value: fieldValue)
				}
				return value

				case "resourcePath":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: CodeOfConduct.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: CodeOfConduct.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: CodeOfConduct.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "CodeOfConduct" }

		open var body: String? {
			return internalGetBody()
		}

		func internalGetBody(aliasSuffix: String? = nil) -> String? {
			return field(field: "body", aliasSuffix: aliasSuffix) as! String?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var key: String {
			return internalGetKey()
		}

		func internalGetKey(aliasSuffix: String? = nil) -> String {
			return field(field: "key", aliasSuffix: aliasSuffix) as! String
		}

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		open var resourcePath: String? {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String? {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String?
		}

		open var url: String? {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "body":

				return .scalar

				case "id":

				return .scalar

				case "key":

				return .scalar

				case "name":

				return .scalar

				case "resourcePath":

				return .scalar

				case "url":

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
