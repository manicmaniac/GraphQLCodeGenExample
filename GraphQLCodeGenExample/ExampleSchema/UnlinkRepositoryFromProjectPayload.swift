// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UnlinkRepositoryFromProjectPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UnlinkRepositoryFromProjectPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> UnlinkRepositoryFromProjectPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func project(aliasSuffix: String? = nil, _ subfields: (ProjectQuery) -> Void) -> UnlinkRepositoryFromProjectPayloadQuery {
			let subquery = ProjectQuery()
			subfields(subquery)

			addField(field: "project", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> UnlinkRepositoryFromProjectPayloadQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class UnlinkRepositoryFromProjectPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = UnlinkRepositoryFromProjectPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnlinkRepositoryFromProjectPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "project":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnlinkRepositoryFromProjectPayload.self, field: fieldName, value: fieldValue)
				}
				return try Project(fields: value)

				case "repository":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnlinkRepositoryFromProjectPayload.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				default:
				throw SchemaViolationError(type: UnlinkRepositoryFromProjectPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UnlinkRepositoryFromProjectPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var project: ExampleSchema.Project? {
			return internalGetProject()
		}

		func internalGetProject(aliasSuffix: String? = nil) -> ExampleSchema.Project? {
			return field(field: "project", aliasSuffix: aliasSuffix) as! ExampleSchema.Project?
		}

		open var repository: ExampleSchema.Repository? {
			return internalGetRepository()
		}

		func internalGetRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository? {
			return field(field: "repository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "project":

				return .object

				case "repository":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "project":
				return internalGetProject()

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
					case "project":
					if let value = internalGetProject() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "repository":
					if let value = internalGetRepository() {
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
