// Generated from graphql_swift_gen gem
import Foundation

extension ExampleSchema {
	open class MarketplaceListingQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = MarketplaceListing

		@discardableResult
		open func app(aliasSuffix: String? = nil, _ subfields: (AppQuery) -> Void) -> MarketplaceListingQuery {
			let subquery = AppQuery()
			subfields(subquery)

			addField(field: "app", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func companyUrl(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "companyUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func configurationResourcePath(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "configurationResourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func configurationUrl(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "configurationUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func documentationUrl(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "documentationUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func extendedDescription(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "extendedDescription", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func extendedDescriptionHtml(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "extendedDescriptionHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func fullDescription(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "fullDescription", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func fullDescriptionHtml(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "fullDescriptionHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"`hasApprovalBeenRequested` will be removed. Use `isVerificationPendingFromDraft` instead. Removal on 2019-10-01 UTC.")
		@discardableResult
		open func hasApprovalBeenRequested(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "hasApprovalBeenRequested", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func hasPublishedFreeTrialPlans(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "hasPublishedFreeTrialPlans", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func hasTermsOfService(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "hasTermsOfService", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func howItWorks(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "howItWorks", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func howItWorksHtml(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "howItWorksHTML", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func id(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "id", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func installationUrl(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "installationUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func installedForViewer(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "installedForViewer", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"`isApproved` will be removed. Use `isPublic` instead. Removal on 2019-10-01 UTC.")
		@discardableResult
		open func isApproved(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "isApproved", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isArchived(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "isArchived", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"`isDelisted` will be removed. Use `isArchived` instead. Removal on 2019-10-01 UTC.")
		@discardableResult
		open func isDelisted(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "isDelisted", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isDraft(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "isDraft", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isPaid(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "isPaid", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isPublic(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "isPublic", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isRejected(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "isRejected", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isUnverified(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "isUnverified", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isUnverifiedPending(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "isUnverifiedPending", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isVerificationPendingFromDraft(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "isVerificationPendingFromDraft", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isVerificationPendingFromUnverified(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "isVerificationPendingFromUnverified", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func isVerified(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "isVerified", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func logoBackgroundColor(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "logoBackgroundColor", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func logoUrl(aliasSuffix: String? = nil, size: Int32? = nil) -> MarketplaceListingQuery {
			var args: [String] = []

			if let size = size {
				args.append("size:\(size)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			addField(field: "logoUrl", aliasSuffix: aliasSuffix, args: argsString)
			return self
		}

		@discardableResult
		open func name(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "name", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func normalizedShortDescription(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "normalizedShortDescription", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func pricingUrl(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "pricingUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func primaryCategory(aliasSuffix: String? = nil, _ subfields: (MarketplaceCategoryQuery) -> Void) -> MarketplaceListingQuery {
			let subquery = MarketplaceCategoryQuery()
			subfields(subquery)

			addField(field: "primaryCategory", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func privacyPolicyUrl(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "privacyPolicyUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func resourcePath(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "resourcePath", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func screenshotUrls(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "screenshotUrls", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func secondaryCategory(aliasSuffix: String? = nil, _ subfields: (MarketplaceCategoryQuery) -> Void) -> MarketplaceListingQuery {
			let subquery = MarketplaceCategoryQuery()
			subfields(subquery)

			addField(field: "secondaryCategory", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func shortDescription(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "shortDescription", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func slug(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "slug", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func statusUrl(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "statusUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func supportEmail(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "supportEmail", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func supportUrl(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "supportUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func termsOfServiceUrl(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "termsOfServiceUrl", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func url(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "url", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanAddPlans(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "viewerCanAddPlans", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanApprove(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "viewerCanApprove", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanDelist(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "viewerCanDelist", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanEdit(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "viewerCanEdit", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanEditCategories(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "viewerCanEditCategories", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanEditPlans(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "viewerCanEditPlans", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanRedraft(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "viewerCanRedraft", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanReject(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "viewerCanReject", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerCanRequestApproval(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "viewerCanRequestApproval", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerHasPurchased(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "viewerHasPurchased", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerHasPurchasedForAllOrganizations(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "viewerHasPurchasedForAllOrganizations", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func viewerIsListingAdmin(aliasSuffix: String? = nil) -> MarketplaceListingQuery {
			addField(field: "viewerIsListingAdmin", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class MarketplaceListing: GraphQL.AbstractResponse, GraphQLObject, Node, SearchResultItem {
		public typealias Query = MarketplaceListingQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "app":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return try App(fields: value)

				case "companyUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "configurationResourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "configurationUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "documentationUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "extendedDescription":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "extendedDescriptionHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "fullDescription":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "fullDescriptionHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "hasApprovalBeenRequested":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "hasPublishedFreeTrialPlans":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "hasTermsOfService":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "howItWorks":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "howItWorksHTML":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "id":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "installationUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "installedForViewer":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isApproved":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isArchived":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isDelisted":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isDraft":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isPaid":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isPublic":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isRejected":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isUnverified":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isUnverifiedPending":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isVerificationPendingFromDraft":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isVerificationPendingFromUnverified":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "isVerified":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "logoBackgroundColor":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "logoUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "name":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "normalizedShortDescription":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "pricingUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "primaryCategory":
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return try MarketplaceCategory(fields: value)

				case "privacyPolicyUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "resourcePath":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "screenshotUrls":
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value } as [Any?]

				case "secondaryCategory":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return try MarketplaceCategory(fields: value)

				case "shortDescription":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "slug":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "statusUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "supportEmail":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "supportUrl":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "termsOfServiceUrl":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "url":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanAddPlans":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanApprove":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanDelist":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanEdit":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanEditCategories":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanEditPlans":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanRedraft":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanReject":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerCanRequestApproval":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerHasPurchased":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerHasPurchasedForAllOrganizations":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				case "viewerIsListingAdmin":
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: MarketplaceListing.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "MarketplaceListing" }

		open var app: ExampleSchema.App? {
			return internalGetApp()
		}

		func internalGetApp(aliasSuffix: String? = nil) -> ExampleSchema.App? {
			return field(field: "app", aliasSuffix: aliasSuffix) as! ExampleSchema.App?
		}

		open var companyUrl: String? {
			return internalGetCompanyUrl()
		}

		func internalGetCompanyUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "companyUrl", aliasSuffix: aliasSuffix) as! String?
		}

		open var configurationResourcePath: String {
			return internalGetConfigurationResourcePath()
		}

		func internalGetConfigurationResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "configurationResourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var configurationUrl: String {
			return internalGetConfigurationUrl()
		}

		func internalGetConfigurationUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "configurationUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var documentationUrl: String? {
			return internalGetDocumentationUrl()
		}

		func internalGetDocumentationUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "documentationUrl", aliasSuffix: aliasSuffix) as! String?
		}

		open var extendedDescription: String? {
			return internalGetExtendedDescription()
		}

		func internalGetExtendedDescription(aliasSuffix: String? = nil) -> String? {
			return field(field: "extendedDescription", aliasSuffix: aliasSuffix) as! String?
		}

		open var extendedDescriptionHtml: String {
			return internalGetExtendedDescriptionHtml()
		}

		func internalGetExtendedDescriptionHtml(aliasSuffix: String? = nil) -> String {
			return field(field: "extendedDescriptionHTML", aliasSuffix: aliasSuffix) as! String
		}

		open var fullDescription: String {
			return internalGetFullDescription()
		}

		func internalGetFullDescription(aliasSuffix: String? = nil) -> String {
			return field(field: "fullDescription", aliasSuffix: aliasSuffix) as! String
		}

		open var fullDescriptionHtml: String {
			return internalGetFullDescriptionHtml()
		}

		func internalGetFullDescriptionHtml(aliasSuffix: String? = nil) -> String {
			return field(field: "fullDescriptionHTML", aliasSuffix: aliasSuffix) as! String
		}

		@available(*, deprecated, message:"`hasApprovalBeenRequested` will be removed. Use `isVerificationPendingFromDraft` instead. Removal on 2019-10-01 UTC.")
		open var hasApprovalBeenRequested: Bool {
			return internalGetHasApprovalBeenRequested()
		}

		func internalGetHasApprovalBeenRequested(aliasSuffix: String? = nil) -> Bool {
			return field(field: "hasApprovalBeenRequested", aliasSuffix: aliasSuffix) as! Bool
		}

		open var hasPublishedFreeTrialPlans: Bool {
			return internalGetHasPublishedFreeTrialPlans()
		}

		func internalGetHasPublishedFreeTrialPlans(aliasSuffix: String? = nil) -> Bool {
			return field(field: "hasPublishedFreeTrialPlans", aliasSuffix: aliasSuffix) as! Bool
		}

		open var hasTermsOfService: Bool {
			return internalGetHasTermsOfService()
		}

		func internalGetHasTermsOfService(aliasSuffix: String? = nil) -> Bool {
			return field(field: "hasTermsOfService", aliasSuffix: aliasSuffix) as! Bool
		}

		open var howItWorks: String? {
			return internalGetHowItWorks()
		}

		func internalGetHowItWorks(aliasSuffix: String? = nil) -> String? {
			return field(field: "howItWorks", aliasSuffix: aliasSuffix) as! String?
		}

		open var howItWorksHtml: String {
			return internalGetHowItWorksHtml()
		}

		func internalGetHowItWorksHtml(aliasSuffix: String? = nil) -> String {
			return field(field: "howItWorksHTML", aliasSuffix: aliasSuffix) as! String
		}

		open var id: GraphQL.ID {
			return internalGetId()
		}

		func internalGetId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "id", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var installationUrl: String? {
			return internalGetInstallationUrl()
		}

		func internalGetInstallationUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "installationUrl", aliasSuffix: aliasSuffix) as! String?
		}

		open var installedForViewer: Bool {
			return internalGetInstalledForViewer()
		}

		func internalGetInstalledForViewer(aliasSuffix: String? = nil) -> Bool {
			return field(field: "installedForViewer", aliasSuffix: aliasSuffix) as! Bool
		}

		@available(*, deprecated, message:"`isApproved` will be removed. Use `isPublic` instead. Removal on 2019-10-01 UTC.")
		open var isApproved: Bool {
			return internalGetIsApproved()
		}

		func internalGetIsApproved(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isApproved", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isArchived: Bool {
			return internalGetIsArchived()
		}

		func internalGetIsArchived(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isArchived", aliasSuffix: aliasSuffix) as! Bool
		}

		@available(*, deprecated, message:"`isDelisted` will be removed. Use `isArchived` instead. Removal on 2019-10-01 UTC.")
		open var isDelisted: Bool {
			return internalGetIsDelisted()
		}

		func internalGetIsDelisted(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isDelisted", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isDraft: Bool {
			return internalGetIsDraft()
		}

		func internalGetIsDraft(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isDraft", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isPaid: Bool {
			return internalGetIsPaid()
		}

		func internalGetIsPaid(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isPaid", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isPublic: Bool {
			return internalGetIsPublic()
		}

		func internalGetIsPublic(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isPublic", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isRejected: Bool {
			return internalGetIsRejected()
		}

		func internalGetIsRejected(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isRejected", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isUnverified: Bool {
			return internalGetIsUnverified()
		}

		func internalGetIsUnverified(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isUnverified", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isUnverifiedPending: Bool {
			return internalGetIsUnverifiedPending()
		}

		func internalGetIsUnverifiedPending(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isUnverifiedPending", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isVerificationPendingFromDraft: Bool {
			return internalGetIsVerificationPendingFromDraft()
		}

		func internalGetIsVerificationPendingFromDraft(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isVerificationPendingFromDraft", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isVerificationPendingFromUnverified: Bool {
			return internalGetIsVerificationPendingFromUnverified()
		}

		func internalGetIsVerificationPendingFromUnverified(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isVerificationPendingFromUnverified", aliasSuffix: aliasSuffix) as! Bool
		}

		open var isVerified: Bool {
			return internalGetIsVerified()
		}

		func internalGetIsVerified(aliasSuffix: String? = nil) -> Bool {
			return field(field: "isVerified", aliasSuffix: aliasSuffix) as! Bool
		}

		open var logoBackgroundColor: String {
			return internalGetLogoBackgroundColor()
		}

		func internalGetLogoBackgroundColor(aliasSuffix: String? = nil) -> String {
			return field(field: "logoBackgroundColor", aliasSuffix: aliasSuffix) as! String
		}

		open var logoUrl: String? {
			return internalGetLogoUrl()
		}

		open func aliasedLogoUrl(aliasSuffix: String) -> String? {
			return internalGetLogoUrl(aliasSuffix: aliasSuffix)
		}

		func internalGetLogoUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "logoUrl", aliasSuffix: aliasSuffix) as! String?
		}

		open var name: String {
			return internalGetName()
		}

		func internalGetName(aliasSuffix: String? = nil) -> String {
			return field(field: "name", aliasSuffix: aliasSuffix) as! String
		}

		open var normalizedShortDescription: String {
			return internalGetNormalizedShortDescription()
		}

		func internalGetNormalizedShortDescription(aliasSuffix: String? = nil) -> String {
			return field(field: "normalizedShortDescription", aliasSuffix: aliasSuffix) as! String
		}

		open var pricingUrl: String? {
			return internalGetPricingUrl()
		}

		func internalGetPricingUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "pricingUrl", aliasSuffix: aliasSuffix) as! String?
		}

		open var primaryCategory: ExampleSchema.MarketplaceCategory {
			return internalGetPrimaryCategory()
		}

		func internalGetPrimaryCategory(aliasSuffix: String? = nil) -> ExampleSchema.MarketplaceCategory {
			return field(field: "primaryCategory", aliasSuffix: aliasSuffix) as! ExampleSchema.MarketplaceCategory
		}

		open var privacyPolicyUrl: String {
			return internalGetPrivacyPolicyUrl()
		}

		func internalGetPrivacyPolicyUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "privacyPolicyUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var resourcePath: String {
			return internalGetResourcePath()
		}

		func internalGetResourcePath(aliasSuffix: String? = nil) -> String {
			return field(field: "resourcePath", aliasSuffix: aliasSuffix) as! String
		}

		open var screenshotUrls: [String?] {
			return internalGetScreenshotUrls()
		}

		func internalGetScreenshotUrls(aliasSuffix: String? = nil) -> [String?] {
			return field(field: "screenshotUrls", aliasSuffix: aliasSuffix) as! [String?]
		}

		open var secondaryCategory: ExampleSchema.MarketplaceCategory? {
			return internalGetSecondaryCategory()
		}

		func internalGetSecondaryCategory(aliasSuffix: String? = nil) -> ExampleSchema.MarketplaceCategory? {
			return field(field: "secondaryCategory", aliasSuffix: aliasSuffix) as! ExampleSchema.MarketplaceCategory?
		}

		open var shortDescription: String {
			return internalGetShortDescription()
		}

		func internalGetShortDescription(aliasSuffix: String? = nil) -> String {
			return field(field: "shortDescription", aliasSuffix: aliasSuffix) as! String
		}

		open var slug: String {
			return internalGetSlug()
		}

		func internalGetSlug(aliasSuffix: String? = nil) -> String {
			return field(field: "slug", aliasSuffix: aliasSuffix) as! String
		}

		open var statusUrl: String? {
			return internalGetStatusUrl()
		}

		func internalGetStatusUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "statusUrl", aliasSuffix: aliasSuffix) as! String?
		}

		open var supportEmail: String? {
			return internalGetSupportEmail()
		}

		func internalGetSupportEmail(aliasSuffix: String? = nil) -> String? {
			return field(field: "supportEmail", aliasSuffix: aliasSuffix) as! String?
		}

		open var supportUrl: String {
			return internalGetSupportUrl()
		}

		func internalGetSupportUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "supportUrl", aliasSuffix: aliasSuffix) as! String
		}

		open var termsOfServiceUrl: String? {
			return internalGetTermsOfServiceUrl()
		}

		func internalGetTermsOfServiceUrl(aliasSuffix: String? = nil) -> String? {
			return field(field: "termsOfServiceUrl", aliasSuffix: aliasSuffix) as! String?
		}

		open var url: String {
			return internalGetUrl()
		}

		func internalGetUrl(aliasSuffix: String? = nil) -> String {
			return field(field: "url", aliasSuffix: aliasSuffix) as! String
		}

		open var viewerCanAddPlans: Bool {
			return internalGetViewerCanAddPlans()
		}

		func internalGetViewerCanAddPlans(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanAddPlans", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCanApprove: Bool {
			return internalGetViewerCanApprove()
		}

		func internalGetViewerCanApprove(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanApprove", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCanDelist: Bool {
			return internalGetViewerCanDelist()
		}

		func internalGetViewerCanDelist(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanDelist", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCanEdit: Bool {
			return internalGetViewerCanEdit()
		}

		func internalGetViewerCanEdit(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanEdit", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCanEditCategories: Bool {
			return internalGetViewerCanEditCategories()
		}

		func internalGetViewerCanEditCategories(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanEditCategories", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCanEditPlans: Bool {
			return internalGetViewerCanEditPlans()
		}

		func internalGetViewerCanEditPlans(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanEditPlans", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCanRedraft: Bool {
			return internalGetViewerCanRedraft()
		}

		func internalGetViewerCanRedraft(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanRedraft", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCanReject: Bool {
			return internalGetViewerCanReject()
		}

		func internalGetViewerCanReject(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanReject", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerCanRequestApproval: Bool {
			return internalGetViewerCanRequestApproval()
		}

		func internalGetViewerCanRequestApproval(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerCanRequestApproval", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerHasPurchased: Bool {
			return internalGetViewerHasPurchased()
		}

		func internalGetViewerHasPurchased(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerHasPurchased", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerHasPurchasedForAllOrganizations: Bool {
			return internalGetViewerHasPurchasedForAllOrganizations()
		}

		func internalGetViewerHasPurchasedForAllOrganizations(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerHasPurchasedForAllOrganizations", aliasSuffix: aliasSuffix) as! Bool
		}

		open var viewerIsListingAdmin: Bool {
			return internalGetViewerIsListingAdmin()
		}

		func internalGetViewerIsListingAdmin(aliasSuffix: String? = nil) -> Bool {
			return field(field: "viewerIsListingAdmin", aliasSuffix: aliasSuffix) as! Bool
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "app":

				return .object

				case "companyUrl":

				return .scalar

				case "configurationResourcePath":

				return .scalar

				case "configurationUrl":

				return .scalar

				case "documentationUrl":

				return .scalar

				case "extendedDescription":

				return .scalar

				case "extendedDescriptionHTML":

				return .scalar

				case "fullDescription":

				return .scalar

				case "fullDescriptionHTML":

				return .scalar

				case "hasApprovalBeenRequested":

				return .scalar

				case "hasPublishedFreeTrialPlans":

				return .scalar

				case "hasTermsOfService":

				return .scalar

				case "howItWorks":

				return .scalar

				case "howItWorksHTML":

				return .scalar

				case "id":

				return .scalar

				case "installationUrl":

				return .scalar

				case "installedForViewer":

				return .scalar

				case "isApproved":

				return .scalar

				case "isArchived":

				return .scalar

				case "isDelisted":

				return .scalar

				case "isDraft":

				return .scalar

				case "isPaid":

				return .scalar

				case "isPublic":

				return .scalar

				case "isRejected":

				return .scalar

				case "isUnverified":

				return .scalar

				case "isUnverifiedPending":

				return .scalar

				case "isVerificationPendingFromDraft":

				return .scalar

				case "isVerificationPendingFromUnverified":

				return .scalar

				case "isVerified":

				return .scalar

				case "logoBackgroundColor":

				return .scalar

				case "logoUrl":

				return .scalar

				case "name":

				return .scalar

				case "normalizedShortDescription":

				return .scalar

				case "pricingUrl":

				return .scalar

				case "primaryCategory":

				return .object

				case "privacyPolicyUrl":

				return .scalar

				case "resourcePath":

				return .scalar

				case "screenshotUrls":

				return .scalarList

				case "secondaryCategory":

				return .object

				case "shortDescription":

				return .scalar

				case "slug":

				return .scalar

				case "statusUrl":

				return .scalar

				case "supportEmail":

				return .scalar

				case "supportUrl":

				return .scalar

				case "termsOfServiceUrl":

				return .scalar

				case "url":

				return .scalar

				case "viewerCanAddPlans":

				return .scalar

				case "viewerCanApprove":

				return .scalar

				case "viewerCanDelist":

				return .scalar

				case "viewerCanEdit":

				return .scalar

				case "viewerCanEditCategories":

				return .scalar

				case "viewerCanEditPlans":

				return .scalar

				case "viewerCanRedraft":

				return .scalar

				case "viewerCanReject":

				return .scalar

				case "viewerCanRequestApproval":

				return .scalar

				case "viewerHasPurchased":

				return .scalar

				case "viewerHasPurchasedForAllOrganizations":

				return .scalar

				case "viewerIsListingAdmin":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "app":
				return internalGetApp()

				case "primaryCategory":
				return internalGetPrimaryCategory()

				case "secondaryCategory":
				return internalGetSecondaryCategory()

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
					case "app":
					if let value = internalGetApp() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "primaryCategory":
					response.append(internalGetPrimaryCategory())
					response.append(contentsOf: internalGetPrimaryCategory().childResponseObjectMap())

					case "secondaryCategory":
					if let value = internalGetSecondaryCategory() {
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
