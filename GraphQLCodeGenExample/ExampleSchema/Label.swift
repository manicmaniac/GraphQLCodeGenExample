// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class LabelQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Label

		@discardableResult
		open func color(aliasSuffix: String? = nil) -> LabelQuery {
			addField(field: "color", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> LabelQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func description(aliasSuffix: String? = nil) -> LabelQuery {
			addField(field: "description", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> LabelQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isDefault(aliasSuffix: String? = nil) -> LabelQuery {
			addField(field: "isDefault", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func issues(aliasSuffix: String? = nil, orderBy: IssueOrder? = nil, labels: [String]? = nil, states: [IssueState]? = nil, filterBy: IssueFilters? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (IssueConnectionQuery) -> Void) -> LabelQuery {
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
		open func name(aliasSuffix: String? = nil) -> LabelQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pullRequests(aliasSuffix: String? = nil, states: [PullRequestState]? = nil, labels: [String]? = nil, headRefName: String? = nil, baseRefName: String? = nil, orderBy: IssueOrder? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (PullRequestConnectionQuery) -> Void) -> LabelQuery {
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
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> LabelQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> LabelQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> LabelQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> LabelQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Label: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = LabelQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "color":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Label.self, field: fieldName, value: fieldValue)
				}
				return value

				case "createdAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Label.self, field: fieldName, value: fieldValue)
				}
				return value

				case "description":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Label.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Label.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "isDefault":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Label.self, field: fieldName, value: fieldValue)
				}
				return value

				case "issues":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Label.self, field: fieldName, value: fieldValue)
				}
				return try IssueConnection(fields: value)

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Label.self, field: fieldName, value: fieldValue)
				}
				return value

				case "pullRequests":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Label.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestConnection(fields: value)

				case "repository":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Label.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Label.self, field: fieldName, value: fieldValue)
				}
				return value

				case "updatedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Label.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Label.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Label.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Label" }

		open var color: String {
			return internalGetColor()
		}

		func internalGetColor(aliasSuffix: String? = nil) -> String {
			return field(field: "color", aliasSuffix: aliasSuffix) as! String
		}

		open var createdAt: String? {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String?
		}

		open var description: String? {
			return internalGetDescription()
		}

		func internalGetDescription(aliasSuffix: String? = nil) -> String? {
			return field(field: "description", aliasSuffix: aliasSuffix) as! String?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var isDefault: Bool {
			return internalGetIsDefault()
		}

		func internalGetIsDefault(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isDefault", aliasSuffix: aliasSuffix) as! Bool
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

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
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

		open var updatedAt: String? {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String?
		}

		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "color":

				return .scalar

				case "createdAt":

				return .scalar

				case "description":

				return .scalar

				case "id":

				return .scalar

				case "isDefault":

				return .scalar

				case "issues":

				return .object

				case "name":

				return .scalar

				case "pullRequests":

				return .object

				case "repository":

				return .object

				case "resourcePath":

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
