// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class DeploymentEnvironmentChangedEventQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = DeploymentEnvironmentChangedEvent

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> DeploymentEnvironmentChangedEventQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> DeploymentEnvironmentChangedEventQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func deploymentStatus(aliasSuffix: String? = nil, _ subfields: (DeploymentStatusQuery) -> Void) -> DeploymentEnvironmentChangedEventQuery {
			let subquery = DeploymentStatusQuery()
			subfields(subquery)

			addField(field: "deploymentStatus", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> DeploymentEnvironmentChangedEventQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pullRequest(aliasSuffix: String? = nil, _ subfields: (PullRequestQuery) -> Void) -> DeploymentEnvironmentChangedEventQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)

			addField(field: "pullRequest", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class DeploymentEnvironmentChangedEvent: GraphQL.AbstractResponse, GraphQLObject, Node, PullRequestTimelineItem, PullRequestTimelineItems {
		public typealias Query = DeploymentEnvironmentChangedEventQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: DeploymentEnvironmentChangedEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeploymentEnvironmentChangedEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "deploymentStatus":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: DeploymentEnvironmentChangedEvent.self, field: fieldName, value: fieldValue)
				}
				return try DeploymentStatus(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeploymentEnvironmentChangedEvent.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "pullRequest":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: DeploymentEnvironmentChangedEvent.self, field: fieldName, value: fieldValue)
				}
				return try PullRequest(fields: value)

				default:
				throw SchemaViolationError(type: DeploymentEnvironmentChangedEvent.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "DeploymentEnvironmentChangedEvent" }

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

		open var deploymentStatus: ExampleSchema.DeploymentStatus {
			return internalGetDeploymentStatus()
		}

		func internalGetDeploymentStatus(aliasSuffix: String? = nil) -> ExampleSchema.DeploymentStatus {
			return field(field: "deploymentStatus", aliasSuffix: aliasSuffix) as! ExampleSchema.DeploymentStatus
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

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "actor":

				return .object

				case "createdAt":

				return .scalar

				case "deploymentStatus":

				return .object

				case "id":

				return .scalar

				case "pullRequest":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "actor":
				return internalGetActor()?.responseObject()

				case "deploymentStatus":
				return internalGetDeploymentStatus()

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

					case "deploymentStatus":
					response.append(internalGetDeploymentStatus())
					response.append(contentsOf: internalGetDeploymentStatus().childResponseObjectMap())

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
