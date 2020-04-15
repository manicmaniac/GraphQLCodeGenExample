// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateIssuePayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UpdateIssuePayload

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> UpdateIssuePayloadQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> UpdateIssuePayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func issue(aliasSuffix: String? = nil, _ subfields: (IssueQuery) -> Void) -> UpdateIssuePayloadQuery {
			let subquery = IssueQuery()
			subfields(subquery)

			addField(field: "issue", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class UpdateIssuePayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = UpdateIssuePayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UpdateIssuePayload.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UpdateIssuePayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "issue":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UpdateIssuePayload.self, field: fieldName, value: fieldValue)
				}
				return try Issue(fields: value)

				default:
				throw SchemaViolationError(type: UpdateIssuePayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UpdateIssuePayload" }

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

		open var issue: ExampleSchema.Issue? {
			return internalGetIssue()
		}

		func internalGetIssue(aliasSuffix: String? = nil) -> ExampleSchema.Issue? {
			return field(field: "issue", aliasSuffix: aliasSuffix) as! ExampleSchema.Issue?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "actor":

				return .object

				case "clientMutationId":

				return .scalar

				case "issue":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "actor":
				return internalGetActor()?.responseObject()

				case "issue":
				return internalGetIssue()

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

					case "issue":
					if let value = internalGetIssue() {
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
