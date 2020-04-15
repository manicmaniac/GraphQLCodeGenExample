// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ConvertProjectCardNoteToIssuePayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ConvertProjectCardNoteToIssuePayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> ConvertProjectCardNoteToIssuePayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func projectCard(aliasSuffix: String? = nil, _ subfields: (ProjectCardQuery) -> Void) -> ConvertProjectCardNoteToIssuePayloadQuery {
			let subquery = ProjectCardQuery()
			subfields(subquery)

			addField(field: "projectCard", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class ConvertProjectCardNoteToIssuePayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = ConvertProjectCardNoteToIssuePayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ConvertProjectCardNoteToIssuePayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "projectCard":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ConvertProjectCardNoteToIssuePayload.self, field: fieldName, value: fieldValue)
				}
				return try ProjectCard(fields: value)

				default:
				throw SchemaViolationError(type: ConvertProjectCardNoteToIssuePayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ConvertProjectCardNoteToIssuePayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var projectCard: ExampleSchema.ProjectCard? {
			return internalGetProjectCard()
		}

		func internalGetProjectCard(aliasSuffix: String? = nil) -> ExampleSchema.ProjectCard? {
			return field(field: "projectCard", aliasSuffix: aliasSuffix) as! ExampleSchema.ProjectCard?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "projectCard":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "projectCard":
				return internalGetProjectCard()

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
					case "projectCard":
					if let value = internalGetProjectCard() {
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
