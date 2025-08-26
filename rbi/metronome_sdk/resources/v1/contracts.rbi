# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Contracts
        sig { returns(MetronomeSDK::Resources::V1::Contracts::Products) }
        attr_reader :products

        sig { returns(MetronomeSDK::Resources::V1::Contracts::RateCards) }
        attr_reader :rate_cards

        sig { returns(MetronomeSDK::Resources::V1::Contracts::NamedSchedules) }
        attr_reader :named_schedules

        # Contracts define a customer's products, pricing, discounts, access duration, and
        # billing configuration. Contracts serve as the central billing agreement for both
        # PLG and Enterprise customers, you can automatically customers access to your
        # products and services directly from your product or CRM.
        #
        # Common Use Cases:
        #
        # - PLG onboarding: Automatically provision new self-serve customers with
        #   contracts when they sign up.
        # - Enterprise sales: Push negotiated contracts from Salesforce with custom
        #   pricing and commitments
        # - Promotional pricing: Implement time-limited discounts and free trials through
        #   overrides
        #
        # Key Components:
        #
        # - Contract Term and Billing Schedule
        # - Set contract duration using starting_at and ending_before fields. PLG
        #   contracts typically use perpetual agreements (no end date), while Enterprise
        #   contracts have fixed end dates which can be edited over time in the case of
        #   co-term upsells.
        #
        # Rate Card\
        # If you are offering usage based pricing, you can set a rate card for the contract
        # to reference through rate_card_id or rate_card_alias. The rate card is a store of
        # all of your usage based products and their centralized pricing. Any new products
        # or price changes on the rate card can be set to automatically propagate to all associated
        # contracts - this ensures consistent pricing and product launches flow to contracts
        # without manual updates and migrations. The usage_statement_schedule determines the
        # cadence on which Metronome will finalize a usage invoice for the customer. This defaults
        # to monthly on the 1st, with options for custom dates, quarterly, or annual cadences.
        # Note: Most usage based billing companies align usage statements to be evaluated aligned
        # to the first of the month. Read more about [Create and Manage Rate Cards](https://docs.metronome.com/pricing-packaging/create-manage-rate-cards/).
        #
        # Overrides and discounts\
        # Customize pricing on the contract through time-bounded overrides that can target
        # specific products, product families, or complex usage scenarios. Overrides enable
        # two key capabilities:
        #
        # - Discounts: Apply percentage discounts, fixed rate reductions, or
        #   quantity-based pricing tiers
        # - Entitlements: Provide special pricing or access to specific products for
        #   negotiated deals
        #
        # Read more about
        # [Add Contract Overrides](https://docs.metronome.com/manage-product-access/add-contract-override/).
        #
        # Commits and Credits\
        # Using commits, configure prepaid or postpaid spending commitments where customers
        # promise to spend a certain amount over the contract period paid in advance or in
        # arrears. Use credits to provide free spending allowances. Under the hood these are
        # the same mechanisms, however, credits are typically offered for free (SLA or promotional)
        # or as a part of an allotment associated with a Subscription.
        #
        # In Metronome, you can set commits and credits to only be applicable for a subset
        # of usage. Use applicable_product_ids or applicable_product_tags to create
        # product or product-family specific commits or credits, or you can build complex
        # boolean logic specifiers to target usage based on pricing and presentation group
        # values using override_specifiers.
        #
        # These objects can also also be configured to have a recurrence schedule to
        # easily model customer packaging which includes recurring monthly or quarterly
        # allotments.
        #
        # Commits support rollover settings (rollover_fraction) to transfer unused
        # balances between contract periods, either entirely or as a percentage.
        #
        # Read more about
        # [Apply Credits and Commits](https://docs.metronome.com/pricing-packaging/apply-credits-commits/).
        #
        # Subscriptions\
        # You can add a fixed recurring charge to a contract, like monthly licenses or seat-based
        # fees, using the subscription charge. Subscription charges are defined on your rate
        # card and you can select which subscription is applicable to add to each contract.
        # When you add a subscription to a contract you need to:
        #
        # - Define whether the subscription is paid for in-advance or in-arrears
        #   (collection_schedule)
        # - Define the proration behavior (proration)
        # - Specify an initial quantity (initial_quantity)
        # - Define which subscription rate on the rate card should be used
        #   (subscription_rate)
        #
        # Read more about
        # [Create Subscriptions](https://docs.metronome.com/manage-product-access/create-subscription/).
        #
        # Scheduled Charges\
        # Set up one-time, recurring, or entirely custom charges that occur on specific dates,
        # separate from usage-based billing or commitments. These can be used to model non-recurring
        # platform charges or professional services.
        #
        # Threshold Billing\
        # Metronome allows you to configure automatic billing triggers when customers reach
        # spending thresholds to prevent fraud and manage risk. You can use spend_threshold_configuration
        # to trigger an invoice to cover current charges whenever the threshold is reached
        # or you can ensure the customer maintains a minimum prepaid balance using the prepaid_balance_configuration
        # .
        #
        # Read more about
        # [Spend Threshold](https://docs.metronome.com/manage-product-access/spend-thresholds/)
        # and
        # [Prepaid Balance Thresholds](https://docs.metronome.com/manage-product-access/prepaid-balance-thresholds/).
        #
        # Usage guidelines:
        #
        # - You can always
        #   [Edit Contracts](https://docs.metronome.com/manage-product-access/edit-contract/)
        #   after it has been created, using the editContract endpoint. Metronome keeps
        #   track of all edits, both in the audit log and over the getEditHistory
        #   endpoint.
        # - Customers in Metronome can have multiple concurrent contracts at one time. Use
        #   usage_filters to route the correct usage to each contract.
        #   [Read more about usage filters](https://docs.metronome.com/manage-product-access/provision-customer/#create-a-usage-filter).
        sig do
          params(
            customer_id: String,
            starting_at: Time,
            billing_provider_configuration:
              MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::OrHash,
            commits:
              T::Array[MetronomeSDK::V1::ContractCreateParams::Commit::OrHash],
            credits:
              T::Array[MetronomeSDK::V1::ContractCreateParams::Credit::OrHash],
            custom_fields: T::Hash[Symbol, String],
            discounts:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::Discount::OrHash
              ],
            ending_before: Time,
            hierarchy_configuration:
              MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::OrHash,
            multiplier_override_prioritization:
              MetronomeSDK::V1::ContractCreateParams::MultiplierOverridePrioritization::OrSymbol,
            name: String,
            net_payment_terms_days: Float,
            netsuite_sales_order_id: String,
            overrides:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::Override::OrHash
              ],
            prepaid_balance_threshold_configuration:
              MetronomeSDK::PrepaidBalanceThresholdConfiguration::OrHash,
            priority: Float,
            professional_services:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::ProfessionalService::OrHash
              ],
            rate_card_alias: String,
            rate_card_id: String,
            recurring_commits:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::OrHash
              ],
            recurring_credits:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::OrHash
              ],
            reseller_royalties:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::OrHash
              ],
            salesforce_opportunity_id: String,
            scheduled_charges:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::OrHash
              ],
            scheduled_charges_on_usage_invoices:
              MetronomeSDK::V1::ContractCreateParams::ScheduledChargesOnUsageInvoices::OrSymbol,
            spend_threshold_configuration:
              MetronomeSDK::SpendThresholdConfiguration::OrHash,
            subscriptions:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::Subscription::OrHash
              ],
            total_contract_value: Float,
            transition:
              MetronomeSDK::V1::ContractCreateParams::Transition::OrHash,
            uniqueness_key: String,
            usage_filter: MetronomeSDK::BaseUsageFilter::OrHash,
            usage_statement_schedule:
              MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::OrHash,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::ContractCreateResponse)
        end
        def create(
          customer_id:,
          # inclusive contract start time
          starting_at:,
          # The billing provider configuration associated with a contract. Provide either an
          # ID or the provider and delivery method.
          billing_provider_configuration: nil,
          commits: nil,
          credits: nil,
          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          custom_fields: nil,
          # This field's availability is dependent on your client's configuration.
          discounts: nil,
          # exclusive contract end time
          ending_before: nil,
          hierarchy_configuration: nil,
          # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
          # prices automatically. EXPLICIT prioritization requires specifying priorities for
          # each multiplier; the one with the lowest priority value will be prioritized
          # first. If tiered overrides are used, prioritization must be explicit.
          multiplier_override_prioritization: nil,
          name: nil,
          net_payment_terms_days: nil,
          # This field's availability is dependent on your client's configuration.
          netsuite_sales_order_id: nil,
          overrides: nil,
          prepaid_balance_threshold_configuration: nil,
          # Priority of the contract.
          priority: nil,
          # This field's availability is dependent on your client's configuration.
          professional_services: nil,
          # Selects the rate card linked to the specified alias as of the contract's start
          # date.
          rate_card_alias: nil,
          rate_card_id: nil,
          recurring_commits: nil,
          recurring_credits: nil,
          # This field's availability is dependent on your client's configuration.
          reseller_royalties: nil,
          # This field's availability is dependent on your client's configuration.
          salesforce_opportunity_id: nil,
          scheduled_charges: nil,
          # Determines which scheduled and commit charges to consolidate onto the Contract's
          # usage invoice. The charge's `timestamp` must match the usage invoice's
          # `ending_before` date for consolidation to occur. This field cannot be modified
          # after a Contract has been created. If this field is omitted, charges will appear
          # on a separate invoice from usage charges.
          scheduled_charges_on_usage_invoices: nil,
          spend_threshold_configuration: nil,
          # Optional list of
          # [subscriptions](https://docs.metronome.com/manage-product-access/create-subscription/)
          # to add to the contract.
          subscriptions: nil,
          # This field's availability is dependent on your client's configuration.
          total_contract_value: nil,
          transition: nil,
          # Prevents the creation of duplicates. If a request to create a record is made
          # with a previously used uniqueness key, a new record will not be created and the
          # request will fail with a 409 error.
          uniqueness_key: nil,
          usage_filter: nil,
          usage_statement_schedule: nil,
          request_options: {}
        )
        end

        # This is the v1 endpoint to get a contract. New clients should implement using
        # the v2 endpoint.
        sig do
          params(
            contract_id: String,
            customer_id: String,
            include_balance: T::Boolean,
            include_ledgers: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::ContractRetrieveResponse)
        end
        def retrieve(
          contract_id:,
          customer_id:,
          # Include the balance of credits and commits in the response. Setting this flag
          # may cause the query to be slower.
          include_balance: nil,
          # Include commit ledgers in the response. Setting this flag may cause the query to
          # be slower.
          include_ledgers: nil,
          request_options: {}
        )
        end

        # Retrieves all contracts for a specific customer, including pricing, terms,
        # credits, and commitments. Use this to view a customer's contract history and
        # current agreements for billing management. Returns contract details with
        # optional ledgers and balance information.
        #
        # ⚠️ Note: This is the legacy v1 endpoint - new integrations should use the v2
        # endpoint for enhanced features.
        sig do
          params(
            customer_id: String,
            covering_date: Time,
            include_archived: T::Boolean,
            include_balance: T::Boolean,
            include_ledgers: T::Boolean,
            starting_at: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::ContractListResponse)
        end
        def list(
          customer_id:,
          # Optional RFC 3339 timestamp. If provided, the response will include only
          # contracts effective on the provided date. This cannot be provided if the
          # starting_at filter is provided.
          covering_date: nil,
          # Include archived contracts in the response
          include_archived: nil,
          # Include the balance of credits and commits in the response. Setting this flag
          # may cause the query to be slower.
          include_balance: nil,
          # Include commit ledgers in the response. Setting this flag may cause the query to
          # be slower.
          include_ledgers: nil,
          # Optional RFC 3339 timestamp. If provided, the response will include only
          # contracts where effective_at is on or after the provided date. This cannot be
          # provided if the covering_date filter is provided.
          starting_at: nil,
          request_options: {}
        )
        end

        # Manually adjust the available balance on a commit or credit. This entry is
        # appended to the commit ledger as a new event. Optionally include a description
        # that provides the reasoning for the entry.
        #
        # Use this endpoint to:
        #
        # - Address incorrect usage burn-down caused by malformed usage or invalid config
        # - Decrease available balance to account for outages where usage may have not
        #   been tracked or sent to Metronome
        # - Issue credits to customers in the form of increased balance on existing commit
        #   or credit
        #
        # Usage guidelines:\
        # Manual ledger entries can be extremely useful for resolving discrepancies in Metronome.
        # However, most corrections to inaccurate billings can be modified upstream of the
        # commit, whether that is via contract editing, rate editing, or other actions that
        # cause an invoice to be recalculated.
        sig do
          params(
            id: String,
            amount: Float,
            customer_id: String,
            reason: String,
            segment_id: String,
            contract_id: String,
            timestamp: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).void
        end
        def add_manual_balance_entry(
          # ID of the balance (commit or credit) to update.
          id:,
          # Amount to add to the segment. A negative number will draw down from the balance.
          amount:,
          # ID of the customer whose balance is to be updated.
          customer_id:,
          # Reason for the manual adjustment. This will be displayed in the ledger.
          reason:,
          # ID of the segment to update.
          segment_id:,
          # ID of the contract to update. Leave blank to update a customer level balance.
          contract_id: nil,
          # RFC 3339 timestamp indicating when the manual adjustment takes place. If not
          # provided, it will default to the start of the segment.
          timestamp: nil,
          request_options: {}
        )
        end

        # Amendments will be replaced by Contract editing. New clients should implement
        # using the editContract endpoint. Read more about the migration to contract
        # editing [here](https://docs.metronome.com/migrate-amendments-to-edits/) and
        # reach out to your Metronome representative for more details. Once contract
        # editing is enabled, access to this endpoint will be removed.
        sig do
          params(
            contract_id: String,
            customer_id: String,
            starting_at: Time,
            commits:
              T::Array[MetronomeSDK::V1::ContractAmendParams::Commit::OrHash],
            credits:
              T::Array[MetronomeSDK::V1::ContractAmendParams::Credit::OrHash],
            custom_fields: T::Hash[Symbol, String],
            discounts:
              T::Array[MetronomeSDK::V1::ContractAmendParams::Discount::OrHash],
            netsuite_sales_order_id: String,
            overrides:
              T::Array[MetronomeSDK::V1::ContractAmendParams::Override::OrHash],
            professional_services:
              T::Array[
                MetronomeSDK::V1::ContractAmendParams::ProfessionalService::OrHash
              ],
            reseller_royalties:
              T::Array[
                MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::OrHash
              ],
            salesforce_opportunity_id: String,
            scheduled_charges:
              T::Array[
                MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::OrHash
              ],
            total_contract_value: Float,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::ContractAmendResponse)
        end
        def amend(
          # ID of the contract to amend
          contract_id:,
          # ID of the customer whose contract is to be amended
          customer_id:,
          # inclusive start time for the amendment
          starting_at:,
          commits: nil,
          credits: nil,
          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          custom_fields: nil,
          # This field's availability is dependent on your client's configuration.
          discounts: nil,
          # This field's availability is dependent on your client's configuration.
          netsuite_sales_order_id: nil,
          overrides: nil,
          # This field's availability is dependent on your client's configuration.
          professional_services: nil,
          # This field's availability is dependent on your client's configuration.
          reseller_royalties: nil,
          # This field's availability is dependent on your client's configuration.
          salesforce_opportunity_id: nil,
          scheduled_charges: nil,
          # This field's availability is dependent on your client's configuration.
          total_contract_value: nil,
          request_options: {}
        )
        end

        # Permanently end and archive a contract along with all its terms. Any draft
        # invoices will be canceled, and all upcoming scheduled invoices will be
        # voided–also all finalized invoices can optionally be voided. Use this in the
        # event a contract was incorrectly created and needed to be removed from a
        # customer.
        #
        # Impact on commits and credits:
        #
        # When archiving a contract, all associated commits and credits are also archived.
        # For prepaid commits with active segments, Metronome automatically generates
        # expiration ledger entries to close out any remaining balances, ensuring accurate
        # accounting of unused prepaid amounts. These ledger entries will appear in the
        # commit's transaction history with type PREPAID_COMMIT_EXPIRATION.
        #
        # Archived contract visibility:
        #
        # Archived contracts remain accessible for historical reporting and audit
        # purposes. They can be retrieved using the ListContracts endpoint by setting the
        # include_archived parameter to true or in the Metronome UI when the "Show
        # archived" option is enabled.
        sig do
          params(
            contract_id: String,
            customer_id: String,
            void_invoices: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::ContractArchiveResponse)
        end
        def archive(
          # ID of the contract to archive
          contract_id:,
          # ID of the customer whose contract is to be archived
          customer_id:,
          # If false, the existing finalized invoices will remain after the contract is
          # archived.
          void_invoices:,
          request_options: {}
        )
        end

        # Create historical usage invoices for past billing periods on specific contracts.
        # Use this endpoint to generate retroactive invoices with custom usage line items,
        # quantities, and date ranges. Supports preview mode to validate invoice data
        # before creation. Ideal for billing migrations or correcting past billing
        # periods.
        sig do
          params(
            invoices:
              T::Array[
                MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::OrHash
              ],
            preview: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesResponse
          )
        end
        def create_historical_invoices(invoices:, preview:, request_options: {})
        end

        # Retrieve a comprehensive view of all available balances (commits and credits)
        # for a customer. This endpoint provides real-time visibility into prepaid funds,
        # postpaid commitments, promotional credits, and other balance types that can
        # offset usage charges, helping you build transparent billing experiences.
        #
        # Use this endpoint to:
        #
        # - Display current available balances in customer dashboards
        # - Verify available funds before approving high-usage operations
        # - Generate balance reports for finance teams
        # - Filter balances by contract or date ranges
        #
        # Key response fields: An array of balance objects (all credits and commits)
        # containing:
        #
        # - Balance details: Current available amount for each commit or credit
        # - Metadata: Product associations, priorities, applicable date ranges
        # - Optional ledger entries: Detailed transaction history (if
        #   include_ledgers=true)
        # - Balance calculations: Including pending transactions and future-dated entries
        # - Custom fields: Any additional metadata attached to balances
        #
        # Usage guidelines:
        #
        # - Date filtering: Use effective_before to include only balances with access
        #   before a specific date (exclusive)
        # - Set include_balance=true for calculated balance amounts on each commit or
        #   credit
        # - Set include_ledgers=true for full transaction history
        # - Set include_contract_balances = true to see contract level balances
        #
        # - Balance logic: Reflects currently accessible amounts, excluding expired/future
        #   segments
        # - Manual adjustments: Includes all manual ledger entries, even future-dated ones
        sig do
          params(
            customer_id: String,
            id: String,
            covering_date: Time,
            effective_before: Time,
            include_archived: T::Boolean,
            include_balance: T::Boolean,
            include_contract_balances: T::Boolean,
            include_ledgers: T::Boolean,
            limit: Integer,
            next_page: String,
            starting_at: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Internal::BodyCursorPage[
              MetronomeSDK::Models::V1::ContractListBalancesResponse::Variants
            ]
          )
        end
        def list_balances(
          customer_id:,
          id: nil,
          # Return only balances that have access schedules that "cover" the provided date
          covering_date: nil,
          # Include only balances that have any access before the provided date (exclusive)
          effective_before: nil,
          # Include archived credits and credits from archived contracts.
          include_archived: nil,
          # Include the balance of credits and commits in the response. Setting this flag
          # may cause the query to be slower.
          include_balance: nil,
          # Include balances on the contract level.
          include_contract_balances: nil,
          # Include ledgers in the response. Setting this flag may cause the query to be
          # slower.
          include_ledgers: nil,
          # The maximum number of commits to return. Defaults to 25.
          limit: nil,
          # The next page token from a previous response.
          next_page: nil,
          # Include only balances that have any access on or after the provided date
          starting_at: nil,
          request_options: {}
        )
        end

        # For a specific customer and contract, get the rates at a specific point in time.
        # This endpoint takes the contract's rate card into consideration, including
        # scheduled changes. It also takes into account overrides on the contract. For
        # example, if you want to show your customer a summary of the prices they are
        # paying, inclusive of any negotiated discounts or promotions, use this endpoint.
        # This endpoint only returns rates that are entitled.
        sig do
          params(
            contract_id: String,
            customer_id: String,
            limit: Integer,
            next_page: String,
            at: Time,
            selectors:
              T::Array[
                MetronomeSDK::V1::ContractRetrieveRateScheduleParams::Selector::OrHash
              ],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse
          )
        end
        def retrieve_rate_schedule(
          # Body param: ID of the contract to get the rate schedule for.
          contract_id:,
          # Body param: ID of the customer for whose contract to get the rate schedule for.
          customer_id:,
          # Query param: Max number of results that should be returned
          limit: nil,
          # Query param: Cursor that indicates where the next page of results should start.
          next_page: nil,
          # Body param: optional timestamp which overlaps with the returned rate schedule
          # segments. When not specified, the current timestamp will be used.
          at: nil,
          # Body param: List of rate selectors, rates matching ANY of the selectors will be
          # included in the response. Passing no selectors will result in all rates being
          # returned.
          selectors: nil,
          request_options: {}
        )
        end

        # Get the history of subscription quantities and prices over time for a given
        # subscription_id. This endpoint can be used to power an in-product experience
        # where you show a customer their historical changes to seat count. Future changes
        # are not included in this endpoint - use the getContract endpoint to view the
        # future scheduled changes to a subscription's quantity.
        #
        # Subscriptions are used to model fixed recurring fees as well as seat-based
        # recurring fees. To model changes to the number of seats in Metronome, you can
        # increment or decrement the quantity on a subscription at any point in the past
        # or future.
        sig do
          params(
            contract_id: String,
            customer_id: String,
            subscription_id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse
          )
        end
        def retrieve_subscription_quantity_history(
          contract_id:,
          customer_id:,
          subscription_id:,
          request_options: {}
        )
        end

        # Create a new scheduled invoice for Professional Services terms on a contract.
        # This endpoint's availability is dependent on your client's configuration.
        sig do
          params(
            contract_id: String,
            customer_id: String,
            issued_at: Time,
            line_items:
              T::Array[
                MetronomeSDK::V1::ContractScheduleProServicesInvoiceParams::LineItem::OrHash
              ],
            netsuite_invoice_header_end: Time,
            netsuite_invoice_header_start: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Models::V1::ContractScheduleProServicesInvoiceResponse
          )
        end
        def schedule_pro_services_invoice(
          contract_id:,
          customer_id:,
          # The date the invoice is issued
          issued_at:,
          # Each line requires an amount or both unit_price and quantity.
          line_items:,
          # The end date of the invoice header in Netsuite
          netsuite_invoice_header_end: nil,
          # The start date of the invoice header in Netsuite
          netsuite_invoice_header_start: nil,
          request_options: {}
        )
        end

        # If a customer has multiple contracts with overlapping rates, the usage filter
        # routes usage to the appropriate contract based on a predefined group key.
        #
        # As an example, imagine you have a customer associated with two projects. Each
        # project is associated with its own contract. You can create a usage filter with
        # group key project_id on each contract, and route usage for project_1 to the
        # first contract and project_2 to the second contract.
        #
        # Use this endpoint to:
        #
        # - Support enterprise contracting scenarios where multiple contracts are
        #   associated to the same customer with the same rates.
        # - Update the usage filter associated with the contract over time.
        #
        # Usage guidelines:\
        # To use usage filters, the group_key must be defined on the billable metrics underlying
        # the rate card on the contracts.
        sig do
          params(
            contract_id: String,
            customer_id: String,
            group_key: String,
            group_values: T::Array[String],
            starting_at: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).void
        end
        def set_usage_filter(
          contract_id:,
          customer_id:,
          group_key:,
          group_values:,
          starting_at:,
          request_options: {}
        )
        end

        # Update or and an end date to a contract. Ending a contract early will impact
        # draft usage statements, truncate any terms, and remove upcoming scheduled
        # invoices. Moving the date into the future will only extend the contract length.
        # Terms and scheduled invoices are not extended. Use this if a contract's end date
        # has changed or if a perpetual contract ends.
        sig do
          params(
            contract_id: String,
            customer_id: String,
            allow_ending_before_finalized_invoice: T::Boolean,
            ending_before: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::ContractUpdateEndDateResponse)
        end
        def update_end_date(
          # ID of the contract to update
          contract_id:,
          # ID of the customer whose contract is to be updated
          customer_id:,
          # If true, allows setting the contract end date earlier than the end_timestamp of
          # existing finalized invoices. Finalized invoices will be unchanged; if you want
          # to incorporate the new end date, you can void and regenerate finalized usage
          # invoices. Defaults to true.
          allow_ending_before_finalized_invoice: nil,
          # RFC 3339 timestamp indicating when the contract will end (exclusive). If not
          # provided, the contract will be updated to be open-ended.
          ending_before: nil,
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
