// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class OrganizationsHovercardContextQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = OrganizationsHovercardContext

		@discardableResult
		open func message(aliasSuffix: String? = nil) -> OrganizationsHovercardContextQuery {
			addField(field: "message", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func octicon(aliasSuffix: String? = nil) -> OrganizationsHovercardContextQuery {
			addField(field: "octicon", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func relevantOrganizations(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (OrganizationConnectionQuery) -> Void) -> OrganizationsHovercardContextQuery {
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

			let subquery = OrganizationConnectionQuery()
			subfields(subquery)

			addField(field: "relevantOrganizations", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func totalOrganizationCount(aliasSuffix: String? = nil) -> OrganizationsHovercardContextQuery {
			addField(field: "totalOrganizationCount", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class OrganizationsHovercardContext: GraphQL.AbstractResponse, GraphQLObject, HovercardContext {
		public typealias Query = OrganizationsHovercardContextQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "message":
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrganizationsHovercardContext.self, field: fieldName, value: fieldValue)
				}
				return value

				case "octicon":
				guard let value = value as? String else {
					throw SchemaViolationError(type: OrganizationsHovercardContext.self, field: fieldName, value: fieldValue)
				}
				return value

				case "relevantOrganizations":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: OrganizationsHovercardContext.self, field: fieldName, value: fieldValue)
				}
				return try OrganizationConnection(fields: value)

				case "totalOrganizationCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: OrganizationsHovercardContext.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				default:
				throw SchemaViolationError(type: OrganizationsHovercardContext.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "OrganizationsHovercardContext" }

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

		open var relevantOrganizations: ExampleSchema.OrganizationConnection {
			return internalGetRelevantOrganizations()
		}

		open func aliasedRelevantOrganizations(aliasSuffix: String) -> ExampleSchema.OrganizationConnection {
			return internalGetRelevantOrganizations(aliasSuffix: aliasSuffix)
		}

		func internalGetRelevantOrganizations(aliasSuffix: String? = nil) -> ExampleSchema.OrganizationConnection {
			return field(field: "relevantOrganizations", aliasSuffix: aliasSuffix) as! ExampleSchema.OrganizationConnection
		}

		open var totalOrganizationCount: Int32 {
			return internalGetTotalOrganizationCount()
		}

		func internalGetTotalOrganizationCount(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "totalOrganizationCount", aliasSuffix: aliasSuffix) as! Int32
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "message":

				return .scalar

				case "octicon":

				return .scalar

				case "relevantOrganizations":

				return .object

				case "totalOrganizationCount":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "relevantOrganizations":
				return internalGetRelevantOrganizations()

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
					case "relevantOrganizations":
					response.append(internalGetRelevantOrganizations())
					response.append(contentsOf: internalGetRelevantOrganizations().childResponseObjectMap())

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
