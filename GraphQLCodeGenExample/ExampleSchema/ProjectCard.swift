// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ProjectCardQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ProjectCard

		@discardableResult
		open func column(aliasSuffix: String? = nil, _ subfields: (ProjectColumnQuery) -> Void) -> ProjectCardQuery {
			let subquery = ProjectColumnQuery()
			subfields(subquery)

			addField(field: "column", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func content(aliasSuffix: String? = nil, _ subfields: (ProjectCardItemQuery) -> Void) -> ProjectCardQuery {
			let subquery = ProjectCardItemQuery()
			subfields(subquery)

			addField(field: "content", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> ProjectCardQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func creator(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> ProjectCardQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "creator", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> ProjectCardQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> ProjectCardQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isArchived(aliasSuffix: String? = nil) -> ProjectCardQuery {
			addField(field: "isArchived", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func note(aliasSuffix: String? = nil) -> ProjectCardQuery {
			addField(field: "note", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func project(aliasSuffix: String? = nil, _ subfields: (ProjectQuery) -> Void) -> ProjectCardQuery {
			let subquery = ProjectQuery()
			subfields(subquery)

			addField(field: "project", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> ProjectCardQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func state(aliasSuffix: String? = nil) -> ProjectCardQuery {
			addField(field: "state", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> ProjectCardQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> ProjectCardQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class ProjectCard: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = ProjectCardQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "column":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ProjectCard.self, field: fieldName, value: fieldValue)
				}
				return try ProjectColumn(fields: value)

				case "content":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ProjectCard.self, field: fieldName, value: fieldValue)
				}
				return try UnknownProjectCardItem.create(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ProjectCard.self, field: fieldName, value: fieldValue)
				}
				return value

				case "creator":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ProjectCard.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ProjectCard.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ProjectCard.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "isArchived":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: ProjectCard.self, field: fieldName, value: fieldValue)
				}
				return value

				case "note":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ProjectCard.self, field: fieldName, value: fieldValue)
				}
				return value

				case "project":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ProjectCard.self, field: fieldName, value: fieldValue)
				}
				return try Project(fields: value)

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ProjectCard.self, field: fieldName, value: fieldValue)
				}
				return value

				case "state":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ProjectCard.self, field: fieldName, value: fieldValue)
				}
				return ProjectCardState(rawValue: value) ?? .unknownValue

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ProjectCard.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ProjectCard.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: ProjectCard.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ProjectCard" }

		open var column: ExampleSchema.ProjectColumn? {
			return internalGetColumn()
		}

		func internalGetColumn(aliasSuffix: String? = nil) -> ExampleSchema.ProjectColumn? {
			return field(field: "column", aliasSuffix: aliasSuffix) as! ExampleSchema.ProjectColumn?
		}

		open var content: ProjectCardItem? {
			return internalGetContent()
		}

		func internalGetContent(aliasSuffix: String? = nil) -> ProjectCardItem? {
			return field(field: "content", aliasSuffix: aliasSuffix) as! ProjectCardItem?
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

		open var isArchived: Bool {
			return internalGetIsArchived()
		}

		func internalGetIsArchived(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isArchived", aliasSuffix: aliasSuffix) as! Bool
		}

		open var note: String? {
			return internalGetNote()
		}

		func internalGetNote(aliasSuffix: String? = nil) -> String? {
			return field(field: "note", aliasSuffix: aliasSuffix) as! String?
		}

		open var project: ExampleSchema.Project {
			return internalGetProject()
		}

		func internalGetProject(aliasSuffix: String? = nil) -> ExampleSchema.Project {
			return field(field: "project", aliasSuffix: aliasSuffix) as! ExampleSchema.Project
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var state: ExampleSchema.ProjectCardState? {
			return internalGetState()
		}

		func internalGetState(aliasSuffix: String? = nil) -> ExampleSchema.ProjectCardState? {
			return field(field: "state", aliasSuffix: aliasSuffix) as! ExampleSchema.ProjectCardState?
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
				case "column":

				return .object

				case "content":

				return .scalar

				case "createdAt":

				return .scalar

				case "creator":

				return .object

				case "databaseId":

				return .scalar

				case "id":

				return .scalar

				case "isArchived":

				return .scalar

				case "note":

				return .scalar

				case "project":

				return .object

				case "resourcePath":

				return .scalar

				case "state":

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
				case "column":
				return internalGetColumn()

				case "creator":
				return internalGetCreator()?.responseObject()

				case "project":
				return internalGetProject()

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
					case "column":
					if let value = internalGetColumn() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "content":
					if let value = internalGetContent() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "creator":
					if let value = internalGetCreator() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "project":
					response.append(internalGetProject())
					response.append(contentsOf: internalGetProject().childResponseObjectMap())

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
