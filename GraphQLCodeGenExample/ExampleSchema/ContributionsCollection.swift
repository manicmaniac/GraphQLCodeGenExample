// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class ContributionsCollectionQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ContributionsCollection

		@discardableResult
		open func commitContributionsByRepository(aliasSuffix: String? = nil, maxRepositories: Int32? = nil, _ subfields: (CommitContributionsByRepositoryQuery) -> Void) -> ContributionsCollectionQuery {
			var args: [String] = []

			if let maxRepositories = maxRepositories {
				args.append("maxRepositories:\(maxRepositories)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = CommitContributionsByRepositoryQuery()
			subfields(subquery)

			addField(field: "commitContributionsByRepository", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func contributionCalendar(aliasSuffix: String? = nil, _ subfields: (ContributionCalendarQuery) -> Void) -> ContributionsCollectionQuery {
			let subquery = ContributionCalendarQuery()
			subfields(subquery)

			addField(field: "contributionCalendar", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func contributionYears(aliasSuffix: String? = nil) -> ContributionsCollectionQuery {
			addField(field: "contributionYears", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func doesEndInCurrentMonth(aliasSuffix: String? = nil) -> ContributionsCollectionQuery {
			addField(field: "doesEndInCurrentMonth", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func earliestRestrictedContributionDate(aliasSuffix: String? = nil) -> ContributionsCollectionQuery {
			addField(field: "earliestRestrictedContributionDate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func endedAt(aliasSuffix: String? = nil) -> ContributionsCollectionQuery {
			addField(field: "endedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func firstIssueContribution(aliasSuffix: String? = nil, _ subfields: (CreatedIssueOrRestrictedContributionQuery) -> Void) -> ContributionsCollectionQuery {
			let subquery = CreatedIssueOrRestrictedContributionQuery()
			subfields(subquery)

			addField(field: "firstIssueContribution", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func firstPullRequestContribution(aliasSuffix: String? = nil, _ subfields: (CreatedPullRequestOrRestrictedContributionQuery) -> Void) -> ContributionsCollectionQuery {
			let subquery = CreatedPullRequestOrRestrictedContributionQuery()
			subfields(subquery)

			addField(field: "firstPullRequestContribution", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func firstRepositoryContribution(aliasSuffix: String? = nil, _ subfields: (CreatedRepositoryOrRestrictedContributionQuery) -> Void) -> ContributionsCollectionQuery {
			let subquery = CreatedRepositoryOrRestrictedContributionQuery()
			subfields(subquery)

			addField(field: "firstRepositoryContribution", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func hasActivityInThePast(aliasSuffix: String? = nil) -> ContributionsCollectionQuery {
			addField(field: "hasActivityInThePast", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func hasAnyContributions(aliasSuffix: String? = nil) -> ContributionsCollectionQuery {
			addField(field: "hasAnyContributions", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func hasAnyRestrictedContributions(aliasSuffix: String? = nil) -> ContributionsCollectionQuery {
			addField(field: "hasAnyRestrictedContributions", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isSingleDay(aliasSuffix: String? = nil) -> ContributionsCollectionQuery {
			addField(field: "isSingleDay", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func issueContributions(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, excludeFirst: Bool? = nil, excludePopular: Bool? = nil, orderBy: ContributionOrder? = nil, _ subfields: (CreatedIssueContributionConnectionQuery) -> Void) -> ContributionsCollectionQuery {
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

			if let excludeFirst = excludeFirst {
				args.append("excludeFirst:\(excludeFirst)")
			}

			if let excludePopular = excludePopular {
				args.append("excludePopular:\(excludePopular)")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = CreatedIssueContributionConnectionQuery()
			subfields(subquery)

			addField(field: "issueContributions", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func issueContributionsByRepository(aliasSuffix: String? = nil, maxRepositories: Int32? = nil, excludeFirst: Bool? = nil, excludePopular: Bool? = nil, _ subfields: (IssueContributionsByRepositoryQuery) -> Void) -> ContributionsCollectionQuery {
			var args: [String] = []

			if let maxRepositories = maxRepositories {
				args.append("maxRepositories:\(maxRepositories)")
			}

			if let excludeFirst = excludeFirst {
				args.append("excludeFirst:\(excludeFirst)")
			}

			if let excludePopular = excludePopular {
				args.append("excludePopular:\(excludePopular)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = IssueContributionsByRepositoryQuery()
			subfields(subquery)

			addField(field: "issueContributionsByRepository", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func joinedGitHubContribution(aliasSuffix: String? = nil, _ subfields: (JoinedGitHubContributionQuery) -> Void) -> ContributionsCollectionQuery {
			let subquery = JoinedGitHubContributionQuery()
			subfields(subquery)

			addField(field: "joinedGitHubContribution", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func latestRestrictedContributionDate(aliasSuffix: String? = nil) -> ContributionsCollectionQuery {
			addField(field: "latestRestrictedContributionDate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func mostRecentCollectionWithActivity(aliasSuffix: String? = nil, _ subfields: (ContributionsCollectionQuery) -> Void) -> ContributionsCollectionQuery {
			let subquery = ContributionsCollectionQuery()
			subfields(subquery)

			addField(field: "mostRecentCollectionWithActivity", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func mostRecentCollectionWithoutActivity(aliasSuffix: String? = nil, _ subfields: (ContributionsCollectionQuery) -> Void) -> ContributionsCollectionQuery {
			let subquery = ContributionsCollectionQuery()
			subfields(subquery)

			addField(field: "mostRecentCollectionWithoutActivity", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func popularIssueContribution(aliasSuffix: String? = nil, _ subfields: (CreatedIssueContributionQuery) -> Void) -> ContributionsCollectionQuery {
			let subquery = CreatedIssueContributionQuery()
			subfields(subquery)

			addField(field: "popularIssueContribution", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func popularPullRequestContribution(aliasSuffix: String? = nil, _ subfields: (CreatedPullRequestContributionQuery) -> Void) -> ContributionsCollectionQuery {
			let subquery = CreatedPullRequestContributionQuery()
			subfields(subquery)

			addField(field: "popularPullRequestContribution", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func pullRequestContributions(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, excludeFirst: Bool? = nil, excludePopular: Bool? = nil, orderBy: ContributionOrder? = nil, _ subfields: (CreatedPullRequestContributionConnectionQuery) -> Void) -> ContributionsCollectionQuery {
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

			if let excludeFirst = excludeFirst {
				args.append("excludeFirst:\(excludeFirst)")
			}

			if let excludePopular = excludePopular {
				args.append("excludePopular:\(excludePopular)")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = CreatedPullRequestContributionConnectionQuery()
			subfields(subquery)

			addField(field: "pullRequestContributions", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func pullRequestContributionsByRepository(aliasSuffix: String? = nil, maxRepositories: Int32? = nil, excludeFirst: Bool? = nil, excludePopular: Bool? = nil, _ subfields: (PullRequestContributionsByRepositoryQuery) -> Void) -> ContributionsCollectionQuery {
			var args: [String] = []

			if let maxRepositories = maxRepositories {
				args.append("maxRepositories:\(maxRepositories)")
			}

			if let excludeFirst = excludeFirst {
				args.append("excludeFirst:\(excludeFirst)")
			}

			if let excludePopular = excludePopular {
				args.append("excludePopular:\(excludePopular)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = PullRequestContributionsByRepositoryQuery()
			subfields(subquery)

			addField(field: "pullRequestContributionsByRepository", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func pullRequestReviewContributions(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, orderBy: ContributionOrder? = nil, _ subfields: (CreatedPullRequestReviewContributionConnectionQuery) -> Void) -> ContributionsCollectionQuery {
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

			let subquery = CreatedPullRequestReviewContributionConnectionQuery()
			subfields(subquery)

			addField(field: "pullRequestReviewContributions", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func pullRequestReviewContributionsByRepository(aliasSuffix: String? = nil, maxRepositories: Int32? = nil, _ subfields: (PullRequestReviewContributionsByRepositoryQuery) -> Void) -> ContributionsCollectionQuery {
			var args: [String] = []

			if let maxRepositories = maxRepositories {
				args.append("maxRepositories:\(maxRepositories)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = PullRequestReviewContributionsByRepositoryQuery()
			subfields(subquery)

			addField(field: "pullRequestReviewContributionsByRepository", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func repositoryContributions(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, excludeFirst: Bool? = nil, orderBy: ContributionOrder? = nil, _ subfields: (CreatedRepositoryContributionConnectionQuery) -> Void) -> ContributionsCollectionQuery {
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

			if let excludeFirst = excludeFirst {
				args.append("excludeFirst:\(excludeFirst)")
			}

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = CreatedRepositoryContributionConnectionQuery()
			subfields(subquery)

			addField(field: "repositoryContributions", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func restrictedContributionsCount(aliasSuffix: String? = nil) -> ContributionsCollectionQuery {
			addField(field: "restrictedContributionsCount", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func startedAt(aliasSuffix: String? = nil) -> ContributionsCollectionQuery {
			addField(field: "startedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func totalCommitContributions(aliasSuffix: String? = nil) -> ContributionsCollectionQuery {
			addField(field: "totalCommitContributions", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func totalIssueContributions(aliasSuffix: String? = nil, excludeFirst: Bool? = nil, excludePopular: Bool? = nil) -> ContributionsCollectionQuery {
			var args: [String] = []

			if let excludeFirst = excludeFirst {
				args.append("excludeFirst:\(excludeFirst)")
			}

			if let excludePopular = excludePopular {
				args.append("excludePopular:\(excludePopular)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "totalIssueContributions", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func totalPullRequestContributions(aliasSuffix: String? = nil, excludeFirst: Bool? = nil, excludePopular: Bool? = nil) -> ContributionsCollectionQuery {
			var args: [String] = []

			if let excludeFirst = excludeFirst {
				args.append("excludeFirst:\(excludeFirst)")
			}

			if let excludePopular = excludePopular {
				args.append("excludePopular:\(excludePopular)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "totalPullRequestContributions", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func totalPullRequestReviewContributions(aliasSuffix: String? = nil) -> ContributionsCollectionQuery {
			addField(field: "totalPullRequestReviewContributions", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func totalRepositoriesWithContributedCommits(aliasSuffix: String? = nil) -> ContributionsCollectionQuery {
			addField(field: "totalRepositoriesWithContributedCommits", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func totalRepositoriesWithContributedIssues(aliasSuffix: String? = nil, excludeFirst: Bool? = nil, excludePopular: Bool? = nil) -> ContributionsCollectionQuery {
			var args: [String] = []

			if let excludeFirst = excludeFirst {
				args.append("excludeFirst:\(excludeFirst)")
			}

			if let excludePopular = excludePopular {
				args.append("excludePopular:\(excludePopular)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "totalRepositoriesWithContributedIssues", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func totalRepositoriesWithContributedPullRequestReviews(aliasSuffix: String? = nil) -> ContributionsCollectionQuery {
			addField(field: "totalRepositoriesWithContributedPullRequestReviews", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func totalRepositoriesWithContributedPullRequests(aliasSuffix: String? = nil, excludeFirst: Bool? = nil, excludePopular: Bool? = nil) -> ContributionsCollectionQuery {
			var args: [String] = []

			if let excludeFirst = excludeFirst {
				args.append("excludeFirst:\(excludeFirst)")
			}

			if let excludePopular = excludePopular {
				args.append("excludePopular:\(excludePopular)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "totalRepositoriesWithContributedPullRequests", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func totalRepositoryContributions(aliasSuffix: String? = nil, excludeFirst: Bool? = nil) -> ContributionsCollectionQuery {
			var args: [String] = []

			if let excludeFirst = excludeFirst {
				args.append("excludeFirst:\(excludeFirst)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "totalRepositoryContributions", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func user(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> ContributionsCollectionQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class ContributionsCollection: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = ContributionsCollectionQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "commitContributionsByRepository":
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try CommitContributionsByRepository(fields: $0) }

				case "contributionCalendar":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return try ContributionCalendar(fields: value)

				case "contributionYears":
				guard let value = value as? [Int] else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return value.map { return Int32($0) }

				case "doesEndInCurrentMonth":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return value

				case "earliestRestrictedContributionDate":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return value

				case "endedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return value

				case "firstIssueContribution":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return try UnknownCreatedIssueOrRestrictedContribution.create(fields: value)

				case "firstPullRequestContribution":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return try UnknownCreatedPullRequestOrRestrictedContribution.create(fields: value)

				case "firstRepositoryContribution":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return try UnknownCreatedRepositoryOrRestrictedContribution.create(fields: value)

				case "hasActivityInThePast":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return value

				case "hasAnyContributions":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return value

				case "hasAnyRestrictedContributions":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isSingleDay":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return value

				case "issueContributions":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return try CreatedIssueContributionConnection(fields: value)

				case "issueContributionsByRepository":
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try IssueContributionsByRepository(fields: $0) }

				case "joinedGitHubContribution":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return try JoinedGitHubContribution(fields: value)

				case "latestRestrictedContributionDate":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return value

				case "mostRecentCollectionWithActivity":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return try ContributionsCollection(fields: value)

				case "mostRecentCollectionWithoutActivity":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return try ContributionsCollection(fields: value)

				case "popularIssueContribution":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return try CreatedIssueContribution(fields: value)

				case "popularPullRequestContribution":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return try CreatedPullRequestContribution(fields: value)

				case "pullRequestContributions":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return try CreatedPullRequestContributionConnection(fields: value)

				case "pullRequestContributionsByRepository":
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try PullRequestContributionsByRepository(fields: $0) }

				case "pullRequestReviewContributions":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return try CreatedPullRequestReviewContributionConnection(fields: value)

				case "pullRequestReviewContributionsByRepository":
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try PullRequestReviewContributionsByRepository(fields: $0) }

				case "repositoryContributions":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return try CreatedRepositoryContributionConnection(fields: value)

				case "restrictedContributionsCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "startedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return value

				case "totalCommitContributions":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "totalIssueContributions":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "totalPullRequestContributions":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "totalPullRequestReviewContributions":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "totalRepositoriesWithContributedCommits":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "totalRepositoriesWithContributedIssues":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "totalRepositoriesWithContributedPullRequestReviews":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "totalRepositoriesWithContributedPullRequests":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "totalRepositoryContributions":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "user":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				default:
				throw SchemaViolationError(type: ContributionsCollection.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ContributionsCollection" }

		open var commitContributionsByRepository: [ExampleSchema.CommitContributionsByRepository] {
			return internalGetCommitContributionsByRepository()
		}

		open func aliasedCommitContributionsByRepository(aliasSuffix: String) -> [ExampleSchema.CommitContributionsByRepository] {
			return internalGetCommitContributionsByRepository(aliasSuffix: aliasSuffix)
		}

		func internalGetCommitContributionsByRepository(aliasSuffix: String? = nil) -> [ExampleSchema.CommitContributionsByRepository] {
			return field(field: "commitContributionsByRepository", aliasSuffix: aliasSuffix) as! [ExampleSchema.CommitContributionsByRepository]
		}

		open var contributionCalendar: ExampleSchema.ContributionCalendar {
			return internalGetContributionCalendar()
		}

		func internalGetContributionCalendar(aliasSuffix: String? = nil) -> ExampleSchema.ContributionCalendar {
			return field(field: "contributionCalendar", aliasSuffix: aliasSuffix) as! ExampleSchema.ContributionCalendar
		}

		open var contributionYears: [Int32] {
			return internalGetContributionYears()
		}

		func internalGetContributionYears(aliasSuffix: String? = nil) -> [Int32] {
			return field(field: "contributionYears", aliasSuffix: aliasSuffix) as! [Int32]
		}

		open var doesEndInCurrentMonth: Bool {
			return internalGetDoesEndInCurrentMonth()
		}

		func internalGetDoesEndInCurrentMonth(aliasSuffix: String? = nil) -> Bool {
			return field(field: "doesEndInCurrentMonth", aliasSuffix: aliasSuffix) as! Bool
		}

		open var earliestRestrictedContributionDate: String? {
			return internalGetEarliestRestrictedContributionDate()
		}

		func internalGetEarliestRestrictedContributionDate(aliasSuffix: String? = nil) -> String? {
			return field(field: "earliestRestrictedContributionDate", aliasSuffix: aliasSuffix) as! String?
		}

		open var endedAt: String {
			return internalGetEndedAt()
		}

		func internalGetEndedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "endedAt", aliasSuffix: aliasSuffix) as! String
		}

		open var firstIssueContribution: CreatedIssueOrRestrictedContribution? {
			return internalGetFirstIssueContribution()
		}

		func internalGetFirstIssueContribution(aliasSuffix: String? = nil) -> CreatedIssueOrRestrictedContribution? {
			return field(field: "firstIssueContribution", aliasSuffix: aliasSuffix) as! CreatedIssueOrRestrictedContribution?
		}

		open var firstPullRequestContribution: CreatedPullRequestOrRestrictedContribution? {
			return internalGetFirstPullRequestContribution()
		}

		func internalGetFirstPullRequestContribution(aliasSuffix: String? = nil) -> CreatedPullRequestOrRestrictedContribution? {
			return field(field: "firstPullRequestContribution", aliasSuffix: aliasSuffix) as! CreatedPullRequestOrRestrictedContribution?
		}

		open var firstRepositoryContribution: CreatedRepositoryOrRestrictedContribution? {
			return internalGetFirstRepositoryContribution()
		}

		func internalGetFirstRepositoryContribution(aliasSuffix: String? = nil) -> CreatedRepositoryOrRestrictedContribution? {
			return field(field: "firstRepositoryContribution", aliasSuffix: aliasSuffix) as! CreatedRepositoryOrRestrictedContribution?
		}

		open var hasActivityInThePast: Bool {
			return internalGetHasActivityInThePast()
		}

		func internalGetHasActivityInThePast(aliasSuffix: String? = nil) -> Bool {
			return field(field: "hasActivityInThePast", aliasSuffix: aliasSuffix) as! Bool
		}

		open var hasAnyContributions: Bool {
			return internalGetHasAnyContributions()
		}

		func internalGetHasAnyContributions(aliasSuffix: String? = nil) -> Bool {
			return field(field: "hasAnyContributions", aliasSuffix: aliasSuffix) as! Bool
		}

		open var hasAnyRestrictedContributions: Bool {
			return internalGetHasAnyRestrictedContributions()
		}

		func internalGetHasAnyRestrictedContributions(aliasSuffix: String? = nil) -> Bool {
			return field(field: "hasAnyRestrictedContributions", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isSingleDay: Bool {
			return internalGetIsSingleDay()
		}

		func internalGetIsSingleDay(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isSingleDay", aliasSuffix: aliasSuffix) as! Bool
		}

		open var issueContributions: ExampleSchema.CreatedIssueContributionConnection {
			return internalGetIssueContributions()
		}

		open func aliasedIssueContributions(aliasSuffix: String) -> ExampleSchema.CreatedIssueContributionConnection {
			return internalGetIssueContributions(aliasSuffix: aliasSuffix)
		}

		func internalGetIssueContributions(aliasSuffix: String? = nil) -> ExampleSchema.CreatedIssueContributionConnection {
			return field(field: "issueContributions", aliasSuffix: aliasSuffix) as! ExampleSchema.CreatedIssueContributionConnection
		}

		open var issueContributionsByRepository: [ExampleSchema.IssueContributionsByRepository] {
			return internalGetIssueContributionsByRepository()
		}

		open func aliasedIssueContributionsByRepository(aliasSuffix: String) -> [ExampleSchema.IssueContributionsByRepository] {
			return internalGetIssueContributionsByRepository(aliasSuffix: aliasSuffix)
		}

		func internalGetIssueContributionsByRepository(aliasSuffix: String? = nil) -> [ExampleSchema.IssueContributionsByRepository] {
			return field(field: "issueContributionsByRepository", aliasSuffix: aliasSuffix) as! [ExampleSchema.IssueContributionsByRepository]
		}

		open var joinedGitHubContribution: ExampleSchema.JoinedGitHubContribution? {
			return internalGetJoinedGitHubContribution()
		}

		func internalGetJoinedGitHubContribution(aliasSuffix: String? = nil) -> ExampleSchema.JoinedGitHubContribution? {
			return field(field: "joinedGitHubContribution", aliasSuffix: aliasSuffix) as! ExampleSchema.JoinedGitHubContribution?
		}

		open var latestRestrictedContributionDate: String? {
			return internalGetLatestRestrictedContributionDate()
		}

		func internalGetLatestRestrictedContributionDate(aliasSuffix: String? = nil) -> String? {
			return field(field: "latestRestrictedContributionDate", aliasSuffix: aliasSuffix) as! String?
		}

		open var mostRecentCollectionWithActivity: ExampleSchema.ContributionsCollection? {
			return internalGetMostRecentCollectionWithActivity()
		}

		func internalGetMostRecentCollectionWithActivity(aliasSuffix: String? = nil) -> ExampleSchema.ContributionsCollection? {
			return field(field: "mostRecentCollectionWithActivity", aliasSuffix: aliasSuffix) as! ExampleSchema.ContributionsCollection?
		}

		open var mostRecentCollectionWithoutActivity: ExampleSchema.ContributionsCollection? {
			return internalGetMostRecentCollectionWithoutActivity()
		}

		func internalGetMostRecentCollectionWithoutActivity(aliasSuffix: String? = nil) -> ExampleSchema.ContributionsCollection? {
			return field(field: "mostRecentCollectionWithoutActivity", aliasSuffix: aliasSuffix) as! ExampleSchema.ContributionsCollection?
		}

		open var popularIssueContribution: ExampleSchema.CreatedIssueContribution? {
			return internalGetPopularIssueContribution()
		}

		func internalGetPopularIssueContribution(aliasSuffix: String? = nil) -> ExampleSchema.CreatedIssueContribution? {
			return field(field: "popularIssueContribution", aliasSuffix: aliasSuffix) as! ExampleSchema.CreatedIssueContribution?
		}

		open var popularPullRequestContribution: ExampleSchema.CreatedPullRequestContribution? {
			return internalGetPopularPullRequestContribution()
		}

		func internalGetPopularPullRequestContribution(aliasSuffix: String? = nil) -> ExampleSchema.CreatedPullRequestContribution? {
			return field(field: "popularPullRequestContribution", aliasSuffix: aliasSuffix) as! ExampleSchema.CreatedPullRequestContribution?
		}

		open var pullRequestContributions: ExampleSchema.CreatedPullRequestContributionConnection {
			return internalGetPullRequestContributions()
		}

		open func aliasedPullRequestContributions(aliasSuffix: String) -> ExampleSchema.CreatedPullRequestContributionConnection {
			return internalGetPullRequestContributions(aliasSuffix: aliasSuffix)
		}

		func internalGetPullRequestContributions(aliasSuffix: String? = nil) -> ExampleSchema.CreatedPullRequestContributionConnection {
			return field(field: "pullRequestContributions", aliasSuffix: aliasSuffix) as! ExampleSchema.CreatedPullRequestContributionConnection
		}

		open var pullRequestContributionsByRepository: [ExampleSchema.PullRequestContributionsByRepository] {
			return internalGetPullRequestContributionsByRepository()
		}

		open func aliasedPullRequestContributionsByRepository(aliasSuffix: String) -> [ExampleSchema.PullRequestContributionsByRepository] {
			return internalGetPullRequestContributionsByRepository(aliasSuffix: aliasSuffix)
		}

		func internalGetPullRequestContributionsByRepository(aliasSuffix: String? = nil) -> [ExampleSchema.PullRequestContributionsByRepository] {
			return field(field: "pullRequestContributionsByRepository", aliasSuffix: aliasSuffix) as! [ExampleSchema.PullRequestContributionsByRepository]
		}

		open var pullRequestReviewContributions: ExampleSchema.CreatedPullRequestReviewContributionConnection {
			return internalGetPullRequestReviewContributions()
		}

		open func aliasedPullRequestReviewContributions(aliasSuffix: String) -> ExampleSchema.CreatedPullRequestReviewContributionConnection {
			return internalGetPullRequestReviewContributions(aliasSuffix: aliasSuffix)
		}

		func internalGetPullRequestReviewContributions(aliasSuffix: String? = nil) -> ExampleSchema.CreatedPullRequestReviewContributionConnection {
			return field(field: "pullRequestReviewContributions", aliasSuffix: aliasSuffix) as! ExampleSchema.CreatedPullRequestReviewContributionConnection
		}

		open var pullRequestReviewContributionsByRepository: [ExampleSchema.PullRequestReviewContributionsByRepository] {
			return internalGetPullRequestReviewContributionsByRepository()
		}

		open func aliasedPullRequestReviewContributionsByRepository(aliasSuffix: String) -> [ExampleSchema.PullRequestReviewContributionsByRepository] {
			return internalGetPullRequestReviewContributionsByRepository(aliasSuffix: aliasSuffix)
		}

		func internalGetPullRequestReviewContributionsByRepository(aliasSuffix: String? = nil) -> [ExampleSchema.PullRequestReviewContributionsByRepository] {
			return field(field: "pullRequestReviewContributionsByRepository", aliasSuffix: aliasSuffix) as! [ExampleSchema.PullRequestReviewContributionsByRepository]
		}

		open var repositoryContributions: ExampleSchema.CreatedRepositoryContributionConnection {
			return internalGetRepositoryContributions()
		}

		open func aliasedRepositoryContributions(aliasSuffix: String) -> ExampleSchema.CreatedRepositoryContributionConnection {
			return internalGetRepositoryContributions(aliasSuffix: aliasSuffix)
		}

		func internalGetRepositoryContributions(aliasSuffix: String? = nil) -> ExampleSchema.CreatedRepositoryContributionConnection {
			return field(field: "repositoryContributions", aliasSuffix: aliasSuffix) as! ExampleSchema.CreatedRepositoryContributionConnection
		}

		open var restrictedContributionsCount: Int32 {
			return internalGetRestrictedContributionsCount()
		}

		func internalGetRestrictedContributionsCount(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "restrictedContributionsCount", aliasSuffix: aliasSuffix) as! Int32
		}

		open var startedAt: String {
			return internalGetStartedAt()
		}

		func internalGetStartedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "startedAt", aliasSuffix: aliasSuffix) as! String
		}

		open var totalCommitContributions: Int32 {
			return internalGetTotalCommitContributions()
		}

		func internalGetTotalCommitContributions(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "totalCommitContributions", aliasSuffix: aliasSuffix) as! Int32
		}

		open var totalIssueContributions: Int32 {
			return internalGetTotalIssueContributions()
		}

		open func aliasedTotalIssueContributions(aliasSuffix: String) -> Int32 {
			return internalGetTotalIssueContributions(aliasSuffix: aliasSuffix)
		}

		func internalGetTotalIssueContributions(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "totalIssueContributions", aliasSuffix: aliasSuffix) as! Int32
		}

		open var totalPullRequestContributions: Int32 {
			return internalGetTotalPullRequestContributions()
		}

		open func aliasedTotalPullRequestContributions(aliasSuffix: String) -> Int32 {
			return internalGetTotalPullRequestContributions(aliasSuffix: aliasSuffix)
		}

		func internalGetTotalPullRequestContributions(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "totalPullRequestContributions", aliasSuffix: aliasSuffix) as! Int32
		}

		open var totalPullRequestReviewContributions: Int32 {
			return internalGetTotalPullRequestReviewContributions()
		}

		func internalGetTotalPullRequestReviewContributions(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "totalPullRequestReviewContributions", aliasSuffix: aliasSuffix) as! Int32
		}

		open var totalRepositoriesWithContributedCommits: Int32 {
			return internalGetTotalRepositoriesWithContributedCommits()
		}

		func internalGetTotalRepositoriesWithContributedCommits(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "totalRepositoriesWithContributedCommits", aliasSuffix: aliasSuffix) as! Int32
		}

		open var totalRepositoriesWithContributedIssues: Int32 {
			return internalGetTotalRepositoriesWithContributedIssues()
		}

		open func aliasedTotalRepositoriesWithContributedIssues(aliasSuffix: String) -> Int32 {
			return internalGetTotalRepositoriesWithContributedIssues(aliasSuffix: aliasSuffix)
		}

		func internalGetTotalRepositoriesWithContributedIssues(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "totalRepositoriesWithContributedIssues", aliasSuffix: aliasSuffix) as! Int32
		}

		open var totalRepositoriesWithContributedPullRequestReviews: Int32 {
			return internalGetTotalRepositoriesWithContributedPullRequestReviews()
		}

		func internalGetTotalRepositoriesWithContributedPullRequestReviews(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "totalRepositoriesWithContributedPullRequestReviews", aliasSuffix: aliasSuffix) as! Int32
		}

		open var totalRepositoriesWithContributedPullRequests: Int32 {
			return internalGetTotalRepositoriesWithContributedPullRequests()
		}

		open func aliasedTotalRepositoriesWithContributedPullRequests(aliasSuffix: String) -> Int32 {
			return internalGetTotalRepositoriesWithContributedPullRequests(aliasSuffix: aliasSuffix)
		}

		func internalGetTotalRepositoriesWithContributedPullRequests(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "totalRepositoriesWithContributedPullRequests", aliasSuffix: aliasSuffix) as! Int32
		}

		open var totalRepositoryContributions: Int32 {
			return internalGetTotalRepositoryContributions()
		}

		open func aliasedTotalRepositoryContributions(aliasSuffix: String) -> Int32 {
			return internalGetTotalRepositoryContributions(aliasSuffix: aliasSuffix)
		}

		func internalGetTotalRepositoryContributions(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "totalRepositoryContributions", aliasSuffix: aliasSuffix) as! Int32
		}

		open var user: ExampleSchema.User {
			return internalGetUser()
		}

		func internalGetUser(aliasSuffix: String? = nil) -> ExampleSchema.User {
			return field(field: "user", aliasSuffix: aliasSuffix) as! ExampleSchema.User
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "commitContributionsByRepository":

				return .objectList

				case "contributionCalendar":

				return .object

				case "contributionYears":

				return .scalarList

				case "doesEndInCurrentMonth":

				return .scalar

				case "earliestRestrictedContributionDate":

				return .scalar

				case "endedAt":

				return .scalar

				case "firstIssueContribution":

				return .scalar

				case "firstPullRequestContribution":

				return .scalar

				case "firstRepositoryContribution":

				return .scalar

				case "hasActivityInThePast":

				return .scalar

				case "hasAnyContributions":

				return .scalar

				case "hasAnyRestrictedContributions":

				return .scalar

				case "isSingleDay":

				return .scalar

				case "issueContributions":

				return .object

				case "issueContributionsByRepository":

				return .objectList

				case "joinedGitHubContribution":

				return .object

				case "latestRestrictedContributionDate":

				return .scalar

				case "mostRecentCollectionWithActivity":

				return .object

				case "mostRecentCollectionWithoutActivity":

				return .object

				case "popularIssueContribution":

				return .object

				case "popularPullRequestContribution":

				return .object

				case "pullRequestContributions":

				return .object

				case "pullRequestContributionsByRepository":

				return .objectList

				case "pullRequestReviewContributions":

				return .object

				case "pullRequestReviewContributionsByRepository":

				return .objectList

				case "repositoryContributions":

				return .object

				case "restrictedContributionsCount":

				return .scalar

				case "startedAt":

				return .scalar

				case "totalCommitContributions":

				return .scalar

				case "totalIssueContributions":

				return .scalar

				case "totalPullRequestContributions":

				return .scalar

				case "totalPullRequestReviewContributions":

				return .scalar

				case "totalRepositoriesWithContributedCommits":

				return .scalar

				case "totalRepositoriesWithContributedIssues":

				return .scalar

				case "totalRepositoriesWithContributedPullRequestReviews":

				return .scalar

				case "totalRepositoriesWithContributedPullRequests":

				return .scalar

				case "totalRepositoryContributions":

				return .scalar

				case "user":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "contributionCalendar":
				return internalGetContributionCalendar()

				case "issueContributions":
				return internalGetIssueContributions()

				case "joinedGitHubContribution":
				return internalGetJoinedGitHubContribution()

				case "mostRecentCollectionWithActivity":
				return internalGetMostRecentCollectionWithActivity()

				case "mostRecentCollectionWithoutActivity":
				return internalGetMostRecentCollectionWithoutActivity()

				case "popularIssueContribution":
				return internalGetPopularIssueContribution()

				case "popularPullRequestContribution":
				return internalGetPopularPullRequestContribution()

				case "pullRequestContributions":
				return internalGetPullRequestContributions()

				case "pullRequestReviewContributions":
				return internalGetPullRequestReviewContributions()

				case "repositoryContributions":
				return internalGetRepositoryContributions()

				case "user":
				return internalGetUser()

				default:
				break
			}
			return nil
		}

		override open func fetchChildObjectList(key: String) -> [GraphQL.AbstractResponse] {
			switch(key) {
				case "commitContributionsByRepository":
				return internalGetCommitContributionsByRepository()

				case "issueContributionsByRepository":
				return internalGetIssueContributionsByRepository()

				case "pullRequestContributionsByRepository":
				return internalGetPullRequestContributionsByRepository()

				case "pullRequestReviewContributionsByRepository":
				return internalGetPullRequestReviewContributionsByRepository()

				default:
				return []
			}
		}

		open func childResponseObjectMap() -> [GraphQL.AbstractResponse]  {
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "commitContributionsByRepository":
					internalGetCommitContributionsByRepository().forEach {
						response.append($0)
						response.append(contentsOf: $0.childResponseObjectMap())
					}

					case "contributionCalendar":
					response.append(internalGetContributionCalendar())
					response.append(contentsOf: internalGetContributionCalendar().childResponseObjectMap())

					case "firstIssueContribution":
					if let value = internalGetFirstIssueContribution() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "firstPullRequestContribution":
					if let value = internalGetFirstPullRequestContribution() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "firstRepositoryContribution":
					if let value = internalGetFirstRepositoryContribution() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "issueContributions":
					response.append(internalGetIssueContributions())
					response.append(contentsOf: internalGetIssueContributions().childResponseObjectMap())

					case "issueContributionsByRepository":
					internalGetIssueContributionsByRepository().forEach {
						response.append($0)
						response.append(contentsOf: $0.childResponseObjectMap())
					}

					case "joinedGitHubContribution":
					if let value = internalGetJoinedGitHubContribution() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "mostRecentCollectionWithActivity":
					if let value = internalGetMostRecentCollectionWithActivity() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "mostRecentCollectionWithoutActivity":
					if let value = internalGetMostRecentCollectionWithoutActivity() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "popularIssueContribution":
					if let value = internalGetPopularIssueContribution() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "popularPullRequestContribution":
					if let value = internalGetPopularPullRequestContribution() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "pullRequestContributions":
					response.append(internalGetPullRequestContributions())
					response.append(contentsOf: internalGetPullRequestContributions().childResponseObjectMap())

					case "pullRequestContributionsByRepository":
					internalGetPullRequestContributionsByRepository().forEach {
						response.append($0)
						response.append(contentsOf: $0.childResponseObjectMap())
					}

					case "pullRequestReviewContributions":
					response.append(internalGetPullRequestReviewContributions())
					response.append(contentsOf: internalGetPullRequestReviewContributions().childResponseObjectMap())

					case "pullRequestReviewContributionsByRepository":
					internalGetPullRequestReviewContributionsByRepository().forEach {
						response.append($0)
						response.append(contentsOf: $0.childResponseObjectMap())
					}

					case "repositoryContributions":
					response.append(internalGetRepositoryContributions())
					response.append(contentsOf: internalGetRepositoryContributions().childResponseObjectMap())

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
