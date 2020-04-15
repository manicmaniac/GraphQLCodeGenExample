// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class SecurityAdvisoryQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SecurityAdvisory

		@discardableResult
		open func databaseId(aliasSuffix: String? = nil) -> SecurityAdvisoryQuery {
			addField(field: "databaseId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func description(aliasSuffix: String? = nil) -> SecurityAdvisoryQuery {
			addField(field: "description", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func ghsaId(aliasSuffix: String? = nil) -> SecurityAdvisoryQuery {
			addField(field: "ghsaId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> SecurityAdvisoryQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func identifiers(aliasSuffix: String? = nil, _ subfields: (SecurityAdvisoryIdentifierQuery) -> Void) -> SecurityAdvisoryQuery {
			let subquery = SecurityAdvisoryIdentifierQuery()
			subfields(subquery)

			addField(field: "identifiers", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func origin(aliasSuffix: String? = nil) -> SecurityAdvisoryQuery {
			addField(field: "origin", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func permalink(aliasSuffix: String? = nil) -> SecurityAdvisoryQuery {
			addField(field: "permalink", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func publishedAt(aliasSuffix: String? = nil) -> SecurityAdvisoryQuery {
			addField(field: "publishedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func references(aliasSuffix: String? = nil, _ subfields: (SecurityAdvisoryReferenceQuery) -> Void) -> SecurityAdvisoryQuery {
			let subquery = SecurityAdvisoryReferenceQuery()
			subfields(subquery)

			addField(field: "references", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func severity(aliasSuffix: String? = nil) -> SecurityAdvisoryQuery {
			addField(field: "severity", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func summary(aliasSuffix: String? = nil) -> SecurityAdvisoryQuery {
			addField(field: "summary", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> SecurityAdvisoryQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func vulnerabilities(aliasSuffix: String? = nil, orderBy: SecurityVulnerabilityOrder? = nil, ecosystem: SecurityAdvisoryEcosystem? = nil, package: String? = nil, severities: [SecurityAdvisorySeverity]? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (SecurityVulnerabilityConnectionQuery) -> Void) -> SecurityAdvisoryQuery {
			var args: [String] = []

			if let orderBy = orderBy {
				args.append("orderBy:\(orderBy.serialize())")
			}

			if let ecosystem = ecosystem {
				args.append("ecosystem:\(ecosystem.rawValue)")
			}

			if let package = package {
				args.append("package:\(GraphQL.quoteString(input: package))")
			}

			if let severities = severities {
				args.append("severities:[\(severities.map{ "\($0.rawValue)" }.joined(separator: ","))]")
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

			let subquery = SecurityVulnerabilityConnectionQuery()
			subfields(subquery)

			addField(field: "vulnerabilities", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func withdrawnAt(aliasSuffix: String? = nil) -> SecurityAdvisoryQuery {
			addField(field: "withdrawnAt", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class SecurityAdvisory: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = SecurityAdvisoryQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "databaseId":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: SecurityAdvisory.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "description":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SecurityAdvisory.self, field: fieldName, value: fieldValue)
				}
				return value

				case "ghsaId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SecurityAdvisory.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SecurityAdvisory.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "identifiers":
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: SecurityAdvisory.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try SecurityAdvisoryIdentifier(fields: $0) }

				case "origin":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SecurityAdvisory.self, field: fieldName, value: fieldValue)
				}
				return value

				case "permalink":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: SecurityAdvisory.self, field: fieldName, value: fieldValue)
				}
				return value

				case "publishedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SecurityAdvisory.self, field: fieldName, value: fieldValue)
				}
				return value

				case "references":
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: SecurityAdvisory.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try SecurityAdvisoryReference(fields: $0) }

				case "severity":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SecurityAdvisory.self, field: fieldName, value: fieldValue)
				}
				return SecurityAdvisorySeverity(rawValue: value) ?? .unknownValue

				case "summary":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SecurityAdvisory.self, field: fieldName, value: fieldValue)
				}
				return value

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: SecurityAdvisory.self, field: fieldName, value: fieldValue)
				}
				return value

				case "vulnerabilities":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: SecurityAdvisory.self, field: fieldName, value: fieldValue)
				}
				return try SecurityVulnerabilityConnection(fields: value)

				case "withdrawnAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: SecurityAdvisory.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: SecurityAdvisory.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "SecurityAdvisory" }

		open var databaseId: Int32? {
			return internalGetDatabaseId()
		}

		func internalGetDatabaseId(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "databaseId", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var description: String {
			return internalGetDescription()
		}

		func internalGetDescription(aliasSuffix: String? = nil) -> String {
			return field(field: "description", aliasSuffix: aliasSuffix) as! String
		}

		open var ghsaId: String {
			return internalGetGhsaId()
		}

		func internalGetGhsaId(aliasSuffix: String? = nil) -> String {
			return field(field: "ghsaId", aliasSuffix: aliasSuffix) as! String
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var identifiers: [ExampleSchema.SecurityAdvisoryIdentifier] {
			return internalGetIdentifiers()
		}

		func internalGetIdentifiers(aliasSuffix: String? = nil) -> [ExampleSchema.SecurityAdvisoryIdentifier] {
			return field(field: "identifiers", aliasSuffix: aliasSuffix) as! [ExampleSchema.SecurityAdvisoryIdentifier]
		}

		open var origin: String {
			return internalGetOrigin()
		}

		func internalGetOrigin(aliasSuffix: String? = nil) -> String {
			return field(field: "origin", aliasSuffix: aliasSuffix) as! String
		}

		open var permalink: String? {
			return internalGetPermalink()
		}

		func internalGetPermalink(aliasSuffix: String? = nil) -> String? {
			return field(field: "permalink", aliasSuffix: aliasSuffix) as! String?
		}

		open var publishedAt: String {
			return internalGetPublishedAt()
		}

		func internalGetPublishedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "publishedAt", aliasSuffix: aliasSuffix) as! String
		}

		open var references: [ExampleSchema.SecurityAdvisoryReference] {
			return internalGetReferences()
		}

		func internalGetReferences(aliasSuffix: String? = nil) -> [ExampleSchema.SecurityAdvisoryReference] {
			return field(field: "references", aliasSuffix: aliasSuffix) as! [ExampleSchema.SecurityAdvisoryReference]
		}

		open var severity: ExampleSchema.SecurityAdvisorySeverity {
			return internalGetSeverity()
		}

		func internalGetSeverity(aliasSuffix: String? = nil) -> ExampleSchema.SecurityAdvisorySeverity {
			return field(field: "severity", aliasSuffix: aliasSuffix) as! ExampleSchema.SecurityAdvisorySeverity
		}

		open var summary: String {
			return internalGetSummary()
		}

		func internalGetSummary(aliasSuffix: String? = nil) -> String {
			return field(field: "summary", aliasSuffix: aliasSuffix) as! String
		}

		open var updatedAt: String {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String
		}

		open var vulnerabilities: ExampleSchema.SecurityVulnerabilityConnection {
			return internalGetVulnerabilities()
		}

		open func aliasedVulnerabilities(aliasSuffix: String) -> ExampleSchema.SecurityVulnerabilityConnection {
			return internalGetVulnerabilities(aliasSuffix: aliasSuffix)
		}

		func internalGetVulnerabilities(aliasSuffix: String? = nil) -> ExampleSchema.SecurityVulnerabilityConnection {
			return field(field: "vulnerabilities", aliasSuffix: aliasSuffix) as! ExampleSchema.SecurityVulnerabilityConnection
		}

		open var withdrawnAt: String? {
			return internalGetWithdrawnAt()
		}

		func internalGetWithdrawnAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "withdrawnAt", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "databaseId":

				return .scalar

				case "description":

				return .scalar

				case "ghsaId":

				return .scalar

				case "id":

				return .scalar

				case "identifiers":

				return .objectList

				case "origin":

				return .scalar

				case "permalink":

				return .scalar

				case "publishedAt":

				return .scalar

				case "references":

				return .objectList

				case "severity":

				return .scalar

				case "summary":

				return .scalar

				case "updatedAt":

				return .scalar

				case "vulnerabilities":

				return .object

				case "withdrawnAt":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "vulnerabilities":
				return internalGetVulnerabilities()

				default:
				break
			}
			return nil
		}

		override open func fetchChildObjectList(key: String) -> [GraphQL.AbstractResponse] {
			switch(key) {
				case "identifiers":
				return internalGetIdentifiers()

				case "references":
				return internalGetReferences()

				default:
				return []
			}
		}

		open func childResponseObjectMap() -> [GraphQL.AbstractResponse]  {
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "identifiers":
					internalGetIdentifiers().forEach {
						response.append($0)
						response.append(contentsOf: $0.childResponseObjectMap())
					}

					case "references":
					internalGetReferences().forEach {
						response.append($0)
						response.append(contentsOf: $0.childResponseObjectMap())
					}

					case "vulnerabilities":
					response.append(internalGetVulnerabilities())
					response.append(contentsOf: internalGetVulnerabilities().childResponseObjectMap())

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
