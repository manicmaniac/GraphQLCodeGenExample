// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CloneProjectPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = CloneProjectPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> CloneProjectPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func jobStatusId(aliasSuffix: String? = nil) -> CloneProjectPayloadQuery {
			addField(field: "jobStatusId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func project(aliasSuffix: String? = nil, _ subfields: (ProjectQuery) -> Void) -> CloneProjectPayloadQuery {
			let subquery = ProjectQuery()
			subfields(subquery)

			addField(field: "project", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class CloneProjectPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = CloneProjectPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: CloneProjectPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "jobStatusId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: CloneProjectPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "project":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: CloneProjectPayload.self, field: fieldName, value: fieldValue)
				}
				return try Project(fields: value)

				default:
				throw SchemaViolationError(type: CloneProjectPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "CloneProjectPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var jobStatusId: String? {
			return internalGetJobStatusId()
		}

		func internalGetJobStatusId(aliasSuffix: String? = nil) -> String? {
			return field(field: "jobStatusId", aliasSuffix: aliasSuffix) as! String?
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

				case "jobStatusId":

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
