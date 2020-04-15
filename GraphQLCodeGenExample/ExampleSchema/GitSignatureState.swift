// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	public enum GitSignatureState: String {
		case badCert = "BAD_CERT"

		case badEmail = "BAD_EMAIL"

		case expiredKey = "EXPIRED_KEY"

		case gpgverifyError = "GPGVERIFY_ERROR"

		case gpgverifyUnavailable = "GPGVERIFY_UNAVAILABLE"

		case invalid = "INVALID"

		case malformedSig = "MALFORMED_SIG"

		case notSigningKey = "NOT_SIGNING_KEY"

		case noUser = "NO_USER"

		case ocspError = "OCSP_ERROR"

		case ocspPending = "OCSP_PENDING"

		case ocspRevoked = "OCSP_REVOKED"

		case unknownKey = "UNKNOWN_KEY"

		case unknownSigType = "UNKNOWN_SIG_TYPE"

		case unsigned = "UNSIGNED"

		case unverifiedEmail = "UNVERIFIED_EMAIL"

		case valid = "VALID"

		case unknownValue = ""
	}
}
