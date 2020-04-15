// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class LanguageQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Language

		@discardableResult
		open func color(aliasSuffix: String? = nil) -> LanguageQuery {
			addField(field: "color", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> LanguageQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> LanguageQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Language: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = LanguageQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "color":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Language.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Language.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Language.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Language.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Language" }

		open var color: String? {
			return internalGetColor()
		}

		func internalGetColor(aliasSuffix: String? = nil) -> String? {
			return field(field: "color", aliasSuffix: aliasSuffix) as! String?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "color":

				return .scalar

				case "id":

				return .scalar

				case "name":

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
