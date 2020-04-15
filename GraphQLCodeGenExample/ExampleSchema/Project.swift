// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ProjectQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Project

		@discardableResult
		open func body(aliasSuffix: String? = nil) -> ProjectQuery {
			addField(field: "body", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func bodyHtml(aliasSuffix: String? = nil) -> ProjectQuery {
			addField(field: "bodyHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func closed(aliasSuffix: String? = nil) -> ProjectQuery {
			addField(field: "closed", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func closedAt(aliasSuffix: String? = nil) -> ProjectQuery {
			addField(field: "closedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func columns(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (ProjectColumnConnectionQuery) -> Void) -> ProjectQuery {
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

			let subquery = ProjectColumnConnectionQuery()
			subfields(subquery)

			addField(field: "columns", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> ProjectQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func creator(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> ProjectQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "creator", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> ProjectQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> ProjectQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> ProjectQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func number(aliasSuffix: String? = nil) -> ProjectQuery {
			addField(field: "number", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func owner(aliasSuffix: String? = nil, _ subfields: (ProjectOwnerQuery) -> Void) -> ProjectQuery {
			let subquery = ProjectOwnerQuery()
			subfields(subquery)

			addField(field: "owner", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func pendingCards(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, archivedStates: [ProjectCardArchivedState]? = nil, _ subfields: (ProjectCardConnectionQuery) -> Void) -> ProjectQuery {
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

			if let archivedStates = archivedStates {
				args.append("archivedStates:[\(archivedStates.map{ "\($0.rawValue)" }.joined(separator: ","))]")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = ProjectCardConnectionQuery()
			subfields(subquery)

			addField(field: "pendingCards", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> ProjectQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func state(aliasSuffix: String? = nil) -> ProjectQuery {
			addField(field: "state", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> ProjectQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> ProjectQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanUpdate(aliasSuffix: String? = nil) -> ProjectQuery {
			addField(field: "viewerCanUpdate", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Project: GraphQL.AbstractResponse, GraphQLObject, Closable, Node, Updatable {
		public typealias Query = ProjectQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "body":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Project.self, field: fieldName, value: fieldValue)
				}
				return value

				case "bodyHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Project.self, field: fieldName, value: fieldValue)
				}
				return value

				case "closed":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Project.self, field: fieldName, value: fieldValue)
				}
				return value

				case "closedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Project.self, field: fieldName, value: fieldValue)
				}
				return value

				case "columns":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Project.self, field: fieldName, value: fieldValue)
				}
				return try ProjectColumnConnection(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Project.self, field: fieldName, value: fieldValue)
				}
				return value

				case "creator":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Project.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Project.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Project.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Project.self, field: fieldName, value: fieldValue)
				}
				return value

				case "number":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Project.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "owner":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Project.self, field: fieldName, value: fieldValue)
				}
				return try UnknownProjectOwner.create(fields: value)

				case "pendingCards":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Project.self, field: fieldName, value: fieldValue)
				}
				return try ProjectCardConnection(fields: value)

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Project.self, field: fieldName, value: fieldValue)
				}
				return value

				case "state":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Project.self, field: fieldName, value: fieldValue)
				}
				return ProjectState(rawValue: value) ?? .unknownValue

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Project.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Project.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanUpdate":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Project.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Project.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Project" }

		open var body: String? {
			return internalGetBody()
		}

		func internalGetBody(aliasSuffix: String? = nil) -> String? {
			return field(field: "body", aliasSuffix: aliasSuffix) as! String?
		}

		open var bodyHtml: String {
			return internalGetBodyHtml()
		}

		func internalGetBodyHtml(aliasSuffix: String? = nil) -> String {
			return field(field: "bodyHTML", aliasSuffix: aliasSuffix) as! String
		}

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

		open var columns: ExampleSchema.ProjectColumnConnection {
			return internalGetColumns()
		}

		open func aliasedColumns(aliasSuffix: String) -> ExampleSchema.ProjectColumnConnection {
			return internalGetColumns(aliasSuffix: aliasSuffix)
		}

		func internalGetColumns(aliasSuffix: String? = nil) -> ExampleSchema.ProjectColumnConnection {
			return field(field: "columns", aliasSuffix: aliasSuffix) as! ExampleSchema.ProjectColumnConnection
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

		open var databaseId: Int32? {
			return internalGetDatabaseId()
		}

		func internalGetDatabaseId(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "databaseId", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		open var number: Int32 {
			return internalGetNumber()
		}

		func internalGetNumber(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "number", aliasSuffix: aliasSuffix) as! Int32
		}

		open var owner: ProjectOwner {
			return internalGetOwner()
		}

		func internalGetOwner(aliasSuffix: String? = nil) -> ProjectOwner {
			return field(field: "owner", aliasSuffix: aliasSuffix) as! ProjectOwner
		}

		open var pendingCards: ExampleSchema.ProjectCardConnection {
			return internalGetPendingCards()
		}

		open func aliasedPendingCards(aliasSuffix: String) -> ExampleSchema.ProjectCardConnection {
			return internalGetPendingCards(aliasSuffix: aliasSuffix)
		}

		func internalGetPendingCards(aliasSuffix: String? = nil) -> ExampleSchema.ProjectCardConnection {
			return field(field: "pendingCards", aliasSuffix: aliasSuffix) as! ExampleSchema.ProjectCardConnection
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var state: ExampleSchema.ProjectState {
			return internalGetState()
		}

		func internalGetState(aliasSuffix: String? = nil) -> ExampleSchema.ProjectState {
			return field(field: "state", aliasSuffix: aliasSuffix) as! ExampleSchema.ProjectState
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

		open var viewerCanUpdate: Bool {
			return internalGetViewerCanUpdate()
		}

		func internalGetViewerCanUpdate(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanUpdate", aliasSuffix: aliasSuffix) as! Bool
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "body":

				return .scalar

				case "bodyHTML":

				return .scalar

				case "closed":

				return .scalar

				case "closedAt":

				return .scalar

				case "columns":

				return .object

				case "createdAt":

				return .scalar

				case "creator":

				return .object

				case "databaseId":

				return .scalar

				case "id":

				return .scalar

				case "name":

				return .scalar

				case "number":

				return .scalar

				case "owner":

				return .object

				case "pendingCards":

				return .object

				case "resourcePath":

				return .scalar

				case "state":

				return .scalar

				case "updatedAt":

				return .scalar

				case "url":

				return .scalar

				case "viewerCanUpdate":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "columns":
				return internalGetColumns()

				case "creator":
				return internalGetCreator()?.responseObject()

				case "owner":
				return internalGetOwner().responseObject()

				case "pendingCards":
				return internalGetPendingCards()

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
					case "columns":
					response.append(internalGetColumns())
					response.append(contentsOf: internalGetColumns().childResponseObjectMap())

					case "creator":
					if let value = internalGetCreator() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "owner":
					response.append(internalGetOwner() as! GraphQL.AbstractResponse)
					response.append(contentsOf: internalGetOwner().childResponseObjectMap())

					case "pendingCards":
					response.append(internalGetPendingCards())
					response.append(contentsOf: internalGetPendingCards().childResponseObjectMap())

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
