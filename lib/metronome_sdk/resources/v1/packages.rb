# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Packages
        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::PackageCreateParams} for more details.
        #
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
        #
        # @overload create(name:, aliases: nil, billing_anchor_date: nil, billing_provider: nil, commits: nil, contract_name: nil, credits: nil, delivery_method: nil, duration: nil, multiplier_override_prioritization: nil, net_payment_terms_days: nil, overrides: nil, prepaid_balance_threshold_configuration: nil, rate_card_alias: nil, rate_card_id: nil, recurring_commits: nil, recurring_credits: nil, scheduled_charges: nil, scheduled_charges_on_usage_invoices: nil, spend_threshold_configuration: nil, subscriptions: nil, uniqueness_key: nil, usage_statement_schedule: nil, request_options: {})
        #
        # @param name [String]
        #
        # @param aliases [Array<MetronomeSDK::Models::V1::PackageCreateParams::Alias>] Reference this alias when creating a contract. If the same alias is assigned to
        #
        # @param billing_anchor_date [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::BillingAnchorDate]
        #
        # @param billing_provider [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::BillingProvider]
        #
        # @param commits [Array<MetronomeSDK::Models::V1::PackageCreateParams::Commit>]
        #
        # @param contract_name [String]
        #
        # @param credits [Array<MetronomeSDK::Models::V1::PackageCreateParams::Credit>]
        #
        # @param delivery_method [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::DeliveryMethod]
        #
        # @param duration [MetronomeSDK::Models::V1::PackageCreateParams::Duration]
        #
        # @param multiplier_override_prioritization [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::MultiplierOverridePrioritization] Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list price
        #
        # @param net_payment_terms_days [Float]
        #
        # @param overrides [Array<MetronomeSDK::Models::V1::PackageCreateParams::Override>]
        #
        # @param prepaid_balance_threshold_configuration [MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration]
        #
        # @param rate_card_alias [String] Selects the rate card linked to the specified alias as of the contract's start d
        #
        # @param rate_card_id [String]
        #
        # @param recurring_commits [Array<MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit>]
        #
        # @param recurring_credits [Array<MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit>]
        #
        # @param scheduled_charges [Array<MetronomeSDK::Models::V1::PackageCreateParams::ScheduledCharge>]
        #
        # @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::ScheduledChargesOnUsageInvoices] Determines which scheduled and commit charges to consolidate onto the Contract's
        #
        # @param spend_threshold_configuration [MetronomeSDK::Models::SpendThresholdConfiguration]
        #
        # @param subscriptions [Array<MetronomeSDK::Models::V1::PackageCreateParams::Subscription>]
        #
        # @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made wit
        #
        # @param usage_statement_schedule [MetronomeSDK::Models::V1::PackageCreateParams::UsageStatementSchedule]
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::PackageCreateResponse]
        #
        # @see MetronomeSDK::Models::V1::PackageCreateParams
        def create(params)
          parsed, options = MetronomeSDK::V1::PackageCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/packages/create",
            body: parsed,
            model: MetronomeSDK::Models::V1::PackageCreateResponse,
            options: options
          )
        end

        # Gets the details for a specific package, including name, aliases, duration, and
        # terms. Use this endpoint to understand a package’s alias schedule, or display a
        # specific package’s details to end customers.
        #
        # @overload retrieve(package_id:, request_options: {})
        #
        # @param package_id [String]
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::PackageRetrieveResponse]
        #
        # @see MetronomeSDK::Models::V1::PackageRetrieveParams
        def retrieve(params)
          parsed, options = MetronomeSDK::V1::PackageRetrieveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/packages/get",
            body: parsed,
            model: MetronomeSDK::Models::V1::PackageRetrieveResponse,
            options: options
          )
        end

        # Lists all packages with details including name, aliases, duration, and terms. To
        # view contracts on a specific package, use the `listContractsOnPackage` endpoint.
        #
        # @overload list(limit: nil, next_page: nil, archive_filter: nil, request_options: {})
        #
        # @param limit [Integer] Query param: The maximum number of packages to return. Defaults to 10.
        #
        # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
        #
        # @param archive_filter [Symbol, MetronomeSDK::Models::V1::PackageListParams::ArchiveFilter] Body param: Filter packages by archived status. Defaults to NOT_ARCHIVED.
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::PackageListResponse>]
        #
        # @see MetronomeSDK::Models::V1::PackageListParams
        def list(params = {})
          parsed, options = MetronomeSDK::V1::PackageListParams.dump_request(params)
          query_params = [:limit, :next_page]
          @client.request(
            method: :post,
            path: "v1/packages/list",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            page: MetronomeSDK::Internal::CursorPage,
            model: MetronomeSDK::Models::V1::PackageListResponse,
            options: options
          )
        end

        # Archive a package. Archived packages cannot be used to create new contracts.
        # However, existing contracts associated with the package will continue to
        # function as normal. Once you archive a package, you can still retrieve it in the
        # UI and API, but you cannot unarchive it.
        #
        # @overload archive(package_id:, request_options: {})
        #
        # @param package_id [String] ID of the package to archive
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::PackageArchiveResponse]
        #
        # @see MetronomeSDK::Models::V1::PackageArchiveParams
        def archive(params)
          parsed, options = MetronomeSDK::V1::PackageArchiveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/packages/archive",
            body: parsed,
            model: MetronomeSDK::Models::V1::PackageArchiveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::PackageListContractsOnPackageParams} for more
        # details.
        #
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
        #
        # @overload list_contracts_on_package(package_id:, limit: nil, next_page: nil, covering_date: nil, include_archived: nil, starting_at: nil, request_options: {})
        #
        # @param package_id [String] Body param
        #
        # @param limit [Integer] Query param: Max number of results that should be returned
        #
        # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
        #
        # @param covering_date [Time] Body param: Optional RFC 3339 timestamp. Only include contracts active on the pr
        #
        # @param include_archived [Boolean] Body param: Default false. Determines whether to include archived contracts in t
        #
        # @param starting_at [Time] Body param: Optional RFC 3339 timestamp. Only include contracts that started on
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::PackageListContractsOnPackageResponse>]
        #
        # @see MetronomeSDK::Models::V1::PackageListContractsOnPackageParams
        def list_contracts_on_package(params)
          parsed, options = MetronomeSDK::V1::PackageListContractsOnPackageParams.dump_request(params)
          query_params = [:limit, :next_page]
          @client.request(
            method: :post,
            path: "v1/packages/listContractsOnPackage",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            page: MetronomeSDK::Internal::CursorPage,
            model: MetronomeSDK::Models::V1::PackageListContractsOnPackageResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [MetronomeSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
