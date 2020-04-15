// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class MilestoneQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Milestone

		@discardableResult
		open func closed(aliasSuffix: String? = nil) -> MilestoneQuery {
			addField(field: "closed", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func closedAt(aliasSuffix: String? = nil) -> MilestoneQuery {
			addField(field: "closedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> MilestoneQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func creator(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> MilestoneQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "creator", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func description(aliasSuffix: String? = nil) -> MilestoneQuery {
			addField(field: "description", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func dueOn(aliasSuffix: String? = nil) -> MilestoneQuery {
			addField(field: "dueOn", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> MilestoneQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func issuePrioritiesDebug(aliasSuffix: String? = nil) -> MilestoneQuery {
			addField(field: "issuePrioritiesDebug", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func issues(aliasSuffix: String? = nil, orderBy: IssueOrder? = nil, labels: [String]? = nil, states: [IssueState]? = nil, filterBy: IssueFilters? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (IssueConnectionQuery) -> Void) -> MilestoneQuery {
			var args: [String] = []

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			if let labels = labels {
				args.append("labels:[\(labels.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let states = states {
				args.append("states:[\(states.map{ "\($0.rawValue)" }.joined(separator: ","))]")
			}

			if let filterBy = filterBy {
				args.append("filterBy:\(filterBy.serialize())")
			}

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

			let subquery = IssueConnectionQuery()
			subfields(subquery)

			addField(field: "issues", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func number(aliasSuffix: String? = nil) -> MilestoneQuery {
			addField(field: "number", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pullRequests(aliasSuffix: String? = nil, states: [PullRequestState]? = nil, labels: [String]? = nil, headRefName: String? = nil, baseRefName: String? = nil, orderBy: IssueOrder? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (PullRequestConnectionQuery) -> Void) -> MilestoneQuery {
			var args: [String] = []

			if let states = states {
				args.append("states:[\(states.map{ "\($0.rawValue)" }.joined(separator: ","))]")
			}

			if let labels = labels {
				args.append("labels:[\(labels.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let headRefName = headRefName {
				args.append("headRefName:\(GraphQL.quoteString(input: headRefName))")
			}

			if let baseRefName = baseRefName {
				args.append("baseRefName:\(GraphQL.quoteString(input: baseRefName))")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

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

			let subquery = PullRequestConnectionQuery()
			subfields(subquery)

			addField(field: "pullRequests", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> MilestoneQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> MilestoneQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func state(aliasSuffix: String? = nil) -> MilestoneQuery {
			addField(field: "state", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func title(aliasSuffix: String? = nil) -> MilestoneQuery {
			addField(field: "title", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> MilestoneQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> MilestoneQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Milestone: GraphQL.AbstractResponse, GraphQLObject, Closable, Node, UniformResourceLocatable {
		public typealias Query = MilestoneQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "closed":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return value

				case "closedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return value

				case "creator":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "description":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return value

				case "dueOn":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "issuePrioritiesDebug":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return value

				case "issues":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return try IssueConnection(fields: value)

				case "number":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "pullRequests":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestConnection(fields: value)

				case "repository":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return value

				case "state":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return MilestoneState(rawValue: value) ?? .unknownValue

				case "title":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return value

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Milestone.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Milestone" }

		open var closed: Bool {
			return internalGetClosed()
		}

		func internalGetClosed(aliasSuffix: String? = nil) -> Bool {
			return field(field: "closed", aliasSuffix: aliasSuffix) as! Bool
		}

		open var closedAt: String? {
			return internalGetClosedAt()
		}

		func internalGetClosedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "closedAt", aliasSuffix: aliasSuffix) as! String?
		}

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var creator: Actor? {
			return internalGetCreator()
		}

		func internalGetCreator(aliasSuffix: String? = nil) -> Actor? {
			return field(field: "creator", aliasSuffix: aliasSuffix) as! Actor?
		}

		open var description: String? {
			return internalGetDescription()
		}

		func internalGetDescription(aliasSuffix: String? = nil) -> String? {
			return field(field: "description", aliasSuffix: aliasSuffix) as! String?
		}

		open var dueOn: String? {
			return internalGetDueOn()
		}

		func internalGetDueOn(aliasSuffix: String? = nil) -> String? {
			return field(field: "dueOn", aliasSuffix: aliasSuffix) as! String?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var issuePrioritiesDebug: String {
			return internalGetIssuePrioritiesDebug()
		}

		func internalGetIssuePrioritiesDebug(aliasSuffix: String? = nil) -> String {
			return field(field: "issuePrioritiesDebug", aliasSuffix: aliasSuffix) as! String
		}

		open var issues: ExampleSchema.IssueConnection {
			return internalGetIssues()
		}

		open func aliasedIssues(aliasSuffix: String) -> ExampleSchema.IssueConnection {
			return internalGetIssues(aliasSuffix: aliasSuffix)
		}

		func internalGetIssues(aliasSuffix: String? = nil) -> ExampleSchema.IssueConnection {
			return field(field: "issues", aliasSuffix: aliasSuffix) as! ExampleSchema.IssueConnection
		}

		open var number: Int32 {
			return internalGetNumber()
		}

		func internalGetNumber(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "number", aliasSuffix: aliasSuffix) as! Int32
		}

		open var pullRequests: ExampleSchema.PullRequestConnection {
			return internalGetPullRequests()
		}

		open func aliasedPullRequests(aliasSuffix: String) -> ExampleSchema.PullRequestConnection {
			return internalGetPullRequests(aliasSuffix: aliasSuffix)
		}

		func internalGetPullRequests(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestConnection {
			return field(field: "pullRequests", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestConnection
		}

		open var repository: ExampleSchema.Repository {
			return internalGetRepository()
		}

		func internalGetRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository {
			return field(field: "repository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var state: ExampleSchema.MilestoneState {
			return internalGetState()
		}

		func internalGetState(aliasSuffix: String? = nil) -> ExampleSchema.MilestoneState {
			return field(field: "state", aliasSuffix: aliasSuffix) as! ExampleSchema.MilestoneState
		}

		open var title: String {
			return internalGetTitle()
		}

		func internalGetTitle(aliasSuffix: String? = nil) -> String {
			return field(field: "title", aliasSuffix: aliasSuffix) as! String
		}

		open var updatedAt: String {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String
		}

		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "closed":

				return .scalar

				case "closedAt":

				return .scalar

				case "createdAt":

				return .scalar

				case "creator":

				return .object

				case "description":

				return .scalar

				case "dueOn":

				return .scalar

				case "id":

				return .scalar

				case "issuePrioritiesDebug":

				return .scalar

				case "issues":

				return .object

				case "number":

				return .scalar

				case "pullRequests":

				return .object

				case "repository":

				return .object

				case "resourcePath":

				return .scalar

				case "state":

				return .scalar

				case "title":

				return .scalar

				case "updatedAt":

				return .scalar

				case "url":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "creator":
				return internalGetCreator()?.responseObject()

				case "issues":
				return internalGetIssues()

				case "pullRequests":
				return internalGetPullRequests()

				case "repository":
				return internalGetRepository()

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
					if let value = internalGetCreator() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "issues":
					response.append(internalGetIssues())
					response.append(contentsOf: internalGetIssues().childResponseObjectMap())

					case "pullRequests":
					response.append(internalGetPullRequests())
					response.append(contentsOf: internalGetPullRequests().childResponseObjectMap())

					case "repository":
					response.append(internalGetRepository())
					response.append(contentsOf: internalGetRepository().childResponseObjectMap())

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
