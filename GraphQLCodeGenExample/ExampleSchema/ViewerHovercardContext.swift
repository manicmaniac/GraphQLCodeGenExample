// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ViewerHovercardContextQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ViewerHovercardContext

		@discardableResult
		open func message(aliasSuffix: String? = nil) -> ViewerHovercardContextQuery {
			addField(field: "message", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func octicon(aliasSuffix: String? = nil) -> ViewerHovercardContextQuery {
			addField(field: "octicon", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewer(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> ViewerHovercardContextQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "viewer", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class ViewerHovercardContext: GraphQL.AbstractResponse, GraphQLObject, HovercardContext {
		public typealias Query = ViewerHovercardContextQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "message":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ViewerHovercardContext.self, field: fieldName, value: fieldValue)
				}
				return value

				case "octicon":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ViewerHovercardContext.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewer":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ViewerHovercardContext.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				default:
				throw SchemaViolationError(type: ViewerHovercardContext.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ViewerHovercardContext" }

		open var message: String {
			return internalGetMessage()
		}

		func internalGetMessage(aliasSuffix: String? = nil) -> String {
			return field(field: "message", aliasSuffix: aliasSuffix) as! String
		}

		open var octicon: String {
			return internalGetOcticon()
		}

		func internalGetOcticon(aliasSuffix: String? = nil) -> String {
			return field(field: "octicon", aliasSuffix: aliasSuffix) as! String
		}

		open var viewer: ExampleSchema.User {
			return internalGetViewer()
		}

		func internalGetViewer(aliasSuffix: String? = nil) -> ExampleSchema.User {
			return field(field: "viewer", aliasSuffix: aliasSuffix) as! ExampleSchema.User
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "message":

				return .scalar

				case "octicon":

				return .scalar

				case "viewer":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "viewer":
				return internalGetViewer()

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
					case "viewer":
					response.append(internalGetViewer())
					response.append(contentsOf: internalGetViewer().childResponseObjectMap())

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
