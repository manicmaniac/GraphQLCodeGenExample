// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class IssueContributionsByRepositoryQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = IssueContributionsByRepository

		@discardableResult
		open func contributions(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: ContributionOrder? = nil, _ subfields: (CreatedIssueContributionConnectionQuery) -> Void) -> IssueContributionsByRepositoryQuery {
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

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = CreatedIssueContributionConnectionQuery()
			subfields(subquery)

			addField(field: "contributions", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func repository(aliasSuffix: String? = nil, _ subfields: (RepositoryQuery) -> Void) -> IssueContributionsByRepositoryQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)

			addField(field: "repository", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class IssueContributionsByRepository: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = IssueContributionsByRepositoryQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contributions":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: IssueContributionsByRepository.self, field: fieldName, value: fieldValue)
				}
				return try CreatedIssueContributionConnection(fields: value)

				case "repository":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: IssueContributionsByRepository.self, field: fieldName, value: fieldValue)
				}
				return try Repository(fields: value)

				default:
				throw SchemaViolationError(type: IssueContributionsByRepository.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "IssueContributionsByRepository" }

		open var contributions: ExampleSchema.CreatedIssueContributionConnection {
			return internalGetContributions()
		}

		open func aliasedContributions(aliasSuffix: String) -> ExampleSchema.CreatedIssueContributionConnection {
			return internalGetContributions(aliasSuffix: aliasSuffix)
		}

		func internalGetContributions(aliasSuffix: String? = nil) -> ExampleSchema.CreatedIssueContributionConnection {
			return field(field: "contributions", aliasSuffix: aliasSuffix) as! ExampleSchema.CreatedIssueContributionConnection
		}

		open var repository: ExampleSchema.Repository {
			return internalGetRepository()
		}

		func internalGetRepository(aliasSuffix: String? = nil) -> ExampleSchema.Repository {
			return field(field: "repository", aliasSuffix: aliasSuffix) as! ExampleSchema.Repository
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contributions":

				return .object

				case "repository":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "contributions":
				return internalGetContributions()

				case "repository":
				return internalGetRepository()

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
					case "contributions":
					response.append(internalGetContributions())
					response.append(contentsOf: internalGetContributions().childResponseObjectMap())

					case "repository":
					response.append(internalGetRepository())
					response.append(contentsOf: internalGetRepository().childResponseObjectMap())

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
