# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Packages
        # Create a package that defines a set of reusable, time-relative contract terms
        # that can be used across cohorts of customers. Packages provide an abstraction
        # layer on top of rate cards to provide an easy way to provision customers with
        # standard pricing.
        #
        # ### **Use this endpoint to:**
        #
        # - Model standard pay-as-you-go pricing packages that can be easily reused across
        #   customers
        # - Define standardized contract terms and discounting for sales-led motions
        # - Set aliases for the package to facilitate easy package transition. Aliases are
        #   human-readable names that you can use in the place of the id of the package
        #   when provisioning a customer’s contract. By using an alias, you can easily
        #   create a contract and provision a customer by choosing the “Starter Plan”
        #   package, without storing the package ID in your internal systems. This is
        #   helpful when launching terms for a package, as you can create a new package
        #   with the “Starter Plan” alias scheduled to be assigned without updating your
        #   provisioning code.
        #
        # ### Key input fields:
        #
        # - `starting_at_offset`: Starting date relative to contract start. Generates the
        #   `starting_at` date when a contract is provisioned using a package.
        # - `duration`: Duration starting from `starting_at_offset`. Generates the
        #   `ending_before` date when a contract is provisioned using a package.
        # - `date_offset`: Date relative to contract start. Used for point-in-time dates
        #   without a duration.
        # - `aliases`: Human-readable name to use when provisioning contracts with a
        #   package.
        #
        # ### Usage guidelines:
        #
        # - Use packages for standard self-serve use cases where customers have consistent
        #   terms. For customers with negotiated custom contract terms, use the
        #   `createContract` endpoint for maximum flexibility.
        # - Billing provider configuration can be set when creating a package by using
        #   `billing_provider` and `delivery_method`. To provision a customer successfully
        #   with a package, the customer must have one and only one billing provider
        #   configuration that matches the billing provider configuration set on the
        #   package.
        # - A package alias can only be used by one package at a time. If you create a new
        #   package with an alias that is already in use by another package, the original
        #   package’s alias schedule will be updated. The alias will reference the package
        #   to which it was most recently assigned.
        # - Terms can only be specified using times relative to the contract start date.
        #   Supported granularities are: `days`, `weeks`, `months`, `years`
        # - Packages cannot be edited once created. Use the rate card to easily add new
        #   rates across all of your customers or make direct edits to a contract after
        #   provisioning with a package. Edited contracts will still be associated with
        #   the package used during provisioning.
        sig do
          params(
            name: String,
            aliases:
              T::Array[MetronomeSDK::V1::PackageCreateParams::Alias::OrHash],
            billing_anchor_date:
              MetronomeSDK::V1::PackageCreateParams::BillingAnchorDate::OrSymbol,
            billing_provider:
              MetronomeSDK::V1::PackageCreateParams::BillingProvider::OrSymbol,
            commits:
              T::Array[MetronomeSDK::V1::PackageCreateParams::Commit::OrHash],
            contract_name: String,
            credits:
              T::Array[MetronomeSDK::V1::PackageCreateParams::Credit::OrHash],
            delivery_method:
              MetronomeSDK::V1::PackageCreateParams::DeliveryMethod::OrSymbol,
            duration: MetronomeSDK::V1::PackageCreateParams::Duration::OrHash,
            multiplier_override_prioritization:
              MetronomeSDK::V1::PackageCreateParams::MultiplierOverridePrioritization::OrSymbol,
            net_payment_terms_days: Float,
            overrides:
              T::Array[MetronomeSDK::V1::PackageCreateParams::Override::OrHash],
            prepaid_balance_threshold_configuration:
              MetronomeSDK::PrepaidBalanceThresholdConfiguration::OrHash,
            rate_card_alias: String,
            rate_card_id: String,
            recurring_commits:
              T::Array[
                MetronomeSDK::V1::PackageCreateParams::RecurringCommit::OrHash
              ],
            recurring_credits:
              T::Array[
                MetronomeSDK::V1::PackageCreateParams::RecurringCredit::OrHash
              ],
            scheduled_charges:
              T::Array[
                MetronomeSDK::V1::PackageCreateParams::ScheduledCharge::OrHash
              ],
            scheduled_charges_on_usage_invoices:
              MetronomeSDK::V1::PackageCreateParams::ScheduledChargesOnUsageInvoices::OrSymbol,
            spend_threshold_configuration:
              MetronomeSDK::SpendThresholdConfiguration::OrHash,
            subscriptions:
              T::Array[
                MetronomeSDK::V1::PackageCreateParams::Subscription::OrHash
              ],
            uniqueness_key: String,
            usage_statement_schedule:
              MetronomeSDK::V1::PackageCreateParams::UsageStatementSchedule::OrHash,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::PackageCreateResponse)
        end
        def create(
          name:,
          # Reference this alias when creating a contract. If the same alias is assigned to
          # multiple packages, it will reference the package to which it was most recently
          # assigned. It is not exposed to end customers.
          aliases: nil,
          billing_anchor_date: nil,
          billing_provider: nil,
          commits: nil,
          contract_name: nil,
          credits: nil,
          delivery_method: nil,
          duration: nil,
          # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
          # prices automatically. EXPLICIT prioritization requires specifying priorities for
          # each multiplier; the one with the lowest priority value will be prioritized
          # first. If tiered overrides are used, prioritization must be explicit.
          multiplier_override_prioritization: nil,
          net_payment_terms_days: nil,
          overrides: nil,
          prepaid_balance_threshold_configuration: nil,
          # Selects the rate card linked to the specified alias as of the contract's start
          # date.
          rate_card_alias: nil,
          rate_card_id: nil,
          recurring_commits: nil,
          recurring_credits: nil,
          scheduled_charges: nil,
          # Determines which scheduled and commit charges to consolidate onto the Contract's
          # usage invoice. The charge's `timestamp` must match the usage invoice's
          # `ending_before` date for consolidation to occur. This field cannot be modified
          # after a Contract has been created. If this field is omitted, charges will appear
          # on a separate invoice from usage charges.
          scheduled_charges_on_usage_invoices: nil,
          spend_threshold_configuration: nil,
          subscriptions: nil,
          # Prevents the creation of duplicates. If a request to create a record is made
          # with a previously used uniqueness key, a new record will not be created and the
          # request will fail with a 409 error.
          uniqueness_key: nil,
          usage_statement_schedule: nil,
          request_options: {}
        )
        end

        # Gets the details for a specific package, including name, aliases, duration, and
        # terms. Use this endpoint to understand a package’s alias schedule, or display a
        # specific package’s details to end customers.
        sig do
          params(
            package_id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::PackageRetrieveResponse)
        end
        def retrieve(package_id:, request_options: {})
        end

        # Lists all packages with details including name, aliases, duration, and terms. To
        # view contracts on a specific package, use the `listContractsOnPackage` endpoint.
        sig do
          params(
            limit: Integer,
            next_page: String,
            archive_filter:
              MetronomeSDK::V1::PackageListParams::ArchiveFilter::OrSymbol,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Internal::CursorPage[
              MetronomeSDK::Models::V1::PackageListResponse
            ]
          )
        end
        def list(
          # Query param: The maximum number of packages to return. Defaults to 10.
          limit: nil,
          # Query param: Cursor that indicates where the next page of results should start.
          next_page: nil,
          # Body param: Filter packages by archived status. Defaults to NOT_ARCHIVED.
          archive_filter: nil,
          request_options: {}
        )
        end

        # Archive a package. Archived packages cannot be used to create new contracts.
        # However, existing contracts associated with the package will continue to
        # function as normal. Once you archive a package, you can still retrieve it in the
        # UI and API, but you cannot unarchive it.
        sig do
          params(
            package_id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::PackageArchiveResponse)
        end
        def archive(
          # ID of the package to archive
          package_id:,
          request_options: {}
        )
        end

        # For a given package, returns all contract IDs and customer IDs associated with
        # the package over a specific time period.
        #
        # ### Use this endpoint to:
        #
        # - Understand which customers are provisioned on a package at any given time for
        #   internal cohort management
        # - Manage customer migrations to a new package. For example, to migrate all
        #   active customers to a new package, call this endpoint, end contracts, and
        #   provision customers on a new package.
        #
        # ### **Usage guidelines:**
        #
        # Use the **`starting_at`**, **`covering_date`**,
        # and **`include_archived`** parameters to filter the list of returned contracts.
        # For example, to list only currently active contracts,
        # pass **`covering_date`** equal to the current time.
        sig do
          params(
            package_id: String,
            limit: Integer,
            next_page: String,
            covering_date: Time,
            include_archived: T::Boolean,
            starting_at: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Internal::CursorPage[
              MetronomeSDK::Models::V1::PackageListContractsOnPackageResponse
            ]
          )
        end
        def list_contracts_on_package(
          # Body param
          package_id:,
          # Query param: Max number of results that should be returned
          limit: nil,
          # Query param: Cursor that indicates where the next page of results should start.
          next_page: nil,
          # Body param: Optional RFC 3339 timestamp. Only include contracts active on the
          # provided date. This cannot be provided if starting_at filter is provided.
          covering_date: nil,
          # Body param: Default false. Determines whether to include archived contracts in
          # the results
          include_archived: nil,
          # Body param: Optional RFC 3339 timestamp. Only include contracts that started on
          # or after this date. This cannot be provided if covering_date filter is provided.
          starting_at: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
