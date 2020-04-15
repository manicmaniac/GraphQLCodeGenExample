// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class DeployedEventQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = DeployedEvent

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> DeployedEventQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> DeployedEventQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> DeployedEventQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func deployment(aliasSuffix: String? = nil, _ subfields: (DeploymentQuery) -> Void) -> DeployedEventQuery {
			let subquery = DeploymentQuery()
			subfields(subquery)

			addField(field: "deployment", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> DeployedEventQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pullRequest(aliasSuffix: String? = nil, _ subfields: (PullRequestQuery) -> Void) -> DeployedEventQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)

			addField(field: "pullRequest", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func ref(aliasSuffix: String? = nil, _ subfields: (RefQuery) -> Void) -> DeployedEventQuery {
			let subquery = RefQuery()
			subfields(subquery)

			addField(field: "ref", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class DeployedEvent: GraphQL.AbstractResponse, GraphQLObject, Node, PullRequestTimelineItem, PullRequestTimelineItems {
		public typealias Query = DeployedEventQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: DeployedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeployedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: DeployedEvent.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "deployment":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: DeployedEvent.self, field: fieldName, value: fieldValue)
				}
				return try Deployment(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeployedEvent.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "pullRequest":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: DeployedEvent.self, field: fieldName, value: fieldValue)
				}
				return try PullRequest(fields: value)

				case "ref":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: DeployedEvent.self, field: fieldName, value: fieldValue)
				}
				return try Ref(fields: value)

				default:
				throw SchemaViolationError(type: DeployedEvent.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "DeployedEvent" }

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

		open var databaseId: Int32? {
			return internalGetDatabaseId()
		}

		func internalGetDatabaseId(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "databaseId", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var deployment: ExampleSchema.Deployment {
			return internalGetDeployment()
		}

		func internalGetDeployment(aliasSuffix: String? = nil) -> ExampleSchema.Deployment {
			return field(field: "deployment", aliasSuffix: aliasSuffix) as! ExampleSchema.Deployment
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

		open var ref: ExampleSchema.Ref? {
			return internalGetRef()
		}

		func internalGetRef(aliasSuffix: String? = nil) -> ExampleSchema.Ref? {
			return field(field: "ref", aliasSuffix: aliasSuffix) as! ExampleSchema.Ref?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "actor":

				return .object

				case "createdAt":

				return .scalar

				case "databaseId":

				return .scalar

				case "deployment":

				return .object

				case "id":

				return .scalar

				case "pullRequest":

				return .object

				case "ref":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "actor":
				return internalGetActor()?.responseObject()

				case "deployment":
				return internalGetDeployment()

				case "pullRequest":
				return internalGetPullRequest()

				case "ref":
				return internalGetRef()

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

					case "deployment":
					response.append(internalGetDeployment())
					response.append(contentsOf: internalGetDeployment().childResponseObjectMap())

					case "pullRequest":
					response.append(internalGetPullRequest())
					response.append(contentsOf: internalGetPullRequest().childResponseObjectMap())

					case "ref":
					if let value = internalGetRef() {
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
