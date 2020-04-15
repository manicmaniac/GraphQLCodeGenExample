// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class MinimizeCommentPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = MinimizeCommentPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> MinimizeCommentPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func minimizedComment(aliasSuffix: String? = nil, _ subfields: (MinimizableQuery) -> Void) -> MinimizeCommentPayloadQuery {
			let subquery = MinimizableQuery()
			subfields(subquery)

			addField(field: "minimizedComment", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class MinimizeCommentPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = MinimizeCommentPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MinimizeCommentPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "minimizedComment":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: MinimizeCommentPayload.self, field: fieldName, value: fieldValue)
				}
				return try UnknownMinimizable.create(fields: value)

				default:
				throw SchemaViolationError(type: MinimizeCommentPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "MinimizeCommentPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var minimizedComment: Minimizable? {
			return internalGetMinimizedComment()
		}

		func internalGetMinimizedComment(aliasSuffix: String? = nil) -> Minimizable? {
			return field(field: "minimizedComment", aliasSuffix: aliasSuffix) as! Minimizable?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "minimizedComment":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "minimizedComment":
				return internalGetMinimizedComment()?.responseObject()

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
					case "minimizedComment":
					if let value = internalGetMinimizedComment() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
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
