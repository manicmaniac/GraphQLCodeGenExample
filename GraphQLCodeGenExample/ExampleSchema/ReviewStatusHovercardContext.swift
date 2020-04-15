// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ReviewStatusHovercardContextQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ReviewStatusHovercardContext

		@discardableResult
		open func message(aliasSuffix: String? = nil) -> ReviewStatusHovercardContextQuery {
			addField(field: "message", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func octicon(aliasSuffix: String? = nil) -> ReviewStatusHovercardContextQuery {
			addField(field: "octicon", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func reviewDecision(aliasSuffix: String? = nil) -> ReviewStatusHovercardContextQuery {
			addField(field: "reviewDecision", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class ReviewStatusHovercardContext: GraphQL.AbstractResponse, GraphQLObject, HovercardContext {
		public typealias Query = ReviewStatusHovercardContextQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "message":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReviewStatusHovercardContext.self, field: fieldName, value: fieldValue)
				}
				return value

				case "octicon":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReviewStatusHovercardContext.self, field: fieldName, value: fieldValue)
				}
				return value

				case "reviewDecision":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReviewStatusHovercardContext.self, field: fieldName, value: fieldValue)
				}
				return PullRequestReviewDecision(rawValue: value) ?? .unknownValue

				default:
				throw SchemaViolationError(type: ReviewStatusHovercardContext.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ReviewStatusHovercardContext" }

		open var message: String {
			return internalGetMessage()
		}

		func internalGetMessage(aliasSuffix: String? = nil) -> String {
			return field(field: "message", aliasSuffix: aliasSuffix) as! String
		}

		open var octicon: String {
			return internalGetOcticon()
		}

		func internalGetOcticon(aliasSuffix: String? = nil) -> String {
			return field(field: "octicon", aliasSuffix: aliasSuffix) as! String
		}

		open var reviewDecision: ExampleSchema.PullRequestReviewDecision? {
			return internalGetReviewDecision()
		}

		func internalGetReviewDecision(aliasSuffix: String? = nil) -> ExampleSchema.PullRequestReviewDecision? {
			return field(field: "reviewDecision", aliasSuffix: aliasSuffix) as! ExampleSchema.PullRequestReviewDecision?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "message":

				return .scalar

				case "octicon":

				return .scalar

				case "reviewDecision":

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
