// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ReviewDismissalAllowanceQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ReviewDismissalAllowance

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (ReviewDismissalAllowanceActorQuery) -> Void) -> ReviewDismissalAllowanceQuery {
			let subquery = ReviewDismissalAllowanceActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func branchProtectionRule(aliasSuffix: String? = nil, _ subfields: (BranchProtectionRuleQuery) -> Void) -> ReviewDismissalAllowanceQuery {
			let subquery = BranchProtectionRuleQuery()
			subfields(subquery)

			addField(field: "branchProtectionRule", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> ReviewDismissalAllowanceQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class ReviewDismissalAllowance: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = ReviewDismissalAllowanceQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ReviewDismissalAllowance.self, field: fieldName, value: fieldValue)
				}
				return try UnknownReviewDismissalAllowanceActor.create(fields: value)

				case "branchProtectionRule":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ReviewDismissalAllowance.self, field: fieldName, value: fieldValue)
				}
				return try BranchProtectionRule(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ReviewDismissalAllowance.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				default:
				throw SchemaViolationError(type: ReviewDismissalAllowance.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ReviewDismissalAllowance" }

		open var actor: ReviewDismissalAllowanceActor? {
			return internalGetActor()
		}

		func internalGetActor(aliasSuffix: String? = nil) -> ReviewDismissalAllowanceActor? {
			return field(field: "actor", aliasSuffix: aliasSuffix) as! ReviewDismissalAllowanceActor?
		}

		open var branchProtectionRule: ExampleSchema.BranchProtectionRule? {
			return internalGetBranchProtectionRule()
		}

		func internalGetBranchProtectionRule(aliasSuffix: String? = nil) -> ExampleSchema.BranchProtectionRule? {
			return field(field: "branchProtectionRule", aliasSuffix: aliasSuffix) as! ExampleSchema.BranchProtectionRule?
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "actor":

				return .scalar

				case "branchProtectionRule":

				return .object

				case "id":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "branchProtectionRule":
				return internalGetBranchProtectionRule()

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
					case "actor":
					if let value = internalGetActor() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "branchProtectionRule":
					if let value = internalGetBranchProtectionRule() {
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
