// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class SetEnterpriseIdentityProviderInput {
		open var enterpriseId: GraphQL.ID

		open var ssoUrl: String

		open var idpCertificate: String

		open var signatureMethod: SamlSignatureAlgorithm

		open var digestMethod: SamlDigestAlgorithm

		open var issuer: Input<String>

		open var clientMutationId: Input<String>

		public init(
			enterpriseId: GraphQL.ID,

			ssoUrl: String,

			idpCertificate: String,

			signatureMethod: SamlSignatureAlgorithm,

			digestMethod: SamlDigestAlgorithm,

			issuer: Input<String> = .undefined,

			clientMutationId: Input<String> = .undefined
		) {
			self.enterpriseId = enterpriseId

			self.ssoUrl = ssoUrl

			self.issuer = issuer

			self.idpCertificate = idpCertificate

			self.signatureMethod = signatureMethod

			self.digestMethod = digestMethod

			self.clientMutationId = clientMutationId
		}

		func serialize() -> String {
			var fields: [String] = []

			fields.append("enterpriseId:\(GraphQL.quoteString(input: "\(enterpriseId.rawValue)"))")

			fields.append("ssoUrl:\(GraphQL.quoteString(input: ssoUrl))")

			fields.append("idpCertificate:\(GraphQL.quoteString(input: idpCertificate))")

			fields.append("signatureMethod:\(signatureMethod.rawValue)")

			fields.append("digestMethod:\(digestMethod.rawValue)")

			switch issuer {
				case .value(let issuer):
				if let issuer = issuer {
					fields.append("issuer:\(GraphQL.quoteString(input: issuer))")
				} else {
					fields.append("issuer:null")
				}
				case .undefined: break
			}

			switch clientMutationId {
				case .value(let clientMutationId):
				if let clientMutationId = clientMutationId {
					fields.append("clientMutationId:\(GraphQL.quoteString(input: clientMutationId))")
				} else {
					fields.append("clientMutationId:null")
				}
				case .undefined: break
			}

			return "{\(fields.joined(separator: ","))}"
		}
	}
}
