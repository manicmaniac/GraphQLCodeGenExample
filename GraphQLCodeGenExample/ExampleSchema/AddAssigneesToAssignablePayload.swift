// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class AddAssigneesToAssignablePayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = AddAssigneesToAssignablePayload

		@discardableResult
		open func assignable(aliasSuffix: String? = nil, _ subfields: (AssignableQuery) -> Void) -> AddAssigneesToAssignablePayloadQuery {
			let subquery = AssignableQuery()
			subfields(subquery)

			addField(field: "assignable", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> AddAssigneesToAssignablePayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class AddAssigneesToAssignablePayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = AddAssigneesToAssignablePayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "assignable":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: AddAssigneesToAssignablePayload.self, field: fieldName, value: fieldValue)
				}
				return try UnknownAssignable.create(fields: value)

				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: AddAssigneesToAssignablePayload.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: AddAssigneesToAssignablePayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "AddAssigneesToAssignablePayload" }

		open var assignable: Assignable? {
			return internalGetAssignable()
		}

		func internalGetAssignable(aliasSuffix: String? = nil) -> Assignable? {
			return field(field: "assignable", aliasSuffix: aliasSuffix) as! Assignable?
		}

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "assignable":

				return .object

				case "clientMutationId":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "assignable":
				return internalGetAssignable()?.responseObject()

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
					case "assignable":
					if let value = internalGetAssignable() {
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
