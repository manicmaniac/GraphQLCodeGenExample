// Generated from graphql_swift_gen gem
import Foundation

public protocol HovercardContext {
	var typeName: String { get }

	var message: String { get }

	var octicon: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension ExampleSchema {
	open class HovercardContextQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = HovercardContext

		@discardableResult
		open func message(aliasSuffix: String? = nil) -> HovercardContextQuery {
			addField(field: "message", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func octicon(aliasSuffix: String? = nil) -> HovercardContextQuery {
			addField(field: "octicon", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onGenericHovercardContext(subfields: (GenericHovercardContextQuery) -> Void) -> HovercardContextQuery {
			let subquery = GenericHovercardContextQuery()
			subfields(subquery)
			addInlineFragment(on: "GenericHovercardContext", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrganizationTeamsHovercardContext(subfields: (OrganizationTeamsHovercardContextQuery) -> Void) -> HovercardContextQuery {
			let subquery = OrganizationTeamsHovercardContextQuery()
			subfields(subquery)
			addInlineFragment(on: "OrganizationTeamsHovercardContext", subfields: subquery)
			return self
		}

		@discardableResult
		open func onOrganizationsHovercardContext(subfields: (OrganizationsHovercardContextQuery) -> Void) -> HovercardContextQuery {
			let subquery = OrganizationsHovercardContextQuery()
			subfields(subquery)
			addInlineFragment(on: "OrganizationsHovercardContext", subfields: subquery)
			return self
		}

		@discardableResult
		open func onReviewStatusHovercardContext(subfields: (ReviewStatusHovercardContextQuery) -> Void) -> HovercardContextQuery {
			let subquery = ReviewStatusHovercardContextQuery()
			subfields(subquery)
			addInlineFragment(on: "ReviewStatusHovercardContext", subfields: subquery)
			return self
		}

		@discardableResult
		open func onViewerHovercardContext(subfields: (ViewerHovercardContextQuery) -> Void) -> HovercardContextQuery {
			let subquery = ViewerHovercardContextQuery()
			subfields(subquery)
			addInlineFragment(on: "ViewerHovercardContext", subfields: subquery)
			return self
		}
	}

	open class UnknownHovercardContext: GraphQL.AbstractResponse, GraphQLObject, HovercardContext {
		public typealias Query = HovercardContextQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "message":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownHovercardContext.self, field: fieldName, value: fieldValue)
				}
				return value

				case "octicon":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownHovercardContext.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownHovercardContext.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> HovercardContext {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownHovercardContext.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "GenericHovercardContext":
				return try GenericHovercardContext.init(fields: fields)

				case "OrganizationTeamsHovercardContext":
				return try OrganizationTeamsHovercardContext.init(fields: fields)

				case "OrganizationsHovercardContext":
				return try OrganizationsHovercardContext.init(fields: fields)

				case "ReviewStatusHovercardContext":
				return try ReviewStatusHovercardContext.init(fields: fields)

				case "ViewerHovercardContext":
				return try ViewerHovercardContext.init(fields: fields)

				default:
				return try UnknownHovercardContext.init(fields: fields)
			}
		}

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

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "message":

				return .scalar

				case "octicon":

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
