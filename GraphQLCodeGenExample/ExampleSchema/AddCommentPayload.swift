// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class AddCommentPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = AddCommentPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> AddCommentPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func commentEdge(aliasSuffix: String? = nil, _ subfields: (IssueCommentEdgeQuery) -> Void) -> AddCommentPayloadQuery {
			let subquery = IssueCommentEdgeQuery()
			subfields(subquery)

			addField(field: "commentEdge", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func subject(aliasSuffix: String? = nil, _ subfields: (NodeQuery) -> Void) -> AddCommentPayloadQuery {
			let subquery = NodeQuery()
			subfields(subquery)

			addField(field: "subject", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func timelineEdge(aliasSuffix: String? = nil, _ subfields: (IssueTimelineItemEdgeQuery) -> Void) -> AddCommentPayloadQuery {
			let subquery = IssueTimelineItemEdgeQuery()
			subfields(subquery)

			addField(field: "timelineEdge", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class AddCommentPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = AddCommentPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: AddCommentPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "commentEdge":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: AddCommentPayload.self, field: fieldName, value: fieldValue)
				}
				return try IssueCommentEdge(fields: value)

				case "subject":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: AddCommentPayload.self, field: fieldName, value: fieldValue)
				}
				return try UnknownNode.create(fields: value)

				case "timelineEdge":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: AddCommentPayload.self, field: fieldName, value: fieldValue)
				}
				return try IssueTimelineItemEdge(fields: value)

				default:
				throw SchemaViolationError(type: AddCommentPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "AddCommentPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var commentEdge: ExampleSchema.IssueCommentEdge? {
			return internalGetCommentEdge()
		}

		func internalGetCommentEdge(aliasSuffix: String? = nil) -> ExampleSchema.IssueCommentEdge? {
			return field(field: "commentEdge", aliasSuffix: aliasSuffix) as! ExampleSchema.IssueCommentEdge?
		}

		open var subject: Node? {
			return internalGetSubject()
		}

		func internalGetSubject(aliasSuffix: String? = nil) -> Node? {
			return field(field: "subject", aliasSuffix: aliasSuffix) as! Node?
		}

		open var timelineEdge: ExampleSchema.IssueTimelineItemEdge? {
			return internalGetTimelineEdge()
		}

		func internalGetTimelineEdge(aliasSuffix: String? = nil) -> ExampleSchema.IssueTimelineItemEdge? {
			return field(field: "timelineEdge", aliasSuffix: aliasSuffix) as! ExampleSchema.IssueTimelineItemEdge?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "commentEdge":

				return .object

				case "subject":

				return .object

				case "timelineEdge":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "commentEdge":
				return internalGetCommentEdge()

				case "subject":
				return internalGetSubject()?.responseObject()

				case "timelineEdge":
				return internalGetTimelineEdge()

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
					case "commentEdge":
					if let value = internalGetCommentEdge() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "subject":
					if let value = internalGetSubject() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "timelineEdge":
					if let value = internalGetTimelineEdge() {
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
