// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class IssueTimelineItemEdgeQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = IssueTimelineItemEdge

		@discardableResult
		open func cursor(aliasSuffix: String? = nil) -> IssueTimelineItemEdgeQuery {
			addField(field: "cursor", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func node(aliasSuffix: String? = nil, _ subfields: (IssueTimelineItemQuery) -> Void) -> IssueTimelineItemEdgeQuery {
			let subquery = IssueTimelineItemQuery()
			subfields(subquery)

			addField(field: "node", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class IssueTimelineItemEdge: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = IssueTimelineItemEdgeQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "cursor":
				guard let value = value as? String else {
					throw SchemaViolationError(type: IssueTimelineItemEdge.self, field: fieldName, value: fieldValue)
				}
				return value

				case "node":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: IssueTimelineItemEdge.self, field: fieldName, value: fieldValue)
				}
				return try UnknownIssueTimelineItem.create(fields: value)

				default:
				throw SchemaViolationError(type: IssueTimelineItemEdge.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "IssueTimelineItemEdge" }

		open var cursor: String {
			return internalGetCursor()
		}

		func internalGetCursor(aliasSuffix: String? = nil) -> String {
			return field(field: "cursor", aliasSuffix: aliasSuffix) as! String
		}

		open var node: IssueTimelineItem? {
			return internalGetNode()
		}

		func internalGetNode(aliasSuffix: String? = nil) -> IssueTimelineItem? {
			return field(field: "node", aliasSuffix: aliasSuffix) as! IssueTimelineItem?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "cursor":

				return .scalar

				case "node":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
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
			return []
		}

		open func responseObject() -> GraphQL.AbstractResponse {
			return self as GraphQL.AbstractResponse
		}
	}
}
