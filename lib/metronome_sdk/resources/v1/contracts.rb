# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Contracts
        # @return [MetronomeSDK::Resources::V1::Contracts::Products]
        attr_reader :products

        # @return [MetronomeSDK::Resources::V1::Contracts::RateCards]
        attr_reader :rate_cards

        # @return [MetronomeSDK::Resources::V1::Contracts::NamedSchedules]
        attr_reader :named_schedules

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::ContractCreateParams} for more details.
        #
        # Contracts define a customer's products, pricing, discounts, access duration, and
        # billing configuration. Contracts serve as the central billing agreement for both
        # PLG and Enterprise customers, you can automatically customers access to your
        # products and services directly from your product or CRM.
        #
        # ### Use this endpoint to:
        #
        # - PLG onboarding: Automatically provision new self-serve customers with
        #   contracts when they sign up.
        # - Enterprise sales: Push negotiated contracts from Salesforce with custom
        #   pricing and commitments
        # - Promotional pricing: Implement time-limited discounts and free trials through
        #   overrides
        #
        # ### Key components:
        #
        # #### Contract Term and Billing Schedule
        #
        # - Set contract duration using `starting_at` and `ending_before` fields. PLG
        #   contracts typically use perpetual agreements (no end date), while Enterprise
        #   contracts have fixed end dates which can be edited over time in the case of
        #   co-term upsells.
        #
        # #### Rate Card
        #
        # If you are offering usage based pricing, you can set a rate card for the
        # contract to reference through `rate_card_id` or `rate_card_alias`. The rate card
        # is a store of all of your usage based products and their centralized pricing.
        # Any new products or price changes on the rate card can be set to automatically
        # propagate to all associated contracts - this ensures consistent pricing and
        # product launches flow to contracts without manual updates and migrations. The
        # `usage_statement_schedule` determines the cadence on which Metronome will
        # finalize a usage invoice for the customer. This defaults to monthly on the 1st,
        # with options for custom dates, quarterly, or annual cadences. Note: Most usage
        # based billing companies align usage statements to be evaluated aligned to the
        # first of the month. Read more about
        # [Rate Cards](https://docs.metronome.com/pricing-packaging/create-manage-rate-cards/).
        #
        # #### Overrides and discounts
        #
        # Customize pricing on the contract through time-bounded overrides that can target
        # specific products, product families, or complex usage scenarios. Overrides
        # enable two key capabilities:
        #
        # - Discounts: Apply percentage discounts, fixed rate reductions, or
        #   quantity-based pricing tiers
        # - Entitlements: Provide special pricing or access to specific products for
        #   negotiated deals
        #
        # Read more about
        # [Contract Overrides](https://docs.metronome.com/manage-product-access/add-contract-override/).
        #
        # #### Commits and Credits
        #
        # Using commits, configure prepaid or postpaid spending commitments where
        # customers promise to spend a certain amount over the contract period paid in
        # advance or in arrears. Use credits to provide free spending allowances. Under
        # the hood these are the same mechanisms, however, credits are typically offered
        # for free (SLA or promotional) or as a part of an allotment associated with a
        # Subscription.
        #
        # In Metronome, you can set commits and credits to only be applicable for a subset
        # of usage. Use `applicable_product_ids` or `applicable_product_tags` to create
        # product or product-family specific commits or credits, or you can build complex
        # boolean logic specifiers to target usage based on pricing and presentation group
        # values using `override_specifiers`.
        #
        # These objects can also also be configured to have a recurrence schedule to
        # easily model customer packaging which includes recurring monthly or quarterly
        # allotments.
        #
        # Commits support rollover settings (`rollover_fraction`) to transfer unused
        # balances between contract periods, either entirely or as a percentage.
        #
        # Read more about
        # [Credits and Commits](https://docs.metronome.com/pricing-packaging/apply-credits-commits/).
        #
        # #### Subscriptions
        #
        # You can add a fixed recurring charge to a contract, like monthly licenses or
        # seat-based fees, using the subscription charge. Subscription charges are defined
        # on your rate card and you can select which subscription is applicable to add to
        # each contract. When you add a subscription to a contract you need to:
        #
        # - Define whether the subscription is paid for in-advance or in-arrears
        #   (`collection_schedule`)
        # - Define the proration behavior (`proration`)
        # - Specify an initial quantity (`initial_quantity`)
        # - Define which subscription rate on the rate card should be used
        #   (`subscription_rate`)
        #
        # Read more about
        # [Subscriptions](https://docs.metronome.com/manage-product-access/create-subscription/).
        #
        # #### Scheduled Charges
        #
        # Set up one-time, recurring, or entirely custom charges that occur on specific
        # dates, separate from usage-based billing or commitments. These can be used to
        # model non-recurring platform charges or professional services.
        #
        # #### Threshold Billing
        #
        # Metronome allows you to configure automatic billing triggers when customers
        # reach spending thresholds to prevent fraud and manage risk. You can use
        # `spend_threshold_configuration` to trigger an invoice to cover current charges
        # whenever the threshold is reached or you can ensure the customer maintains a
        # minimum prepaid balance using the `prepaid_balance_configuration`.
        #
        # Read more about
        # [Spend Threshold](https://docs.metronome.com/manage-product-access/spend-thresholds/)
        # and
        # [Prepaid Balance Thresholds](https://docs.metronome.com/manage-product-access/prepaid-balance-thresholds/).
        #
        # ### Usage guidelines:
        #
        # - You can always
        #   [Edit Contracts](https://docs.metronome.com/manage-product-access/edit-contract/)
        #   after it has been created, using the `editContract` endpoint. Metronome keeps
        #   track of all edits, both in the audit log and over the `getEditHistory`
        #   endpoint.
        # - Customers in Metronome can have multiple concurrent contracts at one time. Use
        #   `usage_filters` to route the correct usage to each contract.
        #   [Read more about usage filters](https://docs.metronome.com/manage-product-access/provision-customer/#create-a-usage-filter).
        #
        # @overload create(customer_id:, starting_at:, billing_provider_configuration: nil, commits: nil, credits: nil, custom_fields: nil, discounts: nil, ending_before: nil, hierarchy_configuration: nil, multiplier_override_prioritization: nil, name: nil, net_payment_terms_days: nil, netsuite_sales_order_id: nil, overrides: nil, prepaid_balance_threshold_configuration: nil, priority: nil, professional_services: nil, rate_card_alias: nil, rate_card_id: nil, recurring_commits: nil, recurring_credits: nil, reseller_royalties: nil, salesforce_opportunity_id: nil, scheduled_charges: nil, scheduled_charges_on_usage_invoices: nil, spend_threshold_configuration: nil, subscriptions: nil, total_contract_value: nil, transition: nil, uniqueness_key: nil, usage_filter: nil, usage_statement_schedule: nil, request_options: {})
        #
        # @param customer_id [String]
        #
        # @param starting_at [Time] inclusive contract start time
        #
        # @param billing_provider_configuration [MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration] The billing provider configuration associated with a contract. Provide either an
        #
        # @param commits [Array<MetronomeSDK::Models::V1::ContractCreateParams::Commit>]
        #
        # @param credits [Array<MetronomeSDK::Models::V1::ContractCreateParams::Credit>]
        #
        # @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        #
        # @param discounts [Array<MetronomeSDK::Models::V1::ContractCreateParams::Discount>] This field's availability is dependent on your client's configuration.
        #
        # @param ending_before [Time] exclusive contract end time
        #
        # @param hierarchy_configuration [MetronomeSDK::Models::V1::ContractCreateParams::HierarchyConfiguration]
        #
        # @param multiplier_override_prioritization [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::MultiplierOverridePrioritization] Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list price
        #
        # @param name [String]
        #
        # @param net_payment_terms_days [Float]
        #
        # @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
        #
        # @param overrides [Array<MetronomeSDK::Models::V1::ContractCreateParams::Override>]
        #
        # @param prepaid_balance_threshold_configuration [MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration]
        #
        # @param priority [Float] Priority of the contract.
        #
        # @param professional_services [Array<MetronomeSDK::Models::V1::ContractCreateParams::ProfessionalService>] This field's availability is dependent on your client's configuration.
        #
        # @param rate_card_alias [String] Selects the rate card linked to the specified alias as of the contract's start d
        #
        # @param rate_card_id [String]
        #
        # @param recurring_commits [Array<MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit>]
        #
        # @param recurring_credits [Array<MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit>]
        #
        # @param reseller_royalties [Array<MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty>] This field's availability is dependent on your client's configuration.
        #
        # @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
        #
        # @param scheduled_charges [Array<MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge>]
        #
        # @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::ScheduledChargesOnUsageInvoices] Determines which scheduled and commit charges to consolidate onto the Contract's
        #
        # @param spend_threshold_configuration [MetronomeSDK::Models::SpendThresholdConfiguration]
        #
        # @param subscriptions [Array<MetronomeSDK::Models::V1::ContractCreateParams::Subscription>] Optional list of [subscriptions](https://docs.metronome.com/manage-product-acces
        #
        # @param total_contract_value [Float] This field's availability is dependent on your client's configuration.
        #
        # @param transition [MetronomeSDK::Models::V1::ContractCreateParams::Transition]
        #
        # @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made wit
        #
        # @param usage_filter [MetronomeSDK::Models::BaseUsageFilter]
        #
        # @param usage_statement_schedule [MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule]
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::ContractCreateResponse]
        #
        # @see MetronomeSDK::Models::V1::ContractCreateParams
        def create(params)
          parsed, options = MetronomeSDK::V1::ContractCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/create",
            body: parsed,
            model: MetronomeSDK::Models::V1::ContractCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::ContractRetrieveParams} for more details.
        #
        # This is the v1 endpoint to get a contract. New clients should implement using
        # the v2 endpoint.
        #
        # @overload retrieve(contract_id:, customer_id:, include_balance: nil, include_ledgers: nil, request_options: {})
        #
        # @param contract_id [String]
        #
        # @param customer_id [String]
        #
        # @param include_balance [Boolean] Include the balance of credits and commits in the response. Setting this flag ma
        #
        # @param include_ledgers [Boolean] Include commit ledgers in the response. Setting this flag may cause the query to
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::ContractRetrieveResponse]
        #
        # @see MetronomeSDK::Models::V1::ContractRetrieveParams
        def retrieve(params)
          parsed, options = MetronomeSDK::V1::ContractRetrieveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/get",
            body: parsed,
            model: MetronomeSDK::Models::V1::ContractRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::ContractListParams} for more details.
        #
        # Retrieves all contracts for a specific customer, including pricing, terms,
        # credits, and commitments. Use this to view a customer's contract history and
        # current agreements for billing management. Returns contract details with
        # optional ledgers and balance information.
        #
        # ⚠️ Note: This is the legacy v1 endpoint - new integrations should use the v2
        # endpoint for enhanced features.
        #
        # @overload list(customer_id:, covering_date: nil, include_archived: nil, include_balance: nil, include_ledgers: nil, starting_at: nil, request_options: {})
        #
        # @param customer_id [String]
        #
        # @param covering_date [Time] Optional RFC 3339 timestamp. If provided, the response will include only contrac
        #
        # @param include_archived [Boolean] Include archived contracts in the response
        #
        # @param include_balance [Boolean] Include the balance of credits and commits in the response. Setting this flag ma
        #
        # @param include_ledgers [Boolean] Include commit ledgers in the response. Setting this flag may cause the query to
        #
        # @param starting_at [Time] Optional RFC 3339 timestamp. If provided, the response will include only contrac
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::ContractListResponse]
        #
        # @see MetronomeSDK::Models::V1::ContractListParams
        def list(params)
          parsed, options = MetronomeSDK::V1::ContractListParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/list",
            body: parsed,
            model: MetronomeSDK::Models::V1::ContractListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::ContractAddManualBalanceEntryParams} for more
        # details.
        #
        # Manually adjust the available balance on a commit or credit. This entry is
        # appended to the commit ledger as a new event. Optionally include a description
        # that provides the reasoning for the entry.
        #
        # ### Use this endpoint to:
        #
        # - Address incorrect usage burn-down caused by malformed usage or invalid config
        # - Decrease available balance to account for outages where usage may have not
        #   been tracked or sent to Metronome
        # - Issue credits to customers in the form of increased balance on existing commit
        #   or credit
        #
        # ### Usage guidelines:
        #
        # Manual ledger entries can be extremely useful for resolving discrepancies in
        # Metronome. However, most corrections to inaccurate billings can be modified
        # upstream of the commit, whether that is via contract editing, rate editing, or
        # other actions that cause an invoice to be recalculated.
        #
        # @overload add_manual_balance_entry(id:, amount:, customer_id:, reason:, segment_id:, contract_id: nil, timestamp: nil, request_options: {})
        #
        # @param id [String] ID of the balance (commit or credit) to update.
        #
        # @param amount [Float] Amount to add to the segment. A negative number will draw down from the balance.
        #
        # @param customer_id [String] ID of the customer whose balance is to be updated.
        #
        # @param reason [String] Reason for the manual adjustment. This will be displayed in the ledger.
        #
        # @param segment_id [String] ID of the segment to update.
        #
        # @param contract_id [String] ID of the contract to update. Leave blank to update a customer level balance.
        #
        # @param timestamp [Time] RFC 3339 timestamp indicating when the manual adjustment takes place. If not pro
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see MetronomeSDK::Models::V1::ContractAddManualBalanceEntryParams
        def add_manual_balance_entry(params)
          parsed, options = MetronomeSDK::V1::ContractAddManualBalanceEntryParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/addManualBalanceLedgerEntry",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Amendments will be replaced by Contract editing. New clients should implement
        # using the `editContract` endpoint. Read more about the migration to contract
        # editing [here](https://docs.metronome.com/migrate-amendments-to-edits/) and
        # reach out to your Metronome representative for more details. Once contract
        # editing is enabled, access to this endpoint will be removed.
        #
        # @overload amend(contract_id:, customer_id:, starting_at:, commits: nil, credits: nil, custom_fields: nil, discounts: nil, netsuite_sales_order_id: nil, overrides: nil, professional_services: nil, reseller_royalties: nil, salesforce_opportunity_id: nil, scheduled_charges: nil, total_contract_value: nil, request_options: {})
        #
        # @param contract_id [String] ID of the contract to amend
        #
        # @param customer_id [String] ID of the customer whose contract is to be amended
        #
        # @param starting_at [Time] inclusive start time for the amendment
        #
        # @param commits [Array<MetronomeSDK::Models::V1::ContractAmendParams::Commit>]
        #
        # @param credits [Array<MetronomeSDK::Models::V1::ContractAmendParams::Credit>]
        #
        # @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        #
        # @param discounts [Array<MetronomeSDK::Models::V1::ContractAmendParams::Discount>] This field's availability is dependent on your client's configuration.
        #
        # @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
        #
        # @param overrides [Array<MetronomeSDK::Models::V1::ContractAmendParams::Override>]
        #
        # @param professional_services [Array<MetronomeSDK::Models::V1::ContractAmendParams::ProfessionalService>] This field's availability is dependent on your client's configuration.
        #
        # @param reseller_royalties [Array<MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty>] This field's availability is dependent on your client's configuration.
        #
        # @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
        #
        # @param scheduled_charges [Array<MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge>]
        #
        # @param total_contract_value [Float] This field's availability is dependent on your client's configuration.
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::ContractAmendResponse]
        #
        # @see MetronomeSDK::Models::V1::ContractAmendParams
        def amend(params)
          parsed, options = MetronomeSDK::V1::ContractAmendParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/amend",
            body: parsed,
            model: MetronomeSDK::Models::V1::ContractAmendResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::ContractArchiveParams} for more details.
        #
        # Permanently end and archive a contract along with all its terms. Any draft
        # invoices will be canceled, and all upcoming scheduled invoices will be
        # voided–also all finalized invoices can optionally be voided. Use this in the
        # event a contract was incorrectly created and needed to be removed from a
        # customer.
        #
        # #### Impact on commits and credits:
        #
        # When archiving a contract, all associated commits and credits are also archived.
        # For prepaid commits with active segments, Metronome automatically generates
        # expiration ledger entries to close out any remaining balances, ensuring accurate
        # accounting of unused prepaid amounts. These ledger entries will appear in the
        # commit's transaction history with type `PREPAID_COMMIT_EXPIRATION`.
        #
        # #### Archived contract visibility:
        #
        # Archived contracts remain accessible for historical reporting and audit
        # purposes. They can be retrieved using the `ListContracts` endpoint by setting
        # the `include_archived` parameter to `true` or in the Metronome UI when the "Show
        # archived" option is enabled.
        #
        # @overload archive(contract_id:, customer_id:, void_invoices:, request_options: {})
        #
        # @param contract_id [String] ID of the contract to archive
        #
        # @param customer_id [String] ID of the customer whose contract is to be archived
        #
        # @param void_invoices [Boolean] If false, the existing finalized invoices will remain after the contract is arch
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::ContractArchiveResponse]
        #
        # @see MetronomeSDK::Models::V1::ContractArchiveParams
        def archive(params)
          parsed, options = MetronomeSDK::V1::ContractArchiveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/archive",
            body: parsed,
            model: MetronomeSDK::Models::V1::ContractArchiveResponse,
            options: options
          )
        end

        # Create historical usage invoices for past billing periods on specific contracts.
        # Use this endpoint to generate retroactive invoices with custom usage line items,
        # quantities, and date ranges. Supports preview mode to validate invoice data
        # before creation. Ideal for billing migrations or correcting past billing
        # periods.
        #
        # @overload create_historical_invoices(invoices:, preview:, request_options: {})
        #
        # @param invoices [Array<MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice>]
        # @param preview [Boolean]
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesResponse]
        #
        # @see MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams
        def create_historical_invoices(params)
          parsed, options = MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/createHistoricalInvoices",
            body: parsed,
            model: MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::ContractGetSubscriptionSeatsScheduleHistoryParams}
        # for more details.
        #
        # Get the history of subscription seats schedule over time for a given
        # `subscription_id`. This endpoint provides information about seat assignments and
        # total quantities for different time periods, allowing you to track how seat
        # assignments have changed over time.
        #
        # ### Use this endpoint to:
        #
        # - Track changes to seat assignments over time
        # - Get seat schedule for a specific date using the `covering_date` parameter
        # - Get seat schedule history with optional date range filtering using
        #   `starting_at` and `ending_before`
        #
        # ### Key response fields:
        #
        # - data: array of seat schedule entries with time periods, quantity, and
        #   assignments
        # - next_page: cursor for pagination to retrieve additional results
        #
        # ### Usage guidelines:
        #
        # - Use `covering_date` to get the active seats for a specific point in time.
        #   `covering_date` cannot be used with `starting_at` or `ending_before`.
        # - Use `starting_at` and `ending_before` to filter results by time range.
        #   `starting_at` and `ending_before` cannot be used with `covering_date`.
        # - Maximum limit is 10 seat schedule entries per request
        # - Results are ordered by `starting_at` timestamp
        #
        # @overload get_subscription_seats_schedule_history(contract_id:, customer_id:, subscription_id:, covering_date: nil, cursor: nil, ending_before: nil, limit: nil, starting_at: nil, request_options: {})
        #
        # @param contract_id [String]
        #
        # @param customer_id [String]
        #
        # @param subscription_id [String]
        #
        # @param covering_date [Time, nil] Get the seats history segment for the covering date. Cannot be used with `starti
        #
        # @param cursor [String, nil] Cursor for pagination. Use the value from the `next_page` field of the previous
        #
        # @param ending_before [Time, nil] Include seats history segments that are active at or before this timestamp. Use
        #
        # @param limit [Integer, nil] Maximum number of seat schedule entries to return. Defaults to 10. Required rang
        #
        # @param starting_at [Time, nil] Include seats history segments that are active at or after this timestamp. Use w
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::ContractGetSubscriptionSeatsScheduleHistoryResponse]
        #
        # @see MetronomeSDK::Models::V1::ContractGetSubscriptionSeatsScheduleHistoryParams
        def get_subscription_seats_schedule_history(params)
          parsed, options =
            MetronomeSDK::V1::ContractGetSubscriptionSeatsScheduleHistoryParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/getSubscriptionSeatsScheduleHistory",
            body: parsed,
            model: MetronomeSDK::Models::V1::ContractGetSubscriptionSeatsScheduleHistoryResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::ContractListBalancesParams} for more details.
        #
        # Retrieve a comprehensive view of all available balances (commits and credits)
        # for a customer. This endpoint provides real-time visibility into prepaid funds,
        # postpaid commitments, promotional credits, and other balance types that can
        # offset usage charges, helping you build transparent billing experiences.
        #
        # ### Use this endpoint to:
        #
        # - Display current available balances in customer dashboards
        # - Verify available funds before approving high-usage operations
        # - Generate balance reports for finance teams
        # - Filter balances by contract or date ranges
        #
        # ### Key response fields:
        #
        # An array of balance objects (all credits and commits) containing:
        #
        # - Balance details: Current available amount for each commit or credit
        # - Metadata: Product associations, priorities, applicable date ranges
        # - Optional ledger entries: Detailed transaction history (if
        #   `include_ledgers=true`)
        # - Balance calculations: Including pending transactions and future-dated entries
        # - Custom fields: Any additional metadata attached to balances
        #
        # ### Usage guidelines:
        #
        # - Date filtering: Use `effective_before` to include only balances with access
        #   before a specific date (exclusive)
        # - Set `include_balance=true` for calculated balance amounts on each commit or
        #   credit
        # - Set `include_ledgers=true` for full transaction history
        # - Set `include_contract_balances = true` to see contract level balances
        # - Balance logic: Reflects currently accessible amounts, excluding expired/future
        #   segments
        # - Manual adjustments: Includes all manual ledger entries, even future-dated ones
        #
        # @overload list_balances(customer_id:, id: nil, covering_date: nil, effective_before: nil, include_archived: nil, include_balance: nil, include_contract_balances: nil, include_ledgers: nil, limit: nil, next_page: nil, starting_at: nil, request_options: {})
        #
        # @param customer_id [String]
        #
        # @param id [String]
        #
        # @param covering_date [Time] Return only balances that have access schedules that "cover" the provided date
        #
        # @param effective_before [Time] Include only balances that have any access before the provided date (exclusive)
        #
        # @param include_archived [Boolean] Include archived credits and credits from archived contracts.
        #
        # @param include_balance [Boolean] Include the balance of credits and commits in the response. Setting this flag ma
        #
        # @param include_contract_balances [Boolean] Include balances on the contract level.
        #
        # @param include_ledgers [Boolean] Include ledgers in the response. Setting this flag may cause the query to be slo
        #
        # @param limit [Integer] The maximum number of commits to return. Defaults to 25.
        #
        # @param next_page [String] The next page token from a previous response.
        #
        # @param starting_at [Time] Include only balances that have any access on or after the provided date
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Internal::BodyCursorPage<MetronomeSDK::Models::Commit, MetronomeSDK::Models::Credit>]
        #
        # @see MetronomeSDK::Models::V1::ContractListBalancesParams
        def list_balances(params)
          parsed, options = MetronomeSDK::V1::ContractListBalancesParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/customerBalances/list",
            body: parsed,
            page: MetronomeSDK::Internal::BodyCursorPage,
            model: MetronomeSDK::Models::V1::ContractListBalancesResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::ContractRetrieveRateScheduleParams} for more details.
        #
        # For a specific customer and contract, get the rates at a specific point in time.
        # This endpoint takes the contract's rate card into consideration, including
        # scheduled changes. It also takes into account overrides on the contract.
        #
        # For example, if you want to show your customer a summary of the prices they are
        # paying, inclusive of any negotiated discounts or promotions, use this endpoint.
        # This endpoint only returns rates that are entitled.
        #
        # @overload retrieve_rate_schedule(contract_id:, customer_id:, limit: nil, next_page: nil, at: nil, selectors: nil, request_options: {})
        #
        # @param contract_id [String] Body param: ID of the contract to get the rate schedule for.
        #
        # @param customer_id [String] Body param: ID of the customer for whose contract to get the rate schedule for.
        #
        # @param limit [Integer] Query param: Max number of results that should be returned
        #
        # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
        #
        # @param at [Time] Body param: optional timestamp which overlaps with the returned rate schedule se
        #
        # @param selectors [Array<MetronomeSDK::Models::V1::ContractRetrieveRateScheduleParams::Selector>] Body param: List of rate selectors, rates matching ANY of the selectors will be
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse]
        #
        # @see MetronomeSDK::Models::V1::ContractRetrieveRateScheduleParams
        def retrieve_rate_schedule(params)
          parsed, options = MetronomeSDK::V1::ContractRetrieveRateScheduleParams.dump_request(params)
          query_params = [:limit, :next_page]
          @client.request(
            method: :post,
            path: "v1/contracts/getContractRateSchedule",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse,
            options: options
          )
        end

        # Get the history of subscription quantities and prices over time for a given
        # `subscription_id`. This endpoint can be used to power an in-product experience
        # where you show a customer their historical changes to seat count. Future changes
        # are not included in this endpoint - use the `getContract` endpoint to view the
        # future scheduled changes to a subscription's quantity.
        #
        # Subscriptions are used to model fixed recurring fees as well as seat-based
        # recurring fees. To model changes to the number of seats in Metronome, you can
        # increment or decrement the quantity on a subscription at any point in the past
        # or future.
        #
        # @overload retrieve_subscription_quantity_history(contract_id:, customer_id:, subscription_id:, request_options: {})
        #
        # @param contract_id [String]
        # @param customer_id [String]
        # @param subscription_id [String]
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse]
        #
        # @see MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryParams
        def retrieve_subscription_quantity_history(params)
          parsed, options =
            MetronomeSDK::V1::ContractRetrieveSubscriptionQuantityHistoryParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/getSubscriptionQuantityHistory",
            body: parsed,
            model: MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse,
            options: options
          )
        end

        # Create a new scheduled invoice for Professional Services terms on a contract.
        # This endpoint's availability is dependent on your client's configuration.
        #
        # @overload schedule_pro_services_invoice(contract_id:, customer_id:, issued_at:, line_items:, netsuite_invoice_header_end: nil, netsuite_invoice_header_start: nil, request_options: {})
        #
        # @param contract_id [String]
        #
        # @param customer_id [String]
        #
        # @param issued_at [Time] The date the invoice is issued
        #
        # @param line_items [Array<MetronomeSDK::Models::V1::ContractScheduleProServicesInvoiceParams::LineItem>] Each line requires an amount or both unit_price and quantity.
        #
        # @param netsuite_invoice_header_end [Time] The end date of the invoice header in Netsuite
        #
        # @param netsuite_invoice_header_start [Time] The start date of the invoice header in Netsuite
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::ContractScheduleProServicesInvoiceResponse]
        #
        # @see MetronomeSDK::Models::V1::ContractScheduleProServicesInvoiceParams
        def schedule_pro_services_invoice(params)
          parsed, options = MetronomeSDK::V1::ContractScheduleProServicesInvoiceParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/scheduleProServicesInvoice",
            body: parsed,
            model: MetronomeSDK::Models::V1::ContractScheduleProServicesInvoiceResponse,
            options: options
          )
        end

        # If a customer has multiple contracts with overlapping rates, the usage filter
        # routes usage to the appropriate contract based on a predefined group key.
        #
        # As an example, imagine you have a customer associated with two projects. Each
        # project is associated with its own contract. You can create a usage filter with
        # group key `project_id` on each contract, and route usage for `project_1` to the
        # first contract and `project_2` to the second contract.
        #
        # ### Use this endpoint to:
        #
        # - Support enterprise contracting scenarios where multiple contracts are
        #   associated to the same customer with the same rates.
        # - Update the usage filter associated with the contract over time.
        #
        # ### Usage guidelines:
        #
        # To use usage filters, the `group_key` must be defined on the billable metrics
        # underlying the rate card on the contracts.
        #
        # @overload set_usage_filter(contract_id:, customer_id:, group_key:, group_values:, starting_at:, request_options: {})
        #
        # @param contract_id [String]
        # @param customer_id [String]
        # @param group_key [String]
        # @param group_values [Array<String>]
        # @param starting_at [Time]
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see MetronomeSDK::Models::V1::ContractSetUsageFilterParams
        def set_usage_filter(params)
          parsed, options = MetronomeSDK::V1::ContractSetUsageFilterParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/setUsageFilter",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::ContractUpdateEndDateParams} for more details.
        #
        # Update or add an end date to a contract. Ending a contract early will impact
        # draft usage statements, truncate any terms, and remove upcoming scheduled
        # invoices. Moving the date into the future will only extend the contract length.
        # Terms and scheduled invoices are not extended. In-advance subscriptions will not
        # be extended. Use this if a contract's end date has changed or if a perpetual
        # contract ends.
        #
        # @overload update_end_date(contract_id:, customer_id:, allow_ending_before_finalized_invoice: nil, ending_before: nil, request_options: {})
        #
        # @param contract_id [String] ID of the contract to update
        #
        # @param customer_id [String] ID of the customer whose contract is to be updated
        #
        # @param allow_ending_before_finalized_invoice [Boolean] If true, allows setting the contract end date earlier than the end_timestamp of
        #
        # @param ending_before [Time] RFC 3339 timestamp indicating when the contract will end (exclusive). If not pro
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::ContractUpdateEndDateResponse]
        #
        # @see MetronomeSDK::Models::V1::ContractUpdateEndDateParams
        def update_end_date(params)
          parsed, options = MetronomeSDK::V1::ContractUpdateEndDateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/updateEndDate",
            body: parsed,
            model: MetronomeSDK::Models::V1::ContractUpdateEndDateResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [MetronomeSDK::Client]
        def initialize(client:)
          @client = client
          @products = MetronomeSDK::Resources::V1::Contracts::Products.new(client: client)
          @rate_cards = MetronomeSDK::Resources::V1::Contracts::RateCards.new(client: client)
          @named_schedules = MetronomeSDK::Resources::V1::Contracts::NamedSchedules.new(client: client)
        end
      end
    end
  end
end
