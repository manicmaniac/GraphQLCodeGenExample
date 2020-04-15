// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateProjectColumnPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UpdateProjectColumnPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> UpdateProjectColumnPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func projectColumn(aliasSuffix: String? = nil, _ subfields: (ProjectColumnQuery) -> Void) -> UpdateProjectColumnPayloadQuery {
			let subquery = ProjectColumnQuery()
			subfields(subquery)

			addField(field: "projectColumn", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class UpdateProjectColumnPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = UpdateProjectColumnPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UpdateProjectColumnPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "projectColumn":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UpdateProjectColumnPayload.self, field: fieldName, value: fieldValue)
				}
				return try ProjectColumn(fields: value)

				default:
				throw SchemaViolationError(type: UpdateProjectColumnPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UpdateProjectColumnPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var projectColumn: ExampleSchema.ProjectColumn? {
			return internalGetProjectColumn()
		}

		func internalGetProjectColumn(aliasSuffix: String? = nil) -> ExampleSchema.ProjectColumn? {
			return field(field: "projectColumn", aliasSuffix: aliasSuffix) as! ExampleSchema.ProjectColumn?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "projectColumn":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "projectColumn":
				return internalGetProjectColumn()

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
					case "projectColumn":
					if let value = internalGetProjectColumn() {
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
