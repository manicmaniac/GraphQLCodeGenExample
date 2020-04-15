// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RemoveReactionPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RemoveReactionPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> RemoveReactionPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func reaction(aliasSuffix: String? = nil, _ subfields: (ReactionQuery) -> Void) -> RemoveReactionPayloadQuery {
			let subquery = ReactionQuery()
			subfields(subquery)

			addField(field: "reaction", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func subject(aliasSuffix: String? = nil, _ subfields: (ReactableQuery) -> Void) -> RemoveReactionPayloadQuery {
			let subquery = ReactableQuery()
			subfields(subquery)

			addField(field: "subject", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class RemoveReactionPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = RemoveReactionPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: RemoveReactionPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "reaction":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RemoveReactionPayload.self, field: fieldName, value: fieldValue)
				}
				return try Reaction(fields: value)

				case "subject":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RemoveReactionPayload.self, field: fieldName, value: fieldValue)
				}
				return try UnknownReactable.create(fields: value)

				default:
				throw SchemaViolationError(type: RemoveReactionPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "RemoveReactionPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var reaction: ExampleSchema.Reaction? {
			return internalGetReaction()
		}

		func internalGetReaction(aliasSuffix: String? = nil) -> ExampleSchema.Reaction? {
			return field(field: "reaction", aliasSuffix: aliasSuffix) as! ExampleSchema.Reaction?
		}

		open var subject: Reactable? {
			return internalGetSubject()
		}

		func internalGetSubject(aliasSuffix: String? = nil) -> Reactable? {
			return field(field: "subject", aliasSuffix: aliasSuffix) as! Reactable?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "reaction":

				return .object

				case "subject":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "reaction":
				return internalGetReaction()

				case "subject":
				return internalGetSubject()?.responseObject()

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
					case "reaction":
					if let value = internalGetReaction() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "subject":
					if let value = internalGetSubject() {
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
