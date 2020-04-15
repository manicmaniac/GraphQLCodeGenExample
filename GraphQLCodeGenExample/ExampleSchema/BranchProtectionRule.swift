// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class BranchProtectionRuleQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = BranchProtectionRule

		@discardableResult
		open func branchProtectionRuleConflicts(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (BranchProtectionRuleConflictConnectionQuery) -> Void) -> BranchProtectionRuleQuery {
			var args: [String] = []

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

			let subquery = BranchProtectionRuleConflictConnectionQuery()
			subfields(subquery)

			addField(field: "branchProtectionRuleConflicts", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func creator(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> BranchProtectionRuleQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "creator", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> BranchProtectionRuleQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func dismissesStaleReviews(aliasSuffix: String? = nil) -> BranchProtectionRuleQuery {
			addField(field: "dismissesStaleReviews", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> BranchProtectionRuleQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isAdminEnforced(aliasSuffix: String? = nil) -> BranchProtectionRuleQuery {
			addField(field: "isAdminEnforced", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func matchingRefs(aliasSuffix: String? = nil, query: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (RefConnectionQuery) -> Void) -> BranchProtectionRuleQuery {
			var args: [String] = []

			if let query = query {
				args.append("query:\(GraphQL.quoteString(input: query))")
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

			let subquery = RefConnectionQuery()
			subfields(subquery)

			addField(field: "matchingRefs", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func pattern(aliasSuffix: String? = nil) -> BranchProtectionRuleQuery {
			addField(field: "pattern", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pushAllowances(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (PushAllowanceConnectionQuery) -> Void) -> BranchProtectionRuleQuery {
			var args: [String] = []

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

			let subquery = PushAllowanceConnectionQuery()
			subfields(subquery)

			addField(field: "pushAllowances", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> BranchProtectionRuleQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func requiredApprovingReviewCount(aliasSuffix: String? = nil) -> BranchProtectionRuleQuery {
			addField(field: "requiredApprovingReviewCount", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func requiredStatusCheckContexts(aliasSuffix: String? = nil) -> BranchProtectionRuleQuery {
			addField(field: "requiredStatusCheckContexts", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func requiresApprovingReviews(aliasSuffix: String? = nil) -> BranchProtectionRuleQuery {
			addField(field: "requiresApprovingReviews", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func requiresCodeOwnerReviews(aliasSuffix: String? = nil) -> BranchProtectionRuleQuery {
			addField(field: "requiresCodeOwnerReviews", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func requiresCommitSignatures(aliasSuffix: String? = nil) -> BranchProtectionRuleQuery {
			addField(field: "requiresCommitSignatures", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func requiresStatusChecks(aliasSuffix: String? = nil) -> BranchProtectionRuleQuery {
			addField(field: "requiresStatusChecks", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func requiresStrictStatusChecks(aliasSuffix: String? = nil) -> BranchProtectionRuleQuery {
			addField(field: "requiresStrictStatusChecks", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func restrictsPushes(aliasSuffix: String? = nil) -> BranchProtectionRuleQuery {
			addField(field: "restrictsPushes", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func restrictsReviewDismissals(aliasSuffix: String? = nil) -> BranchProtectionRuleQuery {
			addField(field: "restrictsReviewDismissals", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func reviewDismissalAllowances(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (ReviewDismissalAllowanceConnectionQuery) -> Void) -> BranchProtectionRuleQuery {
			var args: [String] = []

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

			let subquery = ReviewDismissalAllowanceConnectionQuery()
			subfields(subquery)

			addField(field: "reviewDismissalAllowances", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}
	}

	open class BranchProtectionRule: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = BranchProtectionRuleQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "branchProtectionRuleConflicts":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
				}
				return try BranchProtectionRuleConflictConnection(fields: value)

				case "creator":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "dismissesStaleReviews":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "isAdminEnforced":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
				}
				return value

				case "matchingRefs":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
				}
				return try RefConnection(fields: value)

				case "pattern":
				guard let value = value as? String else {
					throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
				}
				return value

				case "pushAllowances":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
				}
				return try PushAllowanceConnection(fields: value)

				case "repository":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				case "requiredApprovingReviewCount":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "requiredStatusCheckContexts":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? String else {
					throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
				}
				return value } as [Any?]

				case "requiresApprovingReviews":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
				}
				return value

				case "requiresCodeOwnerReviews":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
				}
				return value

				case "requiresCommitSignatures":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
				}
				return value

				case "requiresStatusChecks":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
				}
				return value

				case "requiresStrictStatusChecks":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
				}
				return value

				case "restrictsPushes":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
				}
				return value

				case "restrictsReviewDismissals":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
				}
				return value

				case "reviewDismissalAllowances":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
				}
				return try ReviewDismissalAllowanceConnection(fields: value)

				default:
				throw SchemaViolationError(type: BranchProtectionRule.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "BranchProtectionRule" }

		open var branchProtectionRuleConflicts: ExampleSchema.BranchProtectionRuleConflictConnection {
			return internalGetBranchProtectionRuleConflicts()
		}

		open func aliasedBranchProtectionRuleConflicts(aliasSuffix: String) -> ExampleSchema.BranchProtectionRuleConflictConnection {
			return internalGetBranchProtectionRuleConflicts(aliasSuffix: aliasSuffix)
		}

		func internalGetBranchProtectionRuleConflicts(aliasSuffix: String? = nil) -> ExampleSchema.BranchProtectionRuleConflictConnection {
			return field(field: "branchProtectionRuleConflicts", aliasSuffix: aliasSuffix) as! ExampleSchema.BranchProtectionRuleConflictConnection
		}

		open var creator: Actor? {
			return internalGetCreator()
		}

		func internalGetCreator(aliasSuffix: String? = nil) -> Actor? {
			return field(field: "creator", aliasSuffix: aliasSuffix) as! Actor?
		}

		open var databaseId: Int32? {
			return internalGetDatabaseId()
		}

		func internalGetDatabaseId(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "databaseId", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var dismissesStaleReviews: Bool {
			return internalGetDismissesStaleReviews()
		}

		func internalGetDismissesStaleReviews(aliasSuffix: String? = nil) -> Bool {
			return field(field: "dismissesStaleReviews", aliasSuffix: aliasSuffix) as! Bool
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var isAdminEnforced: Bool {
			return internalGetIsAdminEnforced()
		}

		func internalGetIsAdminEnforced(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isAdminEnforced", aliasSuffix: aliasSuffix) as! Bool
		}

		open var matchingRefs: ExampleSchema.RefConnection {
			return internalGetMatchingRefs()
		}

		open func aliasedMatchingRefs(aliasSuffix: String) -> ExampleSchema.RefConnection {
			return internalGetMatchingRefs(aliasSuffix: aliasSuffix)
		}

		func internalGetMatchingRefs(aliasSuffix: String? = nil) -> ExampleSchema.RefConnection {
			return field(field: "matchingRefs", aliasSuffix: aliasSuffix) as! ExampleSchema.RefConnection
		}

		open var pattern: String {
			return internalGetPattern()
		}

		func internalGetPattern(aliasSuffix: String? = nil) -> String {
			return field(field: "pattern", aliasSuffix: aliasSuffix) as! String
		}

		open var pushAllowances: ExampleSchema.PushAllowanceConnection {
			return internalGetPushAllowances()
		}

		open func aliasedPushAllowances(aliasSuffix: String) -> ExampleSchema.PushAllowanceConnection {
			return internalGetPushAllowances(aliasSuffix: aliasSuffix)
		}

		func internalGetPushAllowances(aliasSuffix: String? = nil) -> ExampleSchema.PushAllowanceConnection {
			return field(field: "pushAllowances", aliasSuffix: aliasSuffix) as! ExampleSchema.PushAllowanceConnection
		}

		open var repository: ExampleSchema.Repository? {
			return internalGetRepository()
		}

		func internalGetRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository? {
			return field(field: "repository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository?
		}

		open var requiredApprovingReviewCount: Int32? {
			return internalGetRequiredApprovingReviewCount()
		}

		func internalGetRequiredApprovingReviewCount(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "requiredApprovingReviewCount", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var requiredStatusCheckContexts: [String?]? {
			return internalGetRequiredStatusCheckContexts()
		}

		func internalGetRequiredStatusCheckContexts(aliasSuffix: String? = nil) -> [String?]? {
			return field(field: "requiredStatusCheckContexts", aliasSuffix: aliasSuffix) as! [String?]?
		}

		open var requiresApprovingReviews: Bool {
			return internalGetRequiresApprovingReviews()
		}

		func internalGetRequiresApprovingReviews(aliasSuffix: String? = nil) -> Bool {
			return field(field: "requiresApprovingReviews", aliasSuffix: aliasSuffix) as! Bool
		}

		open var requiresCodeOwnerReviews: Bool {
			return internalGetRequiresCodeOwnerReviews()
		}

		func internalGetRequiresCodeOwnerReviews(aliasSuffix: String? = nil) -> Bool {
			return field(field: "requiresCodeOwnerReviews", aliasSuffix: aliasSuffix) as! Bool
		}

		open var requiresCommitSignatures: Bool {
			return internalGetRequiresCommitSignatures()
		}

		func internalGetRequiresCommitSignatures(aliasSuffix: String? = nil) -> Bool {
			return field(field: "requiresCommitSignatures", aliasSuffix: aliasSuffix) as! Bool
		}

		open var requiresStatusChecks: Bool {
			return internalGetRequiresStatusChecks()
		}

		func internalGetRequiresStatusChecks(aliasSuffix: String? = nil) -> Bool {
			return field(field: "requiresStatusChecks", aliasSuffix: aliasSuffix) as! Bool
		}

		open var requiresStrictStatusChecks: Bool {
			return internalGetRequiresStrictStatusChecks()
		}

		func internalGetRequiresStrictStatusChecks(aliasSuffix: String? = nil) -> Bool {
			return field(field: "requiresStrictStatusChecks", aliasSuffix: aliasSuffix) as! Bool
		}

		open var restrictsPushes: Bool {
			return internalGetRestrictsPushes()
		}

		func internalGetRestrictsPushes(aliasSuffix: String? = nil) -> Bool {
			return field(field: "restrictsPushes", aliasSuffix: aliasSuffix) as! Bool
		}

		open var restrictsReviewDismissals: Bool {
			return internalGetRestrictsReviewDismissals()
		}

		func internalGetRestrictsReviewDismissals(aliasSuffix: String? = nil) -> Bool {
			return field(field: "restrictsReviewDismissals", aliasSuffix: aliasSuffix) as! Bool
		}

		open var reviewDismissalAllowances: ExampleSchema.ReviewDismissalAllowanceConnection {
			return internalGetReviewDismissalAllowances()
		}

		open func aliasedReviewDismissalAllowances(aliasSuffix: String) -> ExampleSchema.ReviewDismissalAllowanceConnection {
			return internalGetReviewDismissalAllowances(aliasSuffix: aliasSuffix)
		}

		func internalGetReviewDismissalAllowances(aliasSuffix: String? = nil) -> ExampleSchema.ReviewDismissalAllowanceConnection {
			return field(field: "reviewDismissalAllowances", aliasSuffix: aliasSuffix) as! ExampleSchema.ReviewDismissalAllowanceConnection
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "branchProtectionRuleConflicts":

				return .object

				case "creator":

				return .object

				case "databaseId":

				return .scalar

				case "dismissesStaleReviews":

				return .scalar

				case "id":

				return .scalar

				case "isAdminEnforced":

				return .scalar

				case "matchingRefs":

				return .object

				case "pattern":

				return .scalar

				case "pushAllowances":

				return .object

				case "repository":

				return .object

				case "requiredApprovingReviewCount":

				return .scalar

				case "requiredStatusCheckContexts":

				return .scalarList

				case "requiresApprovingReviews":

				return .scalar

				case "requiresCodeOwnerReviews":

				return .scalar

				case "requiresCommitSignatures":

				return .scalar

				case "requiresStatusChecks":

				return .scalar

				case "requiresStrictStatusChecks":

				return .scalar

				case "restrictsPushes":

				return .scalar

				case "restrictsReviewDismissals":

				return .scalar

				case "reviewDismissalAllowances":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "branchProtectionRuleConflicts":
				return internalGetBranchProtectionRuleConflicts()

				case "creator":
				return internalGetCreator()?.responseObject()

				case "matchingRefs":
				return internalGetMatchingRefs()

				case "pushAllowances":
				return internalGetPushAllowances()

				case "repository":
				return internalGetRepository()

				case "reviewDismissalAllowances":
				return internalGetReviewDismissalAllowances()

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
					case "branchProtectionRuleConflicts":
					response.append(internalGetBranchProtectionRuleConflicts())
					response.append(contentsOf: internalGetBranchProtectionRuleConflicts().childResponseObjectMap())

					case "creator":
					if let value = internalGetCreator() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "matchingRefs":
					response.append(internalGetMatchingRefs())
					response.append(contentsOf: internalGetMatchingRefs().childResponseObjectMap())

					case "pushAllowances":
					response.append(internalGetPushAllowances())
					response.append(contentsOf: internalGetPushAllowances().childResponseObjectMap())

					case "repository":
					if let value = internalGetRepository() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "reviewDismissalAllowances":
					response.append(internalGetReviewDismissalAllowances())
					response.append(contentsOf: internalGetReviewDismissalAllowances().childResponseObjectMap())

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
