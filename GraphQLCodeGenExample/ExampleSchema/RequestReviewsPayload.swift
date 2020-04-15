// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RequestReviewsPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RequestReviewsPayload

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> RequestReviewsPayloadQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> RequestReviewsPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pullRequest(aliasSuffix: String? = nil, _ subfields: (PullRequestQuery) -> Void) -> RequestReviewsPayloadQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)

			addField(field: "pullRequest", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func requestedReviewersEdge(aliasSuffix: String? = nil, _ subfields: (UserEdgeQuery) -> Void) -> RequestReviewsPayloadQuery {
			let subquery = UserEdgeQuery()
			subfields(subquery)

			addField(field: "requestedReviewersEdge", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class RequestReviewsPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = RequestReviewsPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RequestReviewsPayload.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: RequestReviewsPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "pullRequest":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RequestReviewsPayload.self, field: fieldName, value: fieldValue)
				}
				return try PullRequest(fields: value)

				case "requestedReviewersEdge":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RequestReviewsPayload.self, field: fieldName, value: fieldValue)
				}
				return try UserEdge(fields: value)

				default:
				throw SchemaViolationError(type: RequestReviewsPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "RequestReviewsPayload" }

		open var actor: Actor? {
			return internalGetActor()
		}

		func internalGetActor(aliasSuffix: String? = nil) -> Actor? {
			return field(field: "actor", aliasSuffix: aliasSuffix) as! Actor?
		}

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var pullRequest: ExampleSchema.PullRequest? {
			return internalGetPullRequest()
		}

		func internalGetPullRequest(aliasSuffix: String? = nil) -> ExampleSchema.PullRequest? {
			return field(field: "pullRequest", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequest?
		}

		open var requestedReviewersEdge: ExampleSchema.UserEdge? {
			return internalGetRequestedReviewersEdge()
		}

		func internalGetRequestedReviewersEdge(aliasSuffix: String? = nil) -> ExampleSchema.UserEdge? {
			return field(field: "requestedReviewersEdge", aliasSuffix: aliasSuffix) as! ExampleSchema.UserEdge?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "actor":

				return .object

				case "clientMutationId":

				return .scalar

				case "pullRequest":

				return .object

				case "requestedReviewersEdge":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "actor":
				return internalGetActor()?.responseObject()

				case "pullRequest":
				return internalGetPullRequest()

				case "requestedReviewersEdge":
				return internalGetRequestedReviewersEdge()

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
					case "actor":
					if let value = internalGetActor() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "pullRequest":
					if let value = internalGetPullRequest() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "requestedReviewersEdge":
					if let value = internalGetRequestedReviewersEdge() {
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
