// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class EnterprisePendingMemberInvitationEdgeQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EnterprisePendingMemberInvitationEdge

		@discardableResult
		open func cursor(aliasSuffix: String? = nil) -> EnterprisePendingMemberInvitationEdgeQuery {
			addField(field: "cursor", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isUnlicensed(aliasSuffix: String? = nil) -> EnterprisePendingMemberInvitationEdgeQuery {
			addField(field: "isUnlicensed", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func node(aliasSuffix: String? = nil, _ subfields: (OrganizationInvitationQuery) -> Void) -> EnterprisePendingMemberInvitationEdgeQuery {
			let subquery = OrganizationInvitationQuery()
			subfields(subquery)

			addField(field: "node", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class EnterprisePendingMemberInvitationEdge: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = EnterprisePendingMemberInvitationEdgeQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "cursor":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterprisePendingMemberInvitationEdge.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isUnlicensed":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: EnterprisePendingMemberInvitationEdge.self, field: fieldName, value: fieldValue)
				}
				return value

				case "node":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterprisePendingMemberInvitationEdge.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationInvitation(fields: value)

				default:
				throw SchemaViolationError(type: EnterprisePendingMemberInvitationEdge.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EnterprisePendingMemberInvitationEdge" }

		open var cursor: String {
			return internalGetCursor()
		}

		func internalGetCursor(aliasSuffix: String? = nil) -> String {
			return field(field: "cursor", aliasSuffix: aliasSuffix) as! String
		}

		open var isUnlicensed: Bool {
			return internalGetIsUnlicensed()
		}

		func internalGetIsUnlicensed(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isUnlicensed", aliasSuffix: aliasSuffix) as! Bool
		}

		open var node: ExampleSchema.OrganizationInvitation? {
			return internalGetNode()
		}

		func internalGetNode(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationInvitation? {
			return field(field: "node", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationInvitation?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "cursor":

				return .scalar

				case "isUnlicensed":

				return .scalar

				case "node":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "node":
				return internalGetNode()

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
					case "node":
					if let value = internalGetNode() {
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
