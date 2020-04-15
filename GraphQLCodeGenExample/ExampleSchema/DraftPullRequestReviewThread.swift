// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class DraftPullRequestReviewThread {
		open var path: String

		open var line: Int32

		open var body: String

		open var side: Input<DiffSide>

		open var startLine: Input<Int32>

		open var startSide: Input<DiffSide>

		public init(
			path: String,

			line: Int32,

			body: String,

			side: Input<DiffSide> = .undefined,

			startLine: Input<Int32> = .undefined,

			startSide: Input<DiffSide> = .undefined
		) {
			self.path = path

			self.line = line

			self.side = side

			self.startLine = startLine

			self.startSide = startSide

			self.body = body
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("path:\(GraphQL.quoteString(input: path))")

			fields.append("line:\(line)")

			fields.append("body:\(GraphQL.quoteString(input: body))")

			switch side {
				case .value(let side):
				if let side = side {
					fields.append("side:\(side.rawValue)")
				} else {
					fields.append("side:null")
				}
				case .undefined: break
			}

			switch startLine {
				case .value(let startLine):
				if let startLine = startLine {
					fields.append("startLine:\(startLine)")
				} else {
					fields.append("startLine:null")
				}
				case .undefined: break
			}

			switch startSide {
				case .value(let startSide):
				if let startSide = startSide {
					fields.append("startSide:\(startSide.rawValue)")
				} else {
					fields.append("startSide:null")
				}
				case .undefined: break
			}

			return "{\(fields.joined(separator: ","))}"
		}
	}
}
