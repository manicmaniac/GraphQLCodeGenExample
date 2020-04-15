// Generated from graphql_swift_gen gem
import Foundation

public protocol StatusCheckRollupContext {
	var typeName: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class StatusCheckRollupContextQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = StatusCheckRollupContext

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onStatusContext(subfields: (StatusContextQuery) -> Void) -> StatusCheckRollupContextQuery {
			let subquery = StatusContextQuery()
			subfields(subquery)
			addInlineFragment(on: "StatusContext", subfields: subquery)
			return self
		}
	}

	open class UnknownStatusCheckRollupContext: GraphQL.AbstractResponse, GraphQLObject, StatusCheckRollupContext {
		public typealias Query = StatusCheckRollupContextQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				default:
				throw SchemaViolationError(type: UnknownStatusCheckRollupContext.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> StatusCheckRollupContext {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownStatusCheckRollupContext.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "StatusContext":
				return try StatusContext.init(fields: fields)

				default:
				return try UnknownStatusCheckRollupContext.init(fields: fields)
			}
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
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
