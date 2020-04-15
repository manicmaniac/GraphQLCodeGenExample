// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UnminimizeCommentPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UnminimizeCommentPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> UnminimizeCommentPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func unminimizedComment(aliasSuffix: String? = nil, _ subfields: (MinimizableQuery) -> Void) -> UnminimizeCommentPayloadQuery {
			let subquery = MinimizableQuery()
			subfields(subquery)

			addField(field: "unminimizedComment", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class UnminimizeCommentPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = UnminimizeCommentPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnminimizeCommentPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "unminimizedComment":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnminimizeCommentPayload.self, field: fieldName, value: fieldValue)
				}
				return try UnknownMinimizable.create(fields: value)

				default:
				throw SchemaViolationError(type: UnminimizeCommentPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UnminimizeCommentPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var unminimizedComment: Minimizable? {
			return internalGetUnminimizedComment()
		}

		func internalGetUnminimizedComment(aliasSuffix: String? = nil) -> Minimizable? {
			return field(field: "unminimizedComment", aliasSuffix: aliasSuffix) as! Minimizable?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "unminimizedComment":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "unminimizedComment":
				return internalGetUnminimizedComment()?.responseObject()

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
					case "unminimizedComment":
					if let value = internalGetUnminimizedComment() {
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
