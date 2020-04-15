// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class IssueFilters {
		open var assignee: Input<String>

		open var createdBy: Input<String>

		open var labels: Input<[String]>

		open var mentioned: Input<String>

		open var milestone: Input<String>

		open var since: Input<String>

		open var states: Input<[IssueState]>

		open var viewerSubscribed: Input<Bool>

		public init(
			assignee: Input<String> = .undefined,

			createdBy: Input<String> = .undefined,

			labels: Input<[String]> = .undefined,

			mentioned: Input<String> = .undefined,

			milestone: Input<String> = .undefined,

			since: Input<String> = .undefined,

			states: Input<[IssueState]> = .undefined,

			viewerSubscribed: Input<Bool> = .undefined
		) {
			self.assignee = assignee

			self.createdBy = createdBy

			self.labels = labels

			self.mentioned = mentioned

			self.milestone = milestone

			self.since = since

			self.states = states

			self.viewerSubscribed = viewerSubscribed
		}

		func serialize() -> String {
			var fields: [String] = []

			switch assignee {
				case .value(let assignee):
				if let assignee = assignee {
					fields.append("assignee:\(GraphQL.quoteString(input: assignee))")
				} else {
					fields.append("assignee:null")
				}
				case .undefined: break
			}

			switch createdBy {
				case .value(let createdBy):
				if let createdBy = createdBy {
					fields.append("createdBy:\(GraphQL.quoteString(input: createdBy))")
				} else {
					fields.append("createdBy:null")
				}
				case .undefined: break
			}

			switch labels {
				case .value(let labels):
				if let labels = labels {
					fields.append("labels:[\(labels.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
				} else {
					fields.append("labels:null")
				}
				case .undefined: break
			}

			switch mentioned {
				case .value(let mentioned):
				if let mentioned = mentioned {
					fields.append("mentioned:\(GraphQL.quoteString(input: mentioned))")
				} else {
					fields.append("mentioned:null")
				}
				case .undefined: break
			}

			switch milestone {
				case .value(let milestone):
				if let milestone = milestone {
					fields.append("milestone:\(GraphQL.quoteString(input: milestone))")
				} else {
					fields.append("milestone:null")
				}
				case .undefined: break
			}

			switch since {
				case .value(let since):
				if let since = since {
					fields.append("since:\(GraphQL.quoteString(input: since))")
				} else {
					fields.append("since:null")
				}
				case .undefined: break
			}

			switch states {
				case .value(let states):
				if let states = states {
					fields.append("states:[\(states.map{ "\($0.rawValue)" }.joined(separator: ","))]")
				} else {
					fields.append("states:null")
				}
				case .undefined: break
			}

			switch viewerSubscribed {
				case .value(let viewerSubscribed):
				if let viewerSubscribed = viewerSubscribed {
					fields.append("viewerSubscribed:\(viewerSubscribed)")
				} else {
					fields.append("viewerSubscribed:null")
				}
				case .undefined: break
			}

			return "{\(fields.joined(separator: ","))}"
		}
	}
}
