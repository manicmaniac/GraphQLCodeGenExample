// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class GistFileQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = GistFile

		@discardableResult
		open func encodedName(aliasSuffix: String? = nil) -> GistFileQuery {
			addField(field: "encodedName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func encoding(aliasSuffix: String? = nil) -> GistFileQuery {
			addField(field: "encoding", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func `extension`(aliasSuffix: String? = nil) -> GistFileQuery {
			addField(field: "extension", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isImage(aliasSuffix: String? = nil) -> GistFileQuery {
			addField(field: "isImage", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isTruncated(aliasSuffix: String? = nil) -> GistFileQuery {
			addField(field: "isTruncated", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func language(aliasSuffix: String? = nil, _ subfields: (LanguageQuery) -> Void) -> GistFileQuery {
			let subquery = LanguageQuery()
			subfields(subquery)

			addField(field: "language", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> GistFileQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func size(aliasSuffix: String? = nil) -> GistFileQuery {
			addField(field: "size", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func text(aliasSuffix: String? = nil, truncate: Int32? = nil) -> GistFileQuery {
			var args: [String] = []

			if let truncate = truncate {
				args.append("truncate:\(truncate)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "text", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}
	}

	open class GistFile: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = GistFileQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "encodedName":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: GistFile.self, field: fieldName, value: fieldValue)
				}
				return value

				case "encoding":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: GistFile.self, field: fieldName, value: fieldValue)
				}
				return value

				case "extension":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: GistFile.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isImage":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: GistFile.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isTruncated":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: GistFile.self, field: fieldName, value: fieldValue)
				}
				return value

				case "language":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: GistFile.self, field: fieldName, value: fieldValue)
				}
				return try Language(fields: value)

				case "name":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: GistFile.self, field: fieldName, value: fieldValue)
				}
				return value

				case "size":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: GistFile.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "text":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: GistFile.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: GistFile.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "GistFile" }

		open var encodedName: String? {
			return internalGetEncodedName()
		}

		func internalGetEncodedName(aliasSuffix: String? = nil) -> String? {
			return field(field: "encodedName", aliasSuffix: aliasSuffix) as! String?
		}

		open var encoding: String? {
			return internalGetEncoding()
		}

		func internalGetEncoding(aliasSuffix: String? = nil) -> String? {
			return field(field: "encoding", aliasSuffix: aliasSuffix) as! String?
		}

		open var `extension`: String? {
			return internalGetExtension()
		}

		func internalGetExtension(aliasSuffix: String? = nil) -> String? {
			return field(field: "extension", aliasSuffix: aliasSuffix) as! String?
		}

		open var isImage: Bool {
			return internalGetIsImage()
		}

		func internalGetIsImage(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isImage", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isTruncated: Bool {
			return internalGetIsTruncated()
		}

		func internalGetIsTruncated(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isTruncated", aliasSuffix: aliasSuffix) as! Bool
		}

		open var language: ExampleSchema.Language? {
			return internalGetLanguage()
		}

		func internalGetLanguage(aliasSuffix: String? = nil) -> ExampleSchema.Language? {
			return field(field: "language", aliasSuffix: aliasSuffix) as! ExampleSchema.Language?
		}

		open var name: String? {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String? {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String?
		}

		open var size: Int32? {
			return internalGetSize()
		}

		func internalGetSize(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "size", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var text: String? {
			return internalGetText()
		}

		open func aliasedText(aliasSuffix: String) -> String? {
			return internalGetText(aliasSuffix: aliasSuffix)
		}

		func internalGetText(aliasSuffix: String? = nil) -> String? {
			return field(field: "text", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "encodedName":

				return .scalar

				case "encoding":

				return .scalar

				case "extension":

				return .scalar

				case "isImage":

				return .scalar

				case "isTruncated":

				return .scalar

				case "language":

				return .object

				case "name":

				return .scalar

				case "size":

				return .scalar

				case "text":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "language":
				return internalGetLanguage()

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
					case "language":
					if let value = internalGetLanguage() {
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
