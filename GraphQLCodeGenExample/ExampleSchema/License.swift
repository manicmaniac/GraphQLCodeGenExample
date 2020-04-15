// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class LicenseQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = License

		@discardableResult
		open func body(aliasSuffix: String? = nil) -> LicenseQuery {
			addField(field: "body", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func conditions(aliasSuffix: String? = nil, _ subfields: (LicenseRuleQuery) -> Void) -> LicenseQuery {
			let subquery = LicenseRuleQuery()
			subfields(subquery)

			addField(field: "conditions", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func description(aliasSuffix: String? = nil) -> LicenseQuery {
			addField(field: "description", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func featured(aliasSuffix: String? = nil) -> LicenseQuery {
			addField(field: "featured", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func hidden(aliasSuffix: String? = nil) -> LicenseQuery {
			addField(field: "hidden", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> LicenseQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func implementation(aliasSuffix: String? = nil) -> LicenseQuery {
			addField(field: "implementation", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func key(aliasSuffix: String? = nil) -> LicenseQuery {
			addField(field: "key", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func limitations(aliasSuffix: String? = nil, _ subfields: (LicenseRuleQuery) -> Void) -> LicenseQuery {
			let subquery = LicenseRuleQuery()
			subfields(subquery)

			addField(field: "limitations", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> LicenseQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func nickname(aliasSuffix: String? = nil) -> LicenseQuery {
			addField(field: "nickname", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func permissions(aliasSuffix: String? = nil, _ subfields: (LicenseRuleQuery) -> Void) -> LicenseQuery {
			let subquery = LicenseRuleQuery()
			subfields(subquery)

			addField(field: "permissions", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func pseudoLicense(aliasSuffix: String? = nil) -> LicenseQuery {
			addField(field: "pseudoLicense", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func spdxId(aliasSuffix: String? = nil) -> LicenseQuery {
			addField(field: "spdxId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> LicenseQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class License: GraphQL.AbstractResponse, GraphQLObject, Node {
		public typealias Query = LicenseQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "body":
				guard let value = value as? String else {
					throw SchemaViolationError(type: License.self, field: fieldName, value: fieldValue)
				}
				return value

				case "conditions":
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: License.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: License.self, field: fieldName, value: fieldValue)
				}
				return try LicenseRule(fields: value) } as [Any?]

				case "description":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: License.self, field: fieldName, value: fieldValue)
				}
				return value

				case "featured":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: License.self, field: fieldName, value: fieldValue)
				}
				return value

				case "hidden":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: License.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: License.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "implementation":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: License.self, field: fieldName, value: fieldValue)
				}
				return value

				case "key":
				guard let value = value as? String else {
					throw SchemaViolationError(type: License.self, field: fieldName, value: fieldValue)
				}
				return value

				case "limitations":
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: License.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: License.self, field: fieldName, value: fieldValue)
				}
				return try LicenseRule(fields: value) } as [Any?]

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: License.self, field: fieldName, value: fieldValue)
				}
				return value

				case "nickname":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: License.self, field: fieldName, value: fieldValue)
				}
				return value

				case "permissions":
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: License.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: License.self, field: fieldName, value: fieldValue)
				}
				return try LicenseRule(fields: value) } as [Any?]

				case "pseudoLicense":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: License.self, field: fieldName, value: fieldValue)
				}
				return value

				case "spdxId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: License.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: License.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: License.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "License" }

		open var body: String {
			return internalGetBody()
		}

		func internalGetBody(aliasSuffix: String? = nil) -> String {
			return field(field: "body", aliasSuffix: aliasSuffix) as! String
		}

		open var conditions: [ExampleSchema.LicenseRule?] {
			return internalGetConditions()
		}

		func internalGetConditions(aliasSuffix: String? = nil) -> [ExampleSchema.LicenseRule?] {
			return field(field: "conditions", aliasSuffix: aliasSuffix) as! [ExampleSchema.LicenseRule?]
		}

		open var description: String? {
			return internalGetDescription()
		}

		func internalGetDescription(aliasSuffix: String? = nil) -> String? {
			return field(field: "description", aliasSuffix: aliasSuffix) as! String?
		}

		open var featured: Bool {
			return internalGetFeatured()
		}

		func internalGetFeatured(aliasSuffix: String? = nil) -> Bool {
			return field(field: "featured", aliasSuffix: aliasSuffix) as! Bool
		}

		open var hidden: Bool {
			return internalGetHidden()
		}

		func internalGetHidden(aliasSuffix: String? = nil) -> Bool {
			return field(field: "hidden", aliasSuffix: aliasSuffix) as! Bool
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var implementation: String? {
			return internalGetImplementation()
		}

		func internalGetImplementation(aliasSuffix: String? = nil) -> String? {
			return field(field: "implementation", aliasSuffix: aliasSuffix) as! String?
		}

		open var key: String {
			return internalGetKey()
		}

		func internalGetKey(aliasSuffix: String? = nil) -> String {
			return field(field: "key", aliasSuffix: aliasSuffix) as! String
		}

		open var limitations: [ExampleSchema.LicenseRule?] {
			return internalGetLimitations()
		}

		func internalGetLimitations(aliasSuffix: String? = nil) -> [ExampleSchema.LicenseRule?] {
			return field(field: "limitations", aliasSuffix: aliasSuffix) as! [ExampleSchema.LicenseRule?]
		}

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		open var nickname: String? {
			return internalGetNickname()
		}

		func internalGetNickname(aliasSuffix: String? = nil) -> String? {
			return field(field: "nickname", aliasSuffix: aliasSuffix) as! String?
		}

		open var permissions: [ExampleSchema.LicenseRule?] {
			return internalGetPermissions()
		}

		func internalGetPermissions(aliasSuffix: String? = nil) -> [ExampleSchema.LicenseRule?] {
			return field(field: "permissions", aliasSuffix: aliasSuffix) as! [ExampleSchema.LicenseRule?]
		}

		open var pseudoLicense: Bool {
			return internalGetPseudoLicense()
		}

		func internalGetPseudoLicense(aliasSuffix: String? = nil) -> Bool {
			return field(field: "pseudoLicense", aliasSuffix: aliasSuffix) as! Bool
		}

		open var spdxId: String? {
			return internalGetSpdxId()
		}

		func internalGetSpdxId(aliasSuffix: String? = nil) -> String? {
			return field(field: "spdxId", aliasSuffix: aliasSuffix) as! String?
		}

		open var url: String? {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "body":

				return .scalar

				case "conditions":

				return .objectList

				case "description":

				return .scalar

				case "featured":

				return .scalar

				case "hidden":

				return .scalar

				case "id":

				return .scalar

				case "implementation":

				return .scalar

				case "key":

				return .scalar

				case "limitations":

				return .objectList

				case "name":

				return .scalar

				case "nickname":

				return .scalar

				case "permissions":

				return .objectList

				case "pseudoLicense":

				return .scalar

				case "spdxId":

				return .scalar

				case "url":

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
				case "conditions":
				return internalGetConditions()

				case "limitations":
				return internalGetLimitations()

				case "permissions":
				return internalGetPermissions()

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
