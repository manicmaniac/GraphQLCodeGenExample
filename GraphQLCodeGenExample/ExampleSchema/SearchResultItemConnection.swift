// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class SearchResultItemConnectionQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SearchResultItemConnection

		@discardableResult
		open func codeCount(aliasSuffix: String? = nil) -> SearchResultItemConnectionQuery {
			addField(field: "codeCount", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func edges(aliasSuffix: String? = nil, _ subfields: (SearchResultItemEdgeQuery) -> Void) -> SearchResultItemConnectionQuery {
			let subquery = SearchResultItemEdgeQuery()
			subfields(subquery)

			addField(field: "edges", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func issueCount(aliasSuffix: String? = nil) -> SearchResultItemConnectionQuery {
			addField(field: "issueCount", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func nodes(aliasSuffix: String? = nil, _ subfields: (SearchResultItemQuery) -> Void) -> SearchResultItemConnectionQuery {
			let subquery = SearchResultItemQuery()
			subfields(subquery)

			addField(field: "nodes", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func pageInfo(aliasSuffix: String? = nil, _ subfields: (PageInfoQuery) -> Void) -> SearchResultItemConnectionQuery {
			let subquery = PageInfoQuery()
			subfields(subquery)

			addField(field: "pageInfo", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func repositoryCount(aliasSuffix: String? = nil) -> SearchResultItemConnectionQuery {
			addField(field: "repositoryCount", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func userCount(aliasSuffix: String? = nil) -> SearchResultItemConnectionQuery {
			addField(field: "userCount", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func wikiCount(aliasSuffix: String? = nil) -> SearchResultItemConnectionQuery {
			addField(field: "wikiCount", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class SearchResultItemConnection: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = SearchResultItemConnectionQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "codeCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: SearchResultItemConnection.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "edges":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchResultItemConnection.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchResultItemConnection.self, field: fieldName, value: fieldValue)
				}
				return try SearchResultItemEdge(fields: value) } as [Any?]

				case "issueCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: SearchResultItemConnection.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "nodes":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: SearchResultItemConnection.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: SearchResultItemConnection.self, field: fieldName, value: fieldValue)
				}
				return try UnknownSearchResultItem.create(fields: value) } as [Any?]

				case "pageInfo":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SearchResultItemConnection.self, field: fieldName, value: fieldValue)
				}
				return try PageInfo(fields: value)

				case "repositoryCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: SearchResultItemConnection.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "userCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: SearchResultItemConnection.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "wikiCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: SearchResultItemConnection.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				default:
				throw SchemaViolationError(type: SearchResultItemConnection.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "SearchResultItemConnection" }

		open var codeCount: Int32 {
			return internalGetCodeCount()
		}

		func internalGetCodeCount(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "codeCount", aliasSuffix: aliasSuffix) as! Int32
		}

		open var edges: [ExampleSchema.SearchResultItemEdge?]? {
			return internalGetEdges()
		}

		func internalGetEdges(aliasSuffix: String? = nil) -> [ExampleSchema.SearchResultItemEdge?]? {
			return field(field: "edges", aliasSuffix: aliasSuffix) as! [ExampleSchema.SearchResultItemEdge?]?
		}

		open var issueCount: Int32 {
			return internalGetIssueCount()
		}

		func internalGetIssueCount(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "issueCount", aliasSuffix: aliasSuffix) as! Int32
		}

		open var nodes: [SearchResultItem?]? {
			return internalGetNodes()
		}

		func internalGetNodes(aliasSuffix: String? = nil) -> [SearchResultItem?]? {
			return field(field: "nodes", aliasSuffix: aliasSuffix) as! [SearchResultItem?]?
		}

		open var pageInfo: ExampleSchema.PageInfo {
			return internalGetPageInfo()
		}

		func internalGetPageInfo(aliasSuffix: String? = nil) -> ExampleSchema.PageInfo {
			return field(field: "pageInfo", aliasSuffix: aliasSuffix) as! ExampleSchema.PageInfo
		}

		open var repositoryCount: Int32 {
			return internalGetRepositoryCount()
		}

		func internalGetRepositoryCount(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "repositoryCount", aliasSuffix: aliasSuffix) as! Int32
		}

		open var userCount: Int32 {
			return internalGetUserCount()
		}

		func internalGetUserCount(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "userCount", aliasSuffix: aliasSuffix) as! Int32
		}

		open var wikiCount: Int32 {
			return internalGetWikiCount()
		}

		func internalGetWikiCount(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "wikiCount", aliasSuffix: aliasSuffix) as! Int32
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "codeCount":

				return .scalar

				case "edges":

				return .objectList

				case "issueCount":

				return .scalar

				case "nodes":

				return .scalarList

				case "pageInfo":

				return .object

				case "repositoryCount":

				return .scalar

				case "userCount":

				return .scalar

				case "wikiCount":

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
