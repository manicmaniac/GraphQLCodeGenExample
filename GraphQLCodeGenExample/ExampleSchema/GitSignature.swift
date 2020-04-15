// Generated from graphql_swift_gen gem
import Foundation

public protocol GitSignature {
	var typeName: String { get }

	var email: String { get }

	var isValid: Bool { get }

	var payload: String { get }

	var signature: String { get }

	var signer: ExampleSchema.User? { get }

	var state: ExampleSchema.GitSignatureState { get }

	var wasSignedByGitHub: Bool { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class GitSignatureQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = GitSignature

		@discardableResult
		open func email(aliasSuffix: String? = nil) -> GitSignatureQuery {
			addField(field: "email", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isValid(aliasSuffix: String? = nil) -> GitSignatureQuery {
			addField(field: "isValid", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func payload(aliasSuffix: String? = nil) -> GitSignatureQuery {
			addField(field: "payload", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func signature(aliasSuffix: String? = nil) -> GitSignatureQuery {
			addField(field: "signature", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func signer(aliasSuffix: String? = nil, _ subfields: (UserQuery) -> Void) -> GitSignatureQuery {
			let subquery = UserQuery()
			subfields(subquery)

			addField(field: "signer", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func state(aliasSuffix: String? = nil) -> GitSignatureQuery {
			addField(field: "state", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func wasSignedByGitHub(aliasSuffix: String? = nil) -> GitSignatureQuery {
			addField(field: "wasSignedByGitHub", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onGpgSignature(subfields: (GpgSignatureQuery) -> Void) -> GitSignatureQuery {
			let subquery = GpgSignatureQuery()
			subfields(subquery)
			addInlineFragment(on: "GpgSignature", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSmimeSignature(subfields: (SmimeSignatureQuery) -> Void) -> GitSignatureQuery {
			let subquery = SmimeSignatureQuery()
			subfields(subquery)
			addInlineFragment(on: "SmimeSignature", subfields: subquery)
			return self
		}

		@discardableResult
		open func onUnknownSignature(subfields: (UnknownSignatureQuery) -> Void) -> GitSignatureQuery {
			let subquery = UnknownSignatureQuery()
			subfields(subquery)
			addInlineFragment(on: "UnknownSignature", subfields: subquery)
			return self
		}
	}

	open class UnknownGitSignature: GraphQL.AbstractResponse, GraphQLObject, GitSignature {
		public typealias Query = GitSignatureQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "email":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownGitSignature.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isValid":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownGitSignature.self, field: fieldName, value: fieldValue)
				}
				return value

				case "payload":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownGitSignature.self, field: fieldName, value: fieldValue)
				}
				return value

				case "signature":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownGitSignature.self, field: fieldName, value: fieldValue)
				}
				return value

				case "signer":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownGitSignature.self, field: fieldName, value: fieldValue)
				}
				return try User(fields: value)

				case "state":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownGitSignature.self, field: fieldName, value: fieldValue)
				}
				return GitSignatureState(rawValue: value) ?? .unknownValue

				case "wasSignedByGitHub":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownGitSignature.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownGitSignature.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> GitSignature {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownGitSignature.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "GpgSignature":
				return try GpgSignature.init(fields: fields)

				case "SmimeSignature":
				return try SmimeSignature.init(fields: fields)

				case "UnknownSignature":
				return try UnknownSignature.init(fields: fields)

				default:
				return try UnknownGitSignature.init(fields: fields)
			}
		}

		open var email: String {
			return internalGetEmail()
		}

		func internalGetEmail(aliasSuffix: String? = nil) -> String {
			return field(field: "email", aliasSuffix: aliasSuffix) as! String
		}

		open var isValid: Bool {
			return internalGetIsValid()
		}

		func internalGetIsValid(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isValid", aliasSuffix: aliasSuffix) as! Bool
		}

		open var payload: String {
			return internalGetPayload()
		}

		func internalGetPayload(aliasSuffix: String? = nil) -> String {
			return field(field: "payload", aliasSuffix: aliasSuffix) as! String
		}

		open var signature: String {
			return internalGetSignature()
		}

		func internalGetSignature(aliasSuffix: String? = nil) -> String {
			return field(field: "signature", aliasSuffix: aliasSuffix) as! String
		}

		open var signer: ExampleSchema.User? {
			return internalGetSigner()
		}

		func internalGetSigner(aliasSuffix: String? = nil) -> ExampleSchema.User? {
			return field(field: "signer", aliasSuffix: aliasSuffix) as! ExampleSchema.User?
		}

		open var state: ExampleSchema.GitSignatureState {
			return internalGetState()
		}

		func internalGetState(aliasSuffix: String? = nil) -> ExampleSchema.GitSignatureState {
			return field(field: "state", aliasSuffix: aliasSuffix) as! ExampleSchema.GitSignatureState
		}

		open var wasSignedByGitHub: Bool {
			return internalGetWasSignedByGitHub()
		}

		func internalGetWasSignedByGitHub(aliasSuffix: String? = nil) -> Bool {
			return field(field: "wasSignedByGitHub", aliasSuffix: aliasSuffix) as! Bool
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "email":

				return .scalar

				case "isValid":

				return .scalar

				case "payload":

				return .scalar

				case "signature":

				return .scalar

				case "signer":

				return .object

				case "state":

				return .scalar

				case "wasSignedByGitHub":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "signer":
				return internalGetSigner()

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
					case "signer":
					if let value = internalGetSigner() {
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
