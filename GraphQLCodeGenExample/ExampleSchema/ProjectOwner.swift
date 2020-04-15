// Generated from graphql_swift_gen gem
import Foundation

public protocol ProjectOwner {
	var typeName: String { get }

	var id: GraphQL.ID { get }

	var project: ExampleSchema.Project? { get }

	var projects: ExampleSchema.ProjectConnection { get }

	var projectsResourcePath: String { get }

	var projectsUrl: String { get }

	var viewerCanCreateProjects: Bool { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class ProjectOwnerQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ProjectOwner

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> ProjectOwnerQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func project(aliasSuffix: String? = nil, number: Int32, _ subfields: (ProjectQuery) -> Void) -> ProjectOwnerQuery {
			var args: [String] = []

			args.append("number:\(number)")

			let argsString = "(\(args.joined(separator: ",")))"

			let subquery = ProjectQuery()
			subfields(subquery)

			addField(field: "project", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func projects(aliasSuffix: String? = nil, orderBy: ProjectOrder? = nil, search: String? = nil, states: [ProjectState]? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (ProjectConnectionQuery) -> Void) -> ProjectOwnerQuery {
			var args: [String] = []

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			if let search = search {
				args.append("search:\(GraphQL.quoteString(input: search))")
			}

			if let states = states {
				args.append("states:[\(states.map{ "\($0.rawValue)" }.joined(separator: ","))]")
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

			let subquery = ProjectConnectionQuery()
			subfields(subquery)

			addField(field: "projects", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func projectsResourcePath(aliasSuffix: String? = nil) -> ProjectOwnerQuery {
			addField(field: "projectsResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func projectsUrl(aliasSuffix: String? = nil) -> ProjectOwnerQuery {
			addField(field: "projectsUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanCreateProjects(aliasSuffix: String? = nil) -> ProjectOwnerQuery {
			addField(field: "viewerCanCreateProjects", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onOrganization(subfields: (OrganizationQuery) -> Void) -> ProjectOwnerQuery {
			let subquery = OrganizationQuery()
			subfields(subquery)
			addInlineFragment(on: "Organization", subfields: subquery)
			return self
		}

		@discardableResult
		open func onRepository(subfields: (RepositoryQuery) -> Void) -> ProjectOwnerQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)
			addInlineFragment(on: "Repository", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUser(subfields: (UserQuery) -> Void) -> ProjectOwnerQuery {
			let subquery = UserQuery()
			subfields(subquery)
			addInlineFragment(on: "User", subfields: subquery)
			return self
		}
	}

	open class UnknownProjectOwner: GraphQL.AbstractResponse, GraphQLObject, ProjectOwner {
		public typealias Query = ProjectOwnerQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownProjectOwner.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "project":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownProjectOwner.self, field: fieldName, value: fieldValue)
				}
				return try Project(fields: value)

				case "projects":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownProjectOwner.self, field: fieldName, value: fieldValue)
				}
				return try ProjectConnection(fields: value)

				case "projectsResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownProjectOwner.self, field: fieldName, value: fieldValue)
				}
				return value

				case "projectsUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownProjectOwner.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanCreateProjects":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownProjectOwner.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownProjectOwner.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> ProjectOwner {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownProjectOwner.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Organization":
				return try Organization.init(fields: fields)

				case "Repository":
				return try Repository.init(fields: fields)

				case "User":
				return try User.init(fields: fields)

				default:
				return try UnknownProjectOwner.init(fields: fields)
			}
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var project: ExampleSchema.Project? {
			return internalGetProject()
		}

		open func aliasedProject(aliasSuffix: String) -> ExampleSchema.Project? {
			return internalGetProject(aliasSuffix: aliasSuffix)
		}

		func internalGetProject(aliasSuffix: String? = nil) -> ExampleSchema.Project? {
			return field(field: "project", aliasSuffix: aliasSuffix) as! ExampleSchema.Project?
		}

		open var projects: ExampleSchema.ProjectConnection {
			return internalGetProjects()
		}

		open func aliasedProjects(aliasSuffix: String) -> ExampleSchema.ProjectConnection {
			return internalGetProjects(aliasSuffix: aliasSuffix)
		}

		func internalGetProjects(aliasSuffix: String? = nil) -> ExampleSchema.ProjectConnection {
			return field(field: "projects", aliasSuffix: aliasSuffix) as! ExampleSchema.ProjectConnection
		}

		open var projectsResourcePath: String {
			return internalGetProjectsResourcePath()
		}

		func internalGetProjectsResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "projectsResourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var projectsUrl: String {
			return internalGetProjectsUrl()
		}

		func internalGetProjectsUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "projectsUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var viewerCanCreateProjects: Bool {
			return internalGetViewerCanCreateProjects()
		}

		func internalGetViewerCanCreateProjects(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanCreateProjects", aliasSuffix: aliasSuffix) as! Bool
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "id":

				return .scalar

				case "project":

				return .object

				case "projects":

				return .object

				case "projectsResourcePath":

				return .scalar

				case "projectsUrl":

				return .scalar

				case "viewerCanCreateProjects":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "project":
				return internalGetProject()

				case "projects":
				return internalGetProjects()

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
					case "project":
					if let value = internalGetProject() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "projects":
					response.append(internalGetProjects())
					response.append(contentsOf: internalGetProjects().childResponseObjectMap())

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
