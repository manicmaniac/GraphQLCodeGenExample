// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class CreatedIssueContributionQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = CreatedIssueContribution

		@discardableResult
		open func isRestricted(aliasSuffix: String? = nil) -> CreatedIssueContributionQuery {
			addField(field: "isRestricted", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func issue(aliasSuffix: String? = nil, _ subfields: (IssueQuery) -> Void) -> CreatedIssueContributionQuery {
			let subquery = IssueQuery()
			subfields(subquery)

			addField(field: "issue", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func occurredAt(aliasSuffix: String? = nil) -> CreatedIssueContributionQuery {
			addField(field: "occurredAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> CreatedIssueContributionQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> CreatedIssueContributionQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func user(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> CreatedIssueContributionQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class CreatedIssueContribution: GraphQL.AbstractResponse, GraphQLObject, Contribution, CreatedIssueOrRestrictedContribution {
		public typealias Query = CreatedIssueContributionQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "isRestricted":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: CreatedIssueContribution.self, field: fieldName, value: fieldValue)
				}
				return value

				case "issue":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: CreatedIssueContribution.self, field: fieldName, value: fieldValue)
				}
				return try Issue(fields: value)

				case "occurredAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: CreatedIssueContribution.self, field: fieldName, value: fieldValue)
				}
				return value

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: CreatedIssueContribution.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: CreatedIssueContribution.self, field: fieldName, value: fieldValue)
				}
				return value

				case "user":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: CreatedIssueContribution.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				default:
				throw SchemaViolationError(type: CreatedIssueContribution.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "CreatedIssueContribution" }

		open var isRestricted: Bool {
			return internalGetIsRestricted()
		}

		func internalGetIsRestricted(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isRestricted", aliasSuffix: aliasSuffix) as! Bool
		}

		open var issue: ExampleSchema.Issue {
			return internalGetIssue()
		}

		func internalGetIssue(aliasSuffix: String? = nil) -> ExampleSchema.Issue {
			return field(field: "issue", aliasSuffix: aliasSuffix) as! ExampleSchema.Issue
		}

		open var occurredAt: String {
			return internalGetOccurredAt()
		}

		func internalGetOccurredAt(aliasSuffix: String? = nil) -> String {
			return field(field: "occurredAt", aliasSuffix: aliasSuffix) as! String
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		open var user: ExampleSchema.User {
			return internalGetUser()
		}

		func internalGetUser(aliasSuffix: String? = nil) -> ExampleSchema.User {
			return field(field: "user", aliasSuffix: aliasSuffix) as! ExampleSchema.User
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "isRestricted":

				return .scalar

				case "issue":

				return .object

				case "occurredAt":

				return .scalar

				case "resourcePath":

				return .scalar

				case "url":

				return .scalar

				case "user":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "issue":
				return internalGetIssue()

				case "user":
				return internalGetUser()

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
					case "issue":
					response.append(internalGetIssue())
					response.append(contentsOf: internalGetIssue().childResponseObjectMap())

					case "user":
					response.append(internalGetUser())
					response.append(contentsOf: internalGetUser().childResponseObjectMap())

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
