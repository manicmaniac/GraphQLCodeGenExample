// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class GitHubMetadataQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = GitHubMetadata

		@discardableResult
		open func gitHubServicesSha(aliasSuffix: String? = nil) -> GitHubMetadataQuery {
			addField(field: "gitHubServicesSha", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func gitIpAddresses(aliasSuffix: String? = nil) -> GitHubMetadataQuery {
			addField(field: "gitIpAddresses", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func hookIpAddresses(aliasSuffix: String? = nil) -> GitHubMetadataQuery {
			addField(field: "hookIpAddresses", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func importerIpAddresses(aliasSuffix: String? = nil) -> GitHubMetadataQuery {
			addField(field: "importerIpAddresses", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isPasswordAuthenticationVerifiable(aliasSuffix: String? = nil) -> GitHubMetadataQuery {
			addField(field: "isPasswordAuthenticationVerifiable", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pagesIpAddresses(aliasSuffix: String? = nil) -> GitHubMetadataQuery {
			addField(field: "pagesIpAddresses", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class GitHubMetadata: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = GitHubMetadataQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "gitHubServicesSha":
				guard let value = value as? String else {
					throw SchemaViolationError(type: GitHubMetadata.self, field: fieldName, value: fieldValue)
				}
				return value

				case "gitIpAddresses":
				if value is NSNull { return nil }
				guard let value = value as? [String] else {
					throw SchemaViolationError(type: GitHubMetadata.self, field: fieldName, value: fieldValue)
				}
				return value.map { return $0 }

				case "hookIpAddresses":
				if value is NSNull { return nil }
				guard let value = value as? [String] else {
					throw SchemaViolationError(type: GitHubMetadata.self, field: fieldName, value: fieldValue)
				}
				return value.map { return $0 }

				case "importerIpAddresses":
				if value is NSNull { return nil }
				guard let value = value as? [String] else {
					throw SchemaViolationError(type: GitHubMetadata.self, field: fieldName, value: fieldValue)
				}
				return value.map { return $0 }

				case "isPasswordAuthenticationVerifiable":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: GitHubMetadata.self, field: fieldName, value: fieldValue)
				}
				return value

				case "pagesIpAddresses":
				if value is NSNull { return nil }
				guard let value = value as? [String] else {
					throw SchemaViolationError(type: GitHubMetadata.self, field: fieldName, value: fieldValue)
				}
				return value.map { return $0 }

				default:
				throw SchemaViolationError(type: GitHubMetadata.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "GitHubMetadata" }

		open var gitHubServicesSha: String {
			return internalGetGitHubServicesSha()
		}

		func internalGetGitHubServicesSha(aliasSuffix: String? = nil) -> String {
			return field(field: "gitHubServicesSha", aliasSuffix: aliasSuffix) as! String
		}

		open var gitIpAddresses: [String]? {
			return internalGetGitIpAddresses()
		}

		func internalGetGitIpAddresses(aliasSuffix: String? = nil) -> [String]? {
			return field(field: "gitIpAddresses", aliasSuffix: aliasSuffix) as! [String]?
		}

		open var hookIpAddresses: [String]? {
			return internalGetHookIpAddresses()
		}

		func internalGetHookIpAddresses(aliasSuffix: String? = nil) -> [String]? {
			return field(field: "hookIpAddresses", aliasSuffix: aliasSuffix) as! [String]?
		}

		open var importerIpAddresses: [String]? {
			return internalGetImporterIpAddresses()
		}

		func internalGetImporterIpAddresses(aliasSuffix: String? = nil) -> [String]? {
			return field(field: "importerIpAddresses", aliasSuffix: aliasSuffix) as! [String]?
		}

		open var isPasswordAuthenticationVerifiable: Bool {
			return internalGetIsPasswordAuthenticationVerifiable()
		}

		func internalGetIsPasswordAuthenticationVerifiable(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isPasswordAuthenticationVerifiable", aliasSuffix: aliasSuffix) as! Bool
		}

		open var pagesIpAddresses: [String]? {
			return internalGetPagesIpAddresses()
		}

		func internalGetPagesIpAddresses(aliasSuffix: String? = nil) -> [String]? {
			return field(field: "pagesIpAddresses", aliasSuffix: aliasSuffix) as! [String]?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "gitHubServicesSha":

				return .scalar

				case "gitIpAddresses":

				return .scalarList

				case "hookIpAddresses":

				return .scalarList

				case "importerIpAddresses":

				return .scalarList

				case "isPasswordAuthenticationVerifiable":

				return .scalar

				case "pagesIpAddresses":

				return .scalarList

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
