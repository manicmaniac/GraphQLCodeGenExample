// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class OrganizationTeamsHovercardContextQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = OrganizationTeamsHovercardContext

		@discardableResult
		open func message(aliasSuffix: String? = nil) -> OrganizationTeamsHovercardContextQuery {
			addField(field: "message", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func octicon(aliasSuffix: String? = nil) -> OrganizationTeamsHovercardContextQuery {
			addField(field: "octicon", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func relevantTeams(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (TeamConnectionQuery) -> Void) -> OrganizationTeamsHovercardContextQuery {
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

			let subquery = TeamConnectionQuery()
			subfields(subquery)

			addField(field: "relevantTeams", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func teamsResourcePath(aliasSuffix: String? = nil) -> OrganizationTeamsHovercardContextQuery {
			addField(field: "teamsResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func teamsUrl(aliasSuffix: String? = nil) -> OrganizationTeamsHovercardContextQuery {
			addField(field: "teamsUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func totalTeamCount(aliasSuffix: String? = nil) -> OrganizationTeamsHovercardContextQuery {
			addField(field: "totalTeamCount", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class OrganizationTeamsHovercardContext: GraphQL.AbstractResponse, GraphQLObject, HovercardContext {
		public typealias Query = OrganizationTeamsHovercardContextQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "message":
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrganizationTeamsHovercardContext.self, field: fieldName, value: fieldValue)
				}
				return value

				case "octicon":
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrganizationTeamsHovercardContext.self, field: fieldName, value: fieldValue)
				}
				return value

				case "relevantTeams":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: OrganizationTeamsHovercardContext.self, field: fieldName, value: fieldValue)
				}
				return try TeamConnection(fields: value)

				case "teamsResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrganizationTeamsHovercardContext.self, field: fieldName, value: fieldValue)
				}
				return value

				case "teamsUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrganizationTeamsHovercardContext.self, field: fieldName, value: fieldValue)
				}
				return value

				case "totalTeamCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: OrganizationTeamsHovercardContext.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				default:
				throw SchemaViolationError(type: OrganizationTeamsHovercardContext.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "OrganizationTeamsHovercardContext" }

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

		open var relevantTeams: ExampleSchema.TeamConnection {
			return internalGetRelevantTeams()
		}

		open func aliasedRelevantTeams(aliasSuffix: String) -> ExampleSchema.TeamConnection {
			return internalGetRelevantTeams(aliasSuffix: aliasSuffix)
		}

		func internalGetRelevantTeams(aliasSuffix: String? = nil) -> ExampleSchema.TeamConnection {
			return field(field: "relevantTeams", aliasSuffix: aliasSuffix) as! ExampleSchema.TeamConnection
		}

		open var teamsResourcePath: String {
			return internalGetTeamsResourcePath()
		}

		func internalGetTeamsResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "teamsResourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var teamsUrl: String {
			return internalGetTeamsUrl()
		}

		func internalGetTeamsUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "teamsUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var totalTeamCount: Int32 {
			return internalGetTotalTeamCount()
		}

		func internalGetTotalTeamCount(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "totalTeamCount", aliasSuffix: aliasSuffix) as! Int32
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "message":

				return .scalar

				case "octicon":

				return .scalar

				case "relevantTeams":

				return .object

				case "teamsResourcePath":

				return .scalar

				case "teamsUrl":

				return .scalar

				case "totalTeamCount":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "relevantTeams":
				return internalGetRelevantTeams()

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
					case "relevantTeams":
					response.append(internalGetRelevantTeams())
					response.append(contentsOf: internalGetRelevantTeams().childResponseObjectMap())

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
