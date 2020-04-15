// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class FundingLinkQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = FundingLink

		@discardableResult
		open func platform(aliasSuffix: String? = nil) -> FundingLinkQuery {
			addField(field: "platform", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> FundingLinkQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class FundingLink: GraphQL.AbstractResponse, GraphQLObject {
		public typealias Query = FundingLinkQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "platform":
				guard let value = value as? String else {
					throw SchemaViolationError(type: FundingLink.self, field: fieldName, value: fieldValue)
				}
				return FundingPlatform(rawValue: value) ?? .unknownValue

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: FundingLink.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: FundingLink.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "FundingLink" }

		open var platform: ExampleSchema.FundingPlatform {
			return internalGetPlatform()
		}

		func internalGetPlatform(aliasSuffix: String? = nil) -> ExampleSchema.FundingPlatform {
			return field(field: "platform", aliasSuffix: aliasSuffix) as! ExampleSchema.FundingPlatform
		}

		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "platform":

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
