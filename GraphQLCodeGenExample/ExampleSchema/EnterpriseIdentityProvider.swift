// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class EnterpriseIdentityProviderQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EnterpriseIdentityProvider

		@discardableResult
		open func digestMethod(aliasSuffix: String? = nil) -> EnterpriseIdentityProviderQuery {
			addField(field: "digestMethod", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func enterprise(aliasSuffix: String? = nil, _ subfields: (EnterpriseQuery) -> Void) -> EnterpriseIdentityProviderQuery {
			let subquery = EnterpriseQuery()
			subfields(subquery)

			addField(field: "enterprise", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func externalIdentities(aliasSuffix: String? = nil, after: String? = nil, before: String? = nil, first: Int32? = nil, last: Int32? = nil, _ subfields: (ExternalIdentityConnectionQuery) -> Void) -> EnterpriseIdentityProviderQuery {
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

			let subquery = ExternalIdentityConnectionQuery()
			subfields(subquery)

			addField(field: "externalIdentities", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> EnterpriseIdentityProviderQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func idpCertificate(aliasSuffix: String? = nil) -> EnterpriseIdentityProviderQuery {
			addField(field: "idpCertificate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func issuer(aliasSuffix: String? = nil) -> EnterpriseIdentityProviderQuery {
			addField(field: "issuer", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func recoveryCodes(aliasSuffix: String? = nil) -> EnterpriseIdentityProviderQuery {
			addField(field: "recoveryCodes", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func signatureMethod(aliasSuffix: String? = nil) -> EnterpriseIdentityProviderQuery {
			addField(field: "signatureMethod", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func ssoUrl(aliasSuffix: String? = nil) -> EnterpriseIdentityProviderQuery {
			addField(field: "ssoUrl", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class EnterpriseIdentityProvider: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = EnterpriseIdentityProviderQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "digestMethod":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseIdentityProvider.self, field: fieldName, value: fieldValue)
				}
				return SamlDigestAlgorithm(rawValue: value) ?? .unknownValue

				case "enterprise":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseIdentityProvider.self, field: fieldName, value: fieldValue)
				}
				return try Enterprise(fields: value)

				case "externalIdentities":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: EnterpriseIdentityProvider.self, field: fieldName, value: fieldValue)
				}
				return try ExternalIdentityConnection(fields: value)

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseIdentityProvider.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "idpCertificate":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseIdentityProvider.self, field: fieldName, value: fieldValue)
				}
				return value

				case "issuer":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseIdentityProvider.self, field: fieldName, value: fieldValue)
				}
				return value

				case "recoveryCodes":
				if value is NSNull { return nil }
				guard let value = value as? [String] else {
					throw SchemaViolationError(type: EnterpriseIdentityProvider.self, field: fieldName, value: fieldValue)
				}
				return value.map { return $0 }

				case "signatureMethod":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseIdentityProvider.self, field: fieldName, value: fieldValue)
				}
				return SamlSignatureAlgorithm(rawValue: value) ?? .unknownValue

				case "ssoUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EnterpriseIdentityProvider.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: EnterpriseIdentityProvider.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EnterpriseIdentityProvider" }

		open var digestMethod: ExampleSchema.SamlDigestAlgorithm? {
			return internalGetDigestMethod()
		}

		func internalGetDigestMethod(aliasSuffix: String? = nil) -> ExampleSchema.SamlDigestAlgorithm? {
			return field(field: "digestMethod", aliasSuffix: aliasSuffix) as! ExampleSchema.SamlDigestAlgorithm?
		}

		open var enterprise: ExampleSchema.Enterprise? {
			return internalGetEnterprise()
		}

		func internalGetEnterprise(aliasSuffix: String? = nil) -> ExampleSchema.Enterprise? {
			return field(field: "enterprise", aliasSuffix: aliasSuffix) as! ExampleSchema.Enterprise?
		}

		open var externalIdentities: ExampleSchema.ExternalIdentityConnection {
			return internalGetExternalIdentities()
		}

		open func aliasedExternalIdentities(aliasSuffix: String) -> ExampleSchema.ExternalIdentityConnection {
			return internalGetExternalIdentities(aliasSuffix: aliasSuffix)
		}

		func internalGetExternalIdentities(aliasSuffix: String? = nil) -> ExampleSchema.ExternalIdentityConnection {
			return field(field: "externalIdentities", aliasSuffix: aliasSuffix) as! ExampleSchema.ExternalIdentityConnection
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var idpCertificate: String? {
			return internalGetIdpCertificate()
		}

		func internalGetIdpCertificate(aliasSuffix: String? = nil) -> String? {
			return field(field: "idpCertificate", aliasSuffix: aliasSuffix) as! String?
		}

		open var issuer: String? {
			return internalGetIssuer()
		}

		func internalGetIssuer(aliasSuffix: String? = nil) -> String? {
			return field(field: "issuer", aliasSuffix: aliasSuffix) as! String?
		}

		open var recoveryCodes: [String]? {
			return internalGetRecoveryCodes()
		}

		func internalGetRecoveryCodes(aliasSuffix: String? = nil) -> [String]? {
			return field(field: "recoveryCodes", aliasSuffix: aliasSuffix) as! [String]?
		}

		open var signatureMethod: ExampleSchema.SamlSignatureAlgorithm? {
			return internalGetSignatureMethod()
		}

		func internalGetSignatureMethod(aliasSuffix: String? = nil) -> ExampleSchema.SamlSignatureAlgorithm? {
			return field(field: "signatureMethod", aliasSuffix: aliasSuffix) as! ExampleSchema.SamlSignatureAlgorithm?
		}

		open var ssoUrl: String? {
			return internalGetSsoUrl()
		}

		func internalGetSsoUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "ssoUrl", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "digestMethod":

				return .scalar

				case "enterprise":

				return .object

				case "externalIdentities":

				return .object

				case "id":

				return .scalar

				case "idpCertificate":

				return .scalar

				case "issuer":

				return .scalar

				case "recoveryCodes":

				return .scalarList

				case "signatureMethod":

				return .scalar

				case "ssoUrl":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "enterprise":
				return internalGetEnterprise()

				case "externalIdentities":
				return internalGetExternalIdentities()

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
					case "enterprise":
					if let value = internalGetEnterprise() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "externalIdentities":
					response.append(internalGetExternalIdentities())
					response.append(contentsOf: internalGetExternalIdentities().childResponseObjectMap())

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
