// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class DeleteProjectColumnPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = DeleteProjectColumnPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> DeleteProjectColumnPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func deletedColumnId(aliasSuffix: String? = nil) -> DeleteProjectColumnPayloadQuery {
			addField(field: "deletedColumnId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func project(aliasSuffix: String? = nil, _ subfields: (ProjectQuery) -> Void) -> DeleteProjectColumnPayloadQuery {
			let subquery = ProjectQuery()
			subfields(subquery)

			addField(field: "project", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class DeleteProjectColumnPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = DeleteProjectColumnPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeleteProjectColumnPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "deletedColumnId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: DeleteProjectColumnPayload.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "project":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: DeleteProjectColumnPayload.self, field: fieldName, value: fieldValue)
				}
				return try Project(fields: value)

				default:
				throw SchemaViolationError(type: DeleteProjectColumnPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "DeleteProjectColumnPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var deletedColumnId: GraphQL.ID? {
			return internalGetDeletedColumnId()
		}

		func internalGetDeletedColumnId(aliasSuffix: String? = nil) -> GraphQL.ID? {
			return field(field: "deletedColumnId", aliasSuffix: aliasSuffix) as! GraphQL.ID?
		}

		open var project: ExampleSchema.Project? {
			return internalGetProject()
		}

		func internalGetProject(aliasSuffix: String? = nil) -> ExampleSchema.Project? {
			return field(field: "project", aliasSuffix: aliasSuffix) as! ExampleSchema.Project?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "deletedColumnId":

				return .scalar

				case "project":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
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
					case "project":
					if let value = internalGetProject() {
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
