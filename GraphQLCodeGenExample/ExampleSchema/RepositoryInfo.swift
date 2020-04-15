// Generated from graphql_swift_gen gem
import Foundation

public protocol RepositoryInfo {
	var typeName: String { get }

	var createdAt: String { get }

	var description: String? { get }

	var descriptionHtml: String { get }

	var forkCount: Int32 { get }

	var hasIssuesEnabled: Bool { get }

	var hasProjectsEnabled: Bool { get }

	var hasWikiEnabled: Bool { get }

	var homepageUrl: String? { get }

	var isArchived: Bool { get }

	var isFork: Bool { get }

	var isLocked: Bool { get }

	var isMirror: Bool { get }

	var isPrivate: Bool { get }

	var isTemplate: Bool { get }

	var licenseInfo: ExampleSchema.License? { get }

	var lockReason: ExampleSchema.RepositoryLockReason? { get }

	var mirrorUrl: String? { get }

	var name: String { get }

	var nameWithOwner: String { get }

	var openGraphImageUrl: String { get }

	var owner: RepositoryOwner { get }

	var pushedAt: String? { get }

	var resourcePath: String { get }

	var shortDescriptionHtml: String { get }

	var updatedAt: String { get }

	var url: String { get }

	var usesCustomOpenGraphImage: Bool { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class RepositoryInfoQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = RepositoryInfo

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func description(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "description", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func descriptionHtml(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "descriptionHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func forkCount(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "forkCount", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func hasIssuesEnabled(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "hasIssuesEnabled", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func hasProjectsEnabled(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "hasProjectsEnabled", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func hasWikiEnabled(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "hasWikiEnabled", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func homepageUrl(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "homepageUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isArchived(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "isArchived", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isFork(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "isFork", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isLocked(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "isLocked", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isMirror(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "isMirror", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isPrivate(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "isPrivate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isTemplate(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "isTemplate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func licenseInfo(aliasSuffix: String? = nil, _ subfields: (LicenseQuery) -> Void) -> RepositoryInfoQuery {
			let subquery = LicenseQuery()
			subfields(subquery)

			addField(field: "licenseInfo", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func lockReason(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "lockReason", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func mirrorUrl(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "mirrorUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func nameWithOwner(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "nameWithOwner", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func openGraphImageUrl(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "openGraphImageUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func owner(aliasSuffix: String? = nil, _ subfields: (RepositoryOwnerQuery) -> Void) -> RepositoryInfoQuery {
			let subquery = RepositoryOwnerQuery()
			subfields(subquery)

			addField(field: "owner", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func pushedAt(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "pushedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func shortDescriptionHtml(aliasSuffix: String? = nil, limit: Int32? = nil) -> RepositoryInfoQuery {
			var args: [String] = []

			if let limit = limit {
				args.append("limit:\(limit)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "shortDescriptionHTML", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func updatedAt(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "updatedAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func usesCustomOpenGraphImage(aliasSuffix: String? = nil) -> RepositoryInfoQuery {
			addField(field: "usesCustomOpenGraphImage", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onRepository(subfields: (RepositoryQuery) -> Void) -> RepositoryInfoQuery {
			let subquery = RepositoryQuery()
			subfields(subquery)
			addInlineFragment(on: "Repository", subfields: subquery)
			return self
		}
	}

	open class UnknownRepositoryInfo: GraphQL.AbstractResponse, GraphQLObject, RepositoryInfo {
		public typealias Query = RepositoryInfoQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "description":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "descriptionHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "forkCount":
				guard let value = value as? Int else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "hasIssuesEnabled":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "hasProjectsEnabled":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "hasWikiEnabled":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "homepageUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isArchived":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isFork":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isLocked":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isMirror":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isPrivate":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isTemplate":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "licenseInfo":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return try License(fields: value)

				case "lockReason":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return RepositoryLockReason(rawValue: value) ?? .unknownValue

				case "mirrorUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "nameWithOwner":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "openGraphImageUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "owner":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return try UnknownRepositoryOwner.create(fields: value)

				case "pushedAt":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "shortDescriptionHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "updatedAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				case "usesCustomOpenGraphImage":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> RepositoryInfo {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownRepositoryInfo.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Repository":
				return try Repository.init(fields: fields)

				default:
				return try UnknownRepositoryInfo.init(fields: fields)
			}
		}

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var description: String? {
			return internalGetDescription()
		}

		func internalGetDescription(aliasSuffix: String? = nil) -> String? {
			return field(field: "description", aliasSuffix: aliasSuffix) as! String?
		}

		open var descriptionHtml: String {
			return internalGetDescriptionHtml()
		}

		func internalGetDescriptionHtml(aliasSuffix: String? = nil) -> String {
			return field(field: "descriptionHTML", aliasSuffix: aliasSuffix) as! String
		}

		open var forkCount: Int32 {
			return internalGetForkCount()
		}

		func internalGetForkCount(aliasSuffix: String? = nil) -> Int32 {
			return field(field: "forkCount", aliasSuffix: aliasSuffix) as! Int32
		}

		open var hasIssuesEnabled: Bool {
			return internalGetHasIssuesEnabled()
		}

		func internalGetHasIssuesEnabled(aliasSuffix: String? = nil) -> Bool {
			return field(field: "hasIssuesEnabled", aliasSuffix: aliasSuffix) as! Bool
		}

		open var hasProjectsEnabled: Bool {
			return internalGetHasProjectsEnabled()
		}

		func internalGetHasProjectsEnabled(aliasSuffix: String? = nil) -> Bool {
			return field(field: "hasProjectsEnabled", aliasSuffix: aliasSuffix) as! Bool
		}

		open var hasWikiEnabled: Bool {
			return internalGetHasWikiEnabled()
		}

		func internalGetHasWikiEnabled(aliasSuffix: String? = nil) -> Bool {
			return field(field: "hasWikiEnabled", aliasSuffix: aliasSuffix) as! Bool
		}

		open var homepageUrl: String? {
			return internalGetHomepageUrl()
		}

		func internalGetHomepageUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "homepageUrl", aliasSuffix: aliasSuffix) as! String?
		}

		open var isArchived: Bool {
			return internalGetIsArchived()
		}

		func internalGetIsArchived(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isArchived", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isFork: Bool {
			return internalGetIsFork()
		}

		func internalGetIsFork(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isFork", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isLocked: Bool {
			return internalGetIsLocked()
		}

		func internalGetIsLocked(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isLocked", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isMirror: Bool {
			return internalGetIsMirror()
		}

		func internalGetIsMirror(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isMirror", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isPrivate: Bool {
			return internalGetIsPrivate()
		}

		func internalGetIsPrivate(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isPrivate", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isTemplate: Bool {
			return internalGetIsTemplate()
		}

		func internalGetIsTemplate(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isTemplate", aliasSuffix: aliasSuffix) as! Bool
		}

		open var licenseInfo: ExampleSchema.License? {
			return internalGetLicenseInfo()
		}

		func internalGetLicenseInfo(aliasSuffix: String? = nil) -> ExampleSchema.License? {
			return field(field: "licenseInfo", aliasSuffix: aliasSuffix) as! ExampleSchema.License?
		}

		open var lockReason: ExampleSchema.RepositoryLockReason? {
			return internalGetLockReason()
		}

		func internalGetLockReason(aliasSuffix: String? = nil) -> ExampleSchema.RepositoryLockReason? {
			return field(field: "lockReason", aliasSuffix: aliasSuffix) as! ExampleSchema.RepositoryLockReason?
		}

		open var mirrorUrl: String? {
			return internalGetMirrorUrl()
		}

		func internalGetMirrorUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "mirrorUrl", aliasSuffix: aliasSuffix) as! String?
		}

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		open var nameWithOwner: String {
			return internalGetNameWithOwner()
		}

		func internalGetNameWithOwner(aliasSuffix: String? = nil) -> String {
			return field(field: "nameWithOwner", aliasSuffix: aliasSuffix) as! String
		}

		open var openGraphImageUrl: String {
			return internalGetOpenGraphImageUrl()
		}

		func internalGetOpenGraphImageUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "openGraphImageUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var owner: RepositoryOwner {
			return internalGetOwner()
		}

		func internalGetOwner(aliasSuffix: String? = nil) -> RepositoryOwner {
			return field(field: "owner", aliasSuffix: aliasSuffix) as! RepositoryOwner
		}

		open var pushedAt: String? {
			return internalGetPushedAt()
		}

		func internalGetPushedAt(aliasSuffix: String? = nil) -> String? {
			return field(field: "pushedAt", aliasSuffix: aliasSuffix) as! String?
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var shortDescriptionHtml: String {
			return internalGetShortDescriptionHtml()
		}

		open func aliasedShortDescriptionHtml(aliasSuffix: String) -> String {
			return internalGetShortDescriptionHtml(aliasSuffix: aliasSuffix)
		}

		func internalGetShortDescriptionHtml(aliasSuffix: String? = nil) -> String {
			return field(field: "shortDescriptionHTML", aliasSuffix: aliasSuffix) as! String
		}

		open var updatedAt: String {
			return internalGetUpdatedAt()
		}

		func internalGetUpdatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "updatedAt", aliasSuffix: aliasSuffix) as! String
		}

		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		open var usesCustomOpenGraphImage: Bool {
			return internalGetUsesCustomOpenGraphImage()
		}

		func internalGetUsesCustomOpenGraphImage(aliasSuffix: String? = nil) -> Bool {
			return field(field: "usesCustomOpenGraphImage", aliasSuffix: aliasSuffix) as! Bool
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "createdAt":

				return .scalar

				case "description":

				return .scalar

				case "descriptionHTML":

				return .scalar

				case "forkCount":

				return .scalar

				case "hasIssuesEnabled":

				return .scalar

				case "hasProjectsEnabled":

				return .scalar

				case "hasWikiEnabled":

				return .scalar

				case "homepageUrl":

				return .scalar

				case "isArchived":

				return .scalar

				case "isFork":

				return .scalar

				case "isLocked":

				return .scalar

				case "isMirror":

				return .scalar

				case "isPrivate":

				return .scalar

				case "isTemplate":

				return .scalar

				case "licenseInfo":

				return .object

				case "lockReason":

				return .scalar

				case "mirrorUrl":

				return .scalar

				case "name":

				return .scalar

				case "nameWithOwner":

				return .scalar

				case "openGraphImageUrl":

				return .scalar

				case "owner":

				return .object

				case "pushedAt":

				return .scalar

				case "resourcePath":

				return .scalar

				case "shortDescriptionHTML":

				return .scalar

				case "updatedAt":

				return .scalar

				case "url":

				return .scalar

				case "usesCustomOpenGraphImage":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "licenseInfo":
				return internalGetLicenseInfo()

				case "owner":
				return internalGetOwner().responseObject()

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
					case "licenseInfo":
					if let value = internalGetLicenseInfo() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "owner":
					response.append(internalGetOwner() as! GraphQL.AbstractResponse)
					response.append(contentsOf: internalGetOwner().childResponseObjectMap())

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
