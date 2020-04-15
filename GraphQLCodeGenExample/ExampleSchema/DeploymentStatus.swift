// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class DeploymentStatusQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = DeploymentStatus

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> DeploymentStatusQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func creator(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> DeploymentStatusQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "creator", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func deployment(aliasSuffix: String? = nil, _ subfields: (DeploymentQuery) -> Void) -> DeploymentStatusQuery {
			let subquery = DeploymentQuery()
			subfields(subquery)

			addField(field: "deployment", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func description(aliasSuffix: String? = nil) -> DeploymentStatusQuery {
			addField(field: "description", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func environmentUrl(aliasSuffix: String? = nil) -> DeploymentStatusQuery {
			addField(field: "environmentUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> DeploymentStatusQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func logUrl(aliasSuffix: String? = nil) -> DeploymentStatusQuery {
			addField(field: "logUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func state(aliasSuffix: String? = nil) -> DeploymentStatusQuery {
			addField(field: "state", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> DeploymentStatusQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class DeploymentStatus: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = DeploymentStatusQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeploymentStatus.self, field: fieldName, value: fieldValue)
				}
				return value

				case "creator":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: DeploymentStatus.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "deployment":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: DeploymentStatus.self, field: fieldName, value: fieldValue)
				}
				return try Deployment(fields: value)

				case "description":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeploymentStatus.self, field: fieldName, value: fieldValue)
				}
				return value

				case "environmentUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeploymentStatus.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeploymentStatus.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "logUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeploymentStatus.self, field: fieldName, value: fieldValue)
				}
				return value

				case "state":
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeploymentStatus.self, field: fieldName, value: fieldValue)
				}
				return DeploymentStatusState(rawValue: value) ?? .unknownValue

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeploymentStatus.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: DeploymentStatus.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "DeploymentStatus" }

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var creator: Actor {
			return internalGetCreator()
		}

		func internalGetCreator(aliasSuffix: String? = nil) -> Actor {
			return field(field: "creator", aliasSuffix: aliasSuffix) as! Actor
		}

		open var deployment: ExampleSchema.Deployment {
			return internalGetDeployment()
		}

		func internalGetDeployment(aliasSuffix: String? = nil) -> ExampleSchema.Deployment {
			return field(field: "deployment", aliasSuffix: aliasSuffix) as! ExampleSchema.Deployment
		}

		open var description: String? {
			return internalGetDescription()
		}

		func internalGetDescription(aliasSuffix: String? = nil) -> String? {
			return field(field: "description", aliasSuffix: aliasSuffix) as! String?
		}

		open var environmentUrl: String? {
			return internalGetEnvironmentUrl()
		}

		func internalGetEnvironmentUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "environmentUrl", aliasSuffix: aliasSuffix) as! String?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var logUrl: String? {
			return internalGetLogUrl()
		}

		func internalGetLogUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "logUrl", aliasSuffix: aliasSuffix) as! String?
		}

		open var state: ExampleSchema.DeploymentStatusState {
			return internalGetState()
		}

		func internalGetState(aliasSuffix: String? = nil) -> ExampleSchema.DeploymentStatusState {
			return field(field: "state", aliasSuffix: aliasSuffix) as! ExampleSchema.DeploymentStatusState
		}

		open var updatedAt: String {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "createdAt":

				return .scalar

				case "creator":

				return .object

				case "deployment":

				return .object

				case "description":

				return .scalar

				case "environmentUrl":

				return .scalar

				case "id":

				return .scalar

				case "logUrl":

				return .scalar

				case "state":

				return .scalar

				case "updatedAt":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "creator":
				return internalGetCreator().responseObject()

				case "deployment":
				return internalGetDeployment()

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
					case "creator":
					response.append(internalGetCreator() as! GraphQL.AbstractResponse)
					response.append(contentsOf: internalGetCreator().childResponseObjectMap())

					case "deployment":
					response.append(internalGetDeployment())
					response.append(contentsOf: internalGetDeployment().childResponseObjectMap())

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
