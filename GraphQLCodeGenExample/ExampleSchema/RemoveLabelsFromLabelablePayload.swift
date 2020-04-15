// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class RemoveLabelsFromLabelablePayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RemoveLabelsFromLabelablePayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> RemoveLabelsFromLabelablePayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func labelable(aliasSuffix: String? = nil, _ subfields: (LabelableQuery) -> Void) -> RemoveLabelsFromLabelablePayloadQuery {
			let subquery = LabelableQuery()
			subfields(subquery)

			addField(field: "labelable", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class RemoveLabelsFromLabelablePayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = RemoveLabelsFromLabelablePayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: RemoveLabelsFromLabelablePayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "labelable":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: RemoveLabelsFromLabelablePayload.self, field: fieldName, value: fieldValue)
				}
				return try UnknownLabelable.create(fields: value)

				default:
				throw SchemaViolationError(type: RemoveLabelsFromLabelablePayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "RemoveLabelsFromLabelablePayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var labelable: Labelable? {
			return internalGetLabelable()
		}

		func internalGetLabelable(aliasSuffix: String? = nil) -> Labelable? {
			return field(field: "labelable", aliasSuffix: aliasSuffix) as! Labelable?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "labelable":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "labelable":
				return internalGetLabelable()?.responseObject()

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
					case "labelable":
					if let value = internalGetLabelable() {
						response.append(value as! GraphQL.AbstractResponse)
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
