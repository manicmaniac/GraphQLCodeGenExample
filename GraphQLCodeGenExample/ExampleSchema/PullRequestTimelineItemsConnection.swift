// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class PullRequestTimelineItemsConnectionQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = PullRequestTimelineItemsConnection

		@discardableResult
		open func edges(aliasSuffix: String? = nil, _ subfields: (PullRequestTimelineItemsEdgeQuery) -> Void) -> PullRequestTimelineItemsConnectionQuery {
			let subquery = PullRequestTimelineItemsEdgeQuery()
			subfields(subquery)

			addField(field: "edges", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func filteredCount(aliasSuffix: String? = nil) -> PullRequestTimelineItemsConnectionQuery {
			addField(field: "filteredCount", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func nodes(aliasSuffix: String? = nil, _ subfields: (PullRequestTimelineItemsQuery) -> Void) -> PullRequestTimelineItemsConnectionQuery {
			let subquery = PullRequestTimelineItemsQuery()
			subfields(subquery)

			addField(field: "nodes", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func pageCount(aliasSuffix: String? = nil) -> PullRequestTimelineItemsConnectionQuery {
			addField(field: "pageCount", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pageInfo(aliasSuffix: String? = nil, _ subfields: (PageInfoQuery) -> Void) -> PullRequestTimelineItemsConnectionQuery {
			let subquery = PageInfoQuery()
			subfields(subquery)

			addField(field: "pageInfo", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func totalCount(aliasSuffix: String? = nil) -> PullRequestTimelineItemsConnectionQuery {
			addField(field: "totalCount", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> PullRequestTimelineItemsConnectionQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class PullRequestTimelineItemsConnection: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = PullRequestTimelineItemsConnectionQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "edges":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: PullRequestTimelineItemsConnection.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: PullRequestTimelineItemsConnection.self, field: fieldName, value: fieldValue)
				}
				return try PullRequestTimelineItemsEdge(fields: value) } as [Any?]

				case "filteredCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: PullRequestTimelineItemsConnection.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "nodes":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: PullRequestTimelineItemsConnection.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: PullRequestTimelineItemsConnection.self, field: fieldName, value: fieldValue)
				}
				return try UnknownPullRequestTimelineItems.create(fields: value) } as [Any?]

				case "pageCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: PullRequestTimelineItemsConnection.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "pageInfo":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: PullRequestTimelineItemsConnection.self, field: fieldName, value: fieldValue)
				}
				return try PageInfo(fields: value)

				case "totalCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: PullRequestTimelineItemsConnection.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PullRequestTimelineItemsConnection.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: PullRequestTimelineItemsConnection.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "PullRequestTimelineItemsConnection" }

		open var edges: [ExampleSchema.PullRequestTimelineItemsEdge?]? {
			return internalGetEdges()
		}

		func internalGetEdges(aliasSuffix: String? = nil) -> [ExampleSchema.PullRequestTimelineItemsEdge?]? {
			return field(field: "edges", aliasSuffix: aliasSuffix) as! [ExampleSchema.PullRequestTimelineItemsEdge?]?
		}

		open var filteredCount: Int32 {
			return internalGetFilteredCount()
		}

		func internalGetFilteredCount(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "filteredCount", aliasSuffix: aliasSuffix) as! Int32
		}

		open var nodes: [PullRequestTimelineItems?]? {
			return internalGetNodes()
		}

		func internalGetNodes(aliasSuffix: String? = nil) -> [PullRequestTimelineItems?]? {
			return field(field: "nodes", aliasSuffix: aliasSuffix) as! [PullRequestTimelineItems?]?
		}

		open var pageCount: Int32 {
			return internalGetPageCount()
		}

		func internalGetPageCount(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "pageCount", aliasSuffix: aliasSuffix) as! Int32
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

		open var updatedAt: String {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "edges":

				return .objectList

				case "filteredCount":

				return .scalar

				case "nodes":

				return .scalarList

				case "pageCount":

				return .scalar

				case "pageInfo":

				return .object

				case "totalCount":

				return .scalar

				case "updatedAt":

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
								response.append(value as! GraphQL.AbstractResponse)
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
