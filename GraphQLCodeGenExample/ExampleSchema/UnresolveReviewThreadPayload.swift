// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UnresolveReviewThreadPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UnresolveReviewThreadPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> UnresolveReviewThreadPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func thread(aliasSuffix: String? = nil, _ subfields: (PullRequestReviewThreadQuery) -> Void) -> UnresolveReviewThreadPayloadQuery {
			let subquery = PullRequestReviewThreadQuery()
			subfields(subquery)

			addField(field: "thread", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class UnresolveReviewThreadPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = UnresolveReviewThreadPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnresolveReviewThreadPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "thread":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnresolveReviewThreadPayload.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestReviewThread(fields: value)

				default:
				throw SchemaViolationError(type: UnresolveReviewThreadPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UnresolveReviewThreadPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var thread: ExampleSchema.PullRequestReviewThread? {
			return internalGetThread()
		}

		func internalGetThread(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestReviewThread? {
			return field(field: "thread", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestReviewThread?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "thread":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "thread":
				return internalGetThread()

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
					case "thread":
					if let value = internalGetThread() {
						response.append(value)
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
