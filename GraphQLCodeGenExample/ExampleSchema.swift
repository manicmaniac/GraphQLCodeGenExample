// Generated from graphql_swift_gen gem

open class ExampleSchema {
	open static func buildQuery(_ subfields: (QueryQuery) -> Void) -> QueryQuery {
		let root = QueryQuery()
		subfields(root)
		return root
	}

	open static func buildMutation(_ subfields: (MutationQuery) -> Void) -> MutationQuery {
		let root = MutationQuery()
		subfields(root)
		return root
	}
}
