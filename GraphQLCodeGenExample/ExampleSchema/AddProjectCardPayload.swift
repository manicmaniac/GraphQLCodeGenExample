// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class AddProjectCardPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = AddProjectCardPayload

		@discardableResult
		open func cardEdge(aliasSuffix: String? = nil, _ subfields: (ProjectCardEdgeQuery) -> Void) -> AddProjectCardPayloadQuery {
			let subquery = ProjectCardEdgeQuery()
			subfields(subquery)

			addField(field: "cardEdge", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> AddProjectCardPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func projectColumn(aliasSuffix: String? = nil, _ subfields: (ProjectColumnQuery) -> Void) -> AddProjectCardPayloadQuery {
			let subquery = ProjectColumnQuery()
			subfields(subquery)

			addField(field: "projectColumn", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class AddProjectCardPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = AddProjectCardPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "cardEdge":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: AddProjectCardPayload.self, field: fieldName, value: fieldValue)
				}
				return try ProjectCardEdge(fields: value)

				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: AddProjectCardPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "projectColumn":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: AddProjectCardPayload.self, field: fieldName, value: fieldValue)
				}
				return try ProjectColumn(fields: value)

				default:
				throw SchemaViolationError(type: AddProjectCardPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "AddProjectCardPayload" }

		open var cardEdge: ExampleSchema.ProjectCardEdge? {
			return internalGetCardEdge()
		}

		func internalGetCardEdge(aliasSuffix: String? = nil) -> ExampleSchema.ProjectCardEdge? {
			return field(field: "cardEdge", aliasSuffix: aliasSuffix) as! ExampleSchema.ProjectCardEdge?
		}

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
				case "cardEdge":

				return .object

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
				case "cardEdge":
				return internalGetCardEdge()

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
					case "cardEdge":
					if let value = internalGetCardEdge() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

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
