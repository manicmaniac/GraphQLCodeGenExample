// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class UpdateRefPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = UpdateRefPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> UpdateRefPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func ref(aliasSuffix: String? = nil, _ subfields: (RefQuery) -> Void) -> UpdateRefPayloadQuery {
			let subquery = RefQuery()
			subfields(subquery)

			addField(field: "ref", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class UpdateRefPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = UpdateRefPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UpdateRefPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "ref":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UpdateRefPayload.self, field: fieldName, value: fieldValue)
				}
				return try Ref(fields: value)

				default:
				throw SchemaViolationError(type: UpdateRefPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "UpdateRefPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var ref: ExampleSchema.Ref? {
			return internalGetRef()
		}

		func internalGetRef(aliasSuffix: String? = nil) -> ExampleSchema.Ref? {
			return field(field: "ref", aliasSuffix: aliasSuffix) as! ExampleSchema.Ref?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "ref":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "ref":
				return internalGetRef()

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
					case "ref":
					if let value = internalGetRef() {
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
