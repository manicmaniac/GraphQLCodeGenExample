// Generated from graphql_swift_gen gem
import Foundation

public protocol Labelable {
	var typeName: String { get }

	var labels: ExampleSchema.LabelConnection? { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class LabelableQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Labelable

		@discardableResult
		open func labels(aliasSuffix: String? = nil, orderBy: LabelOrder? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (LabelConnectionQuery) -> Void) -> LabelableQuery {
			var args: [String] = []

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			if let after = after {
				args.append("after:\(GraphQL.quoteString(input: after))")
			}

			if let before = before {
				args.append("before:\(GraphQL.quoteString(input: before))")
			}

			if let first = first {
				args.append("first:\(first)")
			}

			if let last = last {
				args.append("last:\(last)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = LabelConnectionQuery()
			subfields(subquery)

			addField(field: "labels", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onIssue(subfields: (IssueQuery) -> Void) -> LabelableQuery {
			let subquery = IssueQuery()
			subfields(subquery)
			addInlineFragment(on: "Issue", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPullRequest(subfields: (PullRequestQuery) -> Void) -> LabelableQuery {
			let subquery = PullRequestQuery()
			subfields(subquery)
			addInlineFragment(on: "PullRequest", subfields: subquery)
			return self
		}
	}

	open class UnknownLabelable: GraphQL.AbstractResponse, GraphQLObject, Labelable {
		public typealias Query = LabelableQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "labels":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownLabelable.self, field: fieldName, value: fieldValue)
				}
				return try LabelConnection(fields: value)

				default:
				throw SchemaViolationError(type: UnknownLabelable.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> Labelable {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownLabelable.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Issue":
				return try Issue.init(fields: fields)

				case "PullRequest":
				return try PullRequest.init(fields: fields)

				default:
				return try UnknownLabelable.init(fields: fields)
			}
		}

		open var labels: ExampleSchema.LabelConnection? {
			return internalGetLabels()
		}

		open func aliasedLabels(aliasSuffix: String) -> ExampleSchema.LabelConnection? {
			return internalGetLabels(aliasSuffix: aliasSuffix)
		}

		func internalGetLabels(aliasSuffix: String? = nil) -> ExampleSchema.LabelConnection? {
			return field(field: "labels", aliasSuffix: aliasSuffix) as! ExampleSchema.LabelConnection?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "labels":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "labels":
				return internalGetLabels()

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
					case "labels":
					if let value = internalGetLabels() {
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
