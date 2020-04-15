// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ProjectColumnQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ProjectColumn

		@discardableResult
		open func cards(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, archivedStates: [ProjectCardArchivedState]? = nil, _ subfields: (ProjectCardConnectionQuery) -> Void) -> ProjectColumnQuery {
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

			addField(field: "cards", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> ProjectColumnQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> ProjectColumnQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> ProjectColumnQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> ProjectColumnQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func project(aliasSuffix: String? = nil, _ subfields: (ProjectQuery) -> Void) -> ProjectColumnQuery {
			let subquery = ProjectQuery()
			subfields(subquery)

			addField(field: "project", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func purpose(aliasSuffix: String? = nil) -> ProjectColumnQuery {
			addField(field: "purpose", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> ProjectColumnQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> ProjectColumnQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> ProjectColumnQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class ProjectColumn: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = ProjectColumnQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "cards":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ProjectColumn.self, field: fieldName, value: fieldValue)
				}
				return try ProjectCardConnection(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ProjectColumn.self, field: fieldName, value: fieldValue)
				}
				return value

				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ProjectColumn.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ProjectColumn.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ProjectColumn.self, field: fieldName, value: fieldValue)
				}
				return value

				case "project":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ProjectColumn.self, field: fieldName, value: fieldValue)
				}
				return try Project(fields: value)

				case "purpose":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ProjectColumn.self, field: fieldName, value: fieldValue)
				}
				return ProjectColumnPurpose(rawValue: value) ?? .unknownValue

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ProjectColumn.self, field: fieldName, value: fieldValue)
				}
				return value

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ProjectColumn.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ProjectColumn.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: ProjectColumn.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ProjectColumn" }

		open var cards: ExampleSchema.ProjectCardConnection {
			return internalGetCards()
		}

		open func aliasedCards(aliasSuffix: String) -> ExampleSchema.ProjectCardConnection {
			return internalGetCards(aliasSuffix: aliasSuffix)
		}

		func internalGetCards(aliasSuffix: String? = nil) -> ExampleSchema.ProjectCardConnection {
			return field(field: "cards", aliasSuffix: aliasSuffix) as! ExampleSchema.ProjectCardConnection
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

		open var project: ExampleSchema.Project {
			return internalGetProject()
		}

		func internalGetProject(aliasSuffix: String? = nil) -> ExampleSchema.Project {
			return field(field: "project", aliasSuffix: aliasSuffix) as! ExampleSchema.Project
		}

		open var purpose: ExampleSchema.ProjectColumnPurpose? {
			return internalGetPurpose()
		}

		func internalGetPurpose(aliasSuffix: String? = nil) -> ExampleSchema.ProjectColumnPurpose? {
			return field(field: "purpose", aliasSuffix: aliasSuffix) as! ExampleSchema.ProjectColumnPurpose?
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
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
				case "cards":

				return .object

				case "createdAt":

				return .scalar

				case "databaseId":

				return .scalar

				case "id":

				return .scalar

				case "name":

				return .scalar

				case "project":

				return .object

				case "purpose":

				return .scalar

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
				case "cards":
				return internalGetCards()

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
					case "cards":
					response.append(internalGetCards())
					response.append(contentsOf: internalGetCards().childResponseObjectMap())

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
