// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class EnterprisePendingMemberInvitationConnectionQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EnterprisePendingMemberInvitationConnection

		@discardableResult
		open func edges(aliasSuffix: String? = nil, _ subfields: (EnterprisePendingMemberInvitationEdgeQuery) -> Void) -> EnterprisePendingMemberInvitationConnectionQuery {
			let subquery = EnterprisePendingMemberInvitationEdgeQuery()
			subfields(subquery)

			addField(field: "edges", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func nodes(aliasSuffix: String? = nil, _ subfields: (OrganizationInvitationQuery) -> Void) -> EnterprisePendingMemberInvitationConnectionQuery {
			let subquery = OrganizationInvitationQuery()
			subfields(subquery)

			addField(field: "nodes", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func pageInfo(aliasSuffix: String? = nil, _ subfields: (PageInfoQuery) -> Void) -> EnterprisePendingMemberInvitationConnectionQuery {
			let subquery = PageInfoQuery()
			subfields(subquery)

			addField(field: "pageInfo", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func totalCount(aliasSuffix: String? = nil) -> EnterprisePendingMemberInvitationConnectionQuery {
			addField(field: "totalCount", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func totalUniqueUserCount(aliasSuffix: String? = nil) -> EnterprisePendingMemberInvitationConnectionQuery {
			addField(field: "totalUniqueUserCount", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class EnterprisePendingMemberInvitationConnection: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = EnterprisePendingMemberInvitationConnectionQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "edges":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: EnterprisePendingMemberInvitationConnection.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: EnterprisePendingMemberInvitationConnection.self, field: fieldName, value: fieldValue)
				}
				return try EnterprisePendingMemberInvitationEdge(fields: value) } as [Any?]

				case "nodes":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: EnterprisePendingMemberInvitationConnection.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: EnterprisePendingMemberInvitationConnection.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationInvitation(fields: value) } as [Any?]

				case "pageInfo":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterprisePendingMemberInvitationConnection.self, field: fieldName, value: fieldValue)
				}
				return try PageInfo(fields: value)

				case "totalCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: EnterprisePendingMemberInvitationConnection.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "totalUniqueUserCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: EnterprisePendingMemberInvitationConnection.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				default:
				throw SchemaViolationError(type: EnterprisePendingMemberInvitationConnection.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EnterprisePendingMemberInvitationConnection" }

		open var edges: [ExampleSchema.EnterprisePendingMemberInvitationEdge?]? {
			return internalGetEdges()
		}

		func internalGetEdges(aliasSuffix: String? = nil) -> [ExampleSchema.EnterprisePendingMemberInvitationEdge?]? {
			return field(field: "edges", aliasSuffix: aliasSuffix) as! [ExampleSchema.EnterprisePendingMemberInvitationEdge?]?
		}

		open var nodes: [ExampleSchema.OrganizationInvitation?]? {
			return internalGetNodes()
		}

		func internalGetNodes(aliasSuffix: String? = nil) -> [ExampleSchema.OrganizationInvitation?]? {
			return field(field: "nodes", aliasSuffix: aliasSuffix) as! [ExampleSchema.OrganizationInvitation?]?
		}

		open var pageInfo: ExampleSchema.PageInfo {
			return internalGetPageInfo()
		}

		func internalGetPageInfo(aliasSuffix: String? = nil) -> ExampleSchema.PageInfo {
			return field(field: "pageInfo", aliasSuffix: aliasSuffix) as! ExampleSchema.PageInfo
		}

		open var totalCount: Int32 {
			return internalGetTotalCount()
		}

		func internalGetTotalCount(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "totalCount", aliasSuffix: aliasSuffix) as! Int32
		}

		open var totalUniqueUserCount: Int32 {
			return internalGetTotalUniqueUserCount()
		}

		func internalGetTotalUniqueUserCount(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "totalUniqueUserCount", aliasSuffix: aliasSuffix) as! Int32
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "edges":

				return .objectList

				case "nodes":

				return .objectList

				case "pageInfo":

				return .object

				case "totalCount":

				return .scalar

				case "totalUniqueUserCount":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "pageInfo":
				return internalGetPageInfo()

				default:
				break
			}
			return nil
		}

		override open func fetchChildObjectList(key: String) -> [GraphQL.AbstractResponse] {
			switch(key) {
				case "edges":
				return internalGetEdges() ?? []

				case "nodes":
				return internalGetNodes() ?? []

				default:
				return []
			}
		}

		open func childResponseObjectMap() -> [GraphQL.AbstractResponse]  {
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "edges":
					if let value = internalGetEdges() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "nodes":
					if let value = internalGetNodes() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					case "pageInfo":
					response.append(internalGetPageInfo())
					response.append(contentsOf: internalGetPageInfo().childResponseObjectMap())

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
