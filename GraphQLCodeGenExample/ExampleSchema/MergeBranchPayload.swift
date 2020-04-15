// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class MergeBranchPayloadQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = MergeBranchPayload

		@discardableResult
		open func clientMutationId(aliasSuffix: String? = nil) -> MergeBranchPayloadQuery {
			addField(field: "clientMutationId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func mergeCommit(aliasSuffix: String? = nil, _ subfields: (CommitQuery) -> Void) -> MergeBranchPayloadQuery {
			let subquery = CommitQuery()
			subfields(subquery)

			addField(field: "mergeCommit", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class MergeBranchPayload: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = MergeBranchPayloadQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "clientMutationId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MergeBranchPayload.self, field: fieldName, value: fieldValue)
				}
				return value

				case "mergeCommit":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: MergeBranchPayload.self, field: fieldName, value: fieldValue)
				}
				return try Commit(fields: value)

				default:
				throw SchemaViolationError(type: MergeBranchPayload.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "MergeBranchPayload" }

		open var clientMutationId: String? {
			return internalGetClientMutationId()
		}

		func internalGetClientMutationId(aliasSuffix: String? = nil) -> String? {
			return field(field: "clientMutationId", aliasSuffix: aliasSuffix) as! String?
		}

		open var mergeCommit: ExampleSchema.Commit? {
			return internalGetMergeCommit()
		}

		func internalGetMergeCommit(aliasSuffix: String? = nil) -> ExampleSchema.Commit? {
			return field(field: "mergeCommit", aliasSuffix: aliasSuffix) as! ExampleSchema.Commit?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "clientMutationId":

				return .scalar

				case "mergeCommit":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "mergeCommit":
				return internalGetMergeCommit()

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
					case "mergeCommit":
					if let value = internalGetMergeCommit() {
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
