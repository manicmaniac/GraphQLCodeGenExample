// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ConvertToDraftEventQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ConvertToDraftEvent

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> ConvertToDraftEventQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> ConvertToDraftEventQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> ConvertToDraftEventQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pullRequest(aliasSuffix: String? = nil, _ subfields: (PullRequestQuery) -> Void) -> ConvertToDraftEventQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)

			addField(field: "pullRequest", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> ConvertToDraftEventQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> ConvertToDraftEventQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class ConvertToDraftEvent: GraphQL.AbstractResponse, GraphQLObject, Node, PullRequestTimelineItems, UniformResourceLocatable {
		public typealias Query = ConvertToDraftEventQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ConvertToDraftEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ConvertToDraftEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ConvertToDraftEvent.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "pullRequest":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ConvertToDraftEvent.self, field: fieldName, value: fieldValue)
				}
				return try PullRequest(fields: value)

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ConvertToDraftEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ConvertToDraftEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: ConvertToDraftEvent.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ConvertToDraftEvent" }

		open var actor: Actor? {
			return internalGetActor()
		}

		func internalGetActor(aliasSuffix: String? = nil) -> Actor? {
			return field(field: "actor", aliasSuffix: aliasSuffix) as! Actor?
		}

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var pullRequest: ExampleSchema.PullRequest {
			return internalGetPullRequest()
		}

		func internalGetPullRequest(aliasSuffix: String? = nil) -> ExampleSchema.PullRequest {
			return field(field: "pullRequest", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequest
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "actor":

				return .object

				case "createdAt":

				return .scalar

				case "id":

				return .scalar

				case "pullRequest":

				return .object

				case "resourcePath":

				return .scalar

				case "url":

				return .scalar

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
					response.append(internalGetPullRequest())
					response.append(contentsOf: internalGetPullRequest().childResponseObjectMap())

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
