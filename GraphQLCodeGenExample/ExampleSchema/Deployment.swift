// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class DeploymentQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Deployment

		@discardableResult
		open func commit(aliasSuffix: String? = nil, _ subfields: (CommitQuery) -> Void) -> DeploymentQuery {
			let subquery = CommitQuery()
			subfields(subquery)

			addField(field: "commit", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func commitOid(aliasSuffix: String? = nil) -> DeploymentQuery {
			addField(field: "commitOid", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> DeploymentQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func creator(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> DeploymentQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "creator", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> DeploymentQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func description(aliasSuffix: String? = nil) -> DeploymentQuery {
			addField(field: "description", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func environment(aliasSuffix: String? = nil) -> DeploymentQuery {
			addField(field: "environment", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> DeploymentQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func latestEnvironment(aliasSuffix: String? = nil) -> DeploymentQuery {
			addField(field: "latestEnvironment", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func latestStatus(aliasSuffix: String? = nil, _ subfields: (DeploymentStatusQuery) -> Void) -> DeploymentQuery {
			let subquery = DeploymentStatusQuery()
			subfields(subquery)

			addField(field: "latestStatus", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func originalEnvironment(aliasSuffix: String? = nil) -> DeploymentQuery {
			addField(field: "originalEnvironment", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func payload(aliasSuffix: String? = nil) -> DeploymentQuery {
			addField(field: "payload", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func ref(aliasSuffix: String? = nil, _ subfields: (RefQuery) -> Void) -> DeploymentQuery {
			let subquery = RefQuery()
			subfields(subquery)

			addField(field: "ref", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> DeploymentQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func state(aliasSuffix: String? = nil) -> DeploymentQuery {
			addField(field: "state", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func statuses(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (DeploymentStatusConnectionQuery) -> Void) -> DeploymentQuery {
			var args: [String] = []

			if let after = after {
				args.append("after:\(GraphQL.quoteString(input: after))")
			}

			if let before = before {
				args.append("before:\(GraphQL.quoteString(input: before))")
			}

			if let first = first {
				args.append("first:\(first)")
			}

			if let last = last {
				args.append("last:\(last)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = DeploymentStatusConnectionQuery()
			subfields(subquery)

			addField(field: "statuses", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func task(aliasSuffix: String? = nil) -> DeploymentQuery {
			addField(field: "task", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> DeploymentQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Deployment: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = DeploymentQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "commit":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Deployment.self, field: fieldName, value: fieldValue)
				}
				return try Commit(fields: value)

				case "commitOid":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Deployment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Deployment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "creator":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Deployment.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Deployment.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "description":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Deployment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "environment":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Deployment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Deployment.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "latestEnvironment":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Deployment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "latestStatus":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Deployment.self, field: fieldName, value: fieldValue)
				}
				return try DeploymentStatus(fields: value)

				case "originalEnvironment":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Deployment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "payload":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Deployment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "ref":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Deployment.self, field: fieldName, value: fieldValue)
				}
				return try Ref(fields: value)

				case "repository":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Deployment.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "state":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Deployment.self, field: fieldName, value: fieldValue)
				}
				return DeploymentState(rawValue: value) ?? .unknownValue

				case "statuses":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Deployment.self, field: fieldName, value: fieldValue)
				}
				return try DeploymentStatusConnection(fields: value)

				case "task":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Deployment.self, field: fieldName, value: fieldValue)
				}
				return value

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Deployment.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Deployment.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Deployment" }

		open var commit: ExampleSchema.Commit? {
			return internalGetCommit()
		}

		func internalGetCommit(aliasSuffix: String? = nil) -> ExampleSchema.Commit? {
			return field(field: "commit", aliasSuffix: aliasSuffix) as! ExampleSchema.Commit?
		}

		open var commitOid: String {
			return internalGetCommitOid()
		}

		func internalGetCommitOid(aliasSuffix: String? = nil) -> String {
			return field(field: "commitOid", aliasSuffix: aliasSuffix) as! String
		}

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

		open var databaseId: Int32? {
			return internalGetDatabaseId()
		}

		func internalGetDatabaseId(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "databaseId", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var description: String? {
			return internalGetDescription()
		}

		func internalGetDescription(aliasSuffix: String? = nil) -> String? {
			return field(field: "description", aliasSuffix: aliasSuffix) as! String?
		}

		open var environment: String? {
			return internalGetEnvironment()
		}

		func internalGetEnvironment(aliasSuffix: String? = nil) -> String? {
			return field(field: "environment", aliasSuffix: aliasSuffix) as! String?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var latestEnvironment: String? {
			return internalGetLatestEnvironment()
		}

		func internalGetLatestEnvironment(aliasSuffix: String? = nil) -> String? {
			return field(field: "latestEnvironment", aliasSuffix: aliasSuffix) as! String?
		}

		open var latestStatus: ExampleSchema.DeploymentStatus? {
			return internalGetLatestStatus()
		}

		func internalGetLatestStatus(aliasSuffix: String? = nil) -> ExampleSchema.DeploymentStatus? {
			return field(field: "latestStatus", aliasSuffix: aliasSuffix) as! ExampleSchema.DeploymentStatus?
		}

		open var originalEnvironment: String? {
			return internalGetOriginalEnvironment()
		}

		func internalGetOriginalEnvironment(aliasSuffix: String? = nil) -> String? {
			return field(field: "originalEnvironment", aliasSuffix: aliasSuffix) as! String?
		}

		open var payload: String? {
			return internalGetPayload()
		}

		func internalGetPayload(aliasSuffix: String? = nil) -> String? {
			return field(field: "payload", aliasSuffix: aliasSuffix) as! String?
		}

		open var ref: ExampleSchema.Ref? {
			return internalGetRef()
		}

		func internalGetRef(aliasSuffix: String? = nil) -> ExampleSchema.Ref? {
			return field(field: "ref", aliasSuffix: aliasSuffix) as! ExampleSchema.Ref?
		}

		open var repository: ExampleSchema.Repository {
			return internalGetRepository()
		}

		func internalGetRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository {
			return field(field: "repository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository
		}

		open var state: ExampleSchema.DeploymentState? {
			return internalGetState()
		}

		func internalGetState(aliasSuffix: String? = nil) -> ExampleSchema.DeploymentState? {
			return field(field: "state", aliasSuffix: aliasSuffix) as! ExampleSchema.DeploymentState?
		}

		open var statuses: ExampleSchema.DeploymentStatusConnection? {
			return internalGetStatuses()
		}

		open func aliasedStatuses(aliasSuffix: String) -> ExampleSchema.DeploymentStatusConnection? {
			return internalGetStatuses(aliasSuffix: aliasSuffix)
		}

		func internalGetStatuses(aliasSuffix: String? = nil) -> ExampleSchema.DeploymentStatusConnection? {
			return field(field: "statuses", aliasSuffix: aliasSuffix) as! ExampleSchema.DeploymentStatusConnection?
		}

		open var task: String? {
			return internalGetTask()
		}

		func internalGetTask(aliasSuffix: String? = nil) -> String? {
			return field(field: "task", aliasSuffix: aliasSuffix) as! String?
		}

		open var updatedAt: String {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "commit":

				return .object

				case "commitOid":

				return .scalar

				case "createdAt":

				return .scalar

				case "creator":

				return .object

				case "databaseId":

				return .scalar

				case "description":

				return .scalar

				case "environment":

				return .scalar

				case "id":

				return .scalar

				case "latestEnvironment":

				return .scalar

				case "latestStatus":

				return .object

				case "originalEnvironment":

				return .scalar

				case "payload":

				return .scalar

				case "ref":

				return .object

				case "repository":

				return .object

				case "state":

				return .scalar

				case "statuses":

				return .object

				case "task":

				return .scalar

				case "updatedAt":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "commit":
				return internalGetCommit()

				case "creator":
				return internalGetCreator().responseObject()

				case "latestStatus":
				return internalGetLatestStatus()

				case "ref":
				return internalGetRef()

				case "repository":
				return internalGetRepository()

				case "statuses":
				return internalGetStatuses()

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
					case "commit":
					if let value = internalGetCommit() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "creator":
					response.append(internalGetCreator() as! GraphQL.AbstractResponse)
					response.append(contentsOf: internalGetCreator().childResponseObjectMap())

					case "latestStatus":
					if let value = internalGetLatestStatus() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "ref":
					if let value = internalGetRef() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "repository":
					response.append(internalGetRepository())
					response.append(contentsOf: internalGetRepository().childResponseObjectMap())

					case "statuses":
					if let value = internalGetStatuses() {
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
