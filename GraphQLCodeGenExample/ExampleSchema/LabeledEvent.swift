// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class LabeledEventQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = LabeledEvent

		@discardableResult
		open func actor(aliasSuffix: String? = nil, _ subfields: (ActorQuery) -> Void) -> LabeledEventQuery {
			let subquery = ActorQuery()
			subfields(subquery)

			addField(field: "actor", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func createdAt(aliasSuffix: String? = nil) -> LabeledEventQuery {
			addField(field: "createdAt", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> LabeledEventQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func label(aliasSuffix: String? = nil, _ subfields: (LabelQuery) -> Void) -> LabeledEventQuery {
			let subquery = LabelQuery()
			subfields(subquery)

			addField(field: "label", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func labelable(aliasSuffix: String? = nil, _ subfields: (LabelableQuery) -> Void) -> LabeledEventQuery {
			let subquery = LabelableQuery()
			subfields(subquery)

			addField(field: "labelable", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class LabeledEvent: GraphQL.AbstractResponse, GraphQLObject, IssueTimelineItem, IssueTimelineItems, Node, PullRequestTimelineItem, PullRequestTimelineItems {
		public typealias Query = LabeledEventQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "actor":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: LabeledEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownActor.create(fields: value)

				case "createdAt":
				guard let value = value as? String else {
					throw SchemaViolationError(type: LabeledEvent.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: LabeledEvent.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "label":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: LabeledEvent.self, field: fieldName, value: fieldValue)
				}
				return try Label(fields: value)

				case "labelable":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: LabeledEvent.self, field: fieldName, value: fieldValue)
				}
				return try UnknownLabelable.create(fields: value)

				default:
				throw SchemaViolationError(type: LabeledEvent.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "LabeledEvent" }

		open var actor: Actor? {
			return internalGetActor()
		}

		func internalGetActor(aliasSuffix: String? = nil) -> Actor? {
			return field(field: "actor", aliasSuffix: aliasSuffix) as! Actor?
		}

		open var createdAt: String {
			return internalGetCreatedAt()
		}

		func internalGetCreatedAt(aliasSuffix: String? = nil) -> String {
			return field(field: "createdAt", aliasSuffix: aliasSuffix) as! String
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var label: ExampleSchema.Label {
			return internalGetLabel()
		}

		func internalGetLabel(aliasSuffix: String? = nil) -> ExampleSchema.Label {
			return field(field: "label", aliasSuffix: aliasSuffix) as! ExampleSchema.Label
		}

		open var labelable: Labelable {
			return internalGetLabelable()
		}

		func internalGetLabelable(aliasSuffix: String? = nil) -> Labelable {
			return field(field: "labelable", aliasSuffix: aliasSuffix) as! Labelable
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "actor":

				return .object

				case "createdAt":

				return .scalar

				case "id":

				return .scalar

				case "label":

				return .object

				case "labelable":

				return .object

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "actor":
				return internalGetActor()?.responseObject()

				case "label":
				return internalGetLabel()

				case "labelable":
				return internalGetLabelable().responseObject()

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
					case "actor":
					if let value = internalGetActor() {
						response.append(value as! GraphQL.AbstractResponse)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "label":
					response.append(internalGetLabel())
					response.append(contentsOf: internalGetLabel().childResponseObjectMap())

					case "labelable":
					response.append(internalGetLabelable() as! GraphQL.AbstractResponse)
					response.append(contentsOf: internalGetLabelable().childResponseObjectMap())

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
