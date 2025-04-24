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

        # Create a new contract
        #
        # @param params [MetronomeSDK::Models::V1::ContractCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :customer_id
        #
        #   @option params [Time] :starting_at inclusive contract start time
        #
        #   @option params [MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration] :billing_provider_configuration The billing provider configuration associated with a contract.
        #
        #   @option params [Array<MetronomeSDK::Models::V1::ContractCreateParams::Commit>] :commits
        #
        #   @option params [MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration] :credit_balance_threshold_configuration
        #
        #   @option params [Array<MetronomeSDK::Models::V1::ContractCreateParams::Credit>] :credits
        #
        #   @option params [Hash{Symbol=>String}] :custom_fields
        #
        #   @option params [Array<MetronomeSDK::Models::V1::ContractCreateParams::Discount>] :discounts This field's availability is dependent on your client's configuration.
        #
        #   @option params [Time] :ending_before exclusive contract end time
        #
        #   @option params [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::MultiplierOverridePrioritization] :multiplier_override_prioritization Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
        #     prices automatically. EXPLICIT prioritization requires specifying priorities for
        #     each multiplier; the one with the lowest priority value will be prioritized
        #     first. If tiered overrides are used, prioritization must be explicit.
        #
        #   @option params [String] :name
        #
        #   @option params [Float] :net_payment_terms_days
        #
        #   @option params [String] :netsuite_sales_order_id This field's availability is dependent on your client's configuration.
        #
        #   @option params [Array<MetronomeSDK::Models::V1::ContractCreateParams::Override>] :overrides
        #
        #   @option params [Array<MetronomeSDK::Models::V1::ContractCreateParams::ProfessionalService>] :professional_services This field's availability is dependent on your client's configuration.
        #
        #   @option params [String] :rate_card_alias Selects the rate card linked to the specified alias as of the contract's start
        #     date.
        #
        #   @option params [String] :rate_card_id
        #
        #   @option params [Array<MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit>] :recurring_commits
        #
        #   @option params [Array<MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit>] :recurring_credits
        #
        #   @option params [Array<MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty>] :reseller_royalties This field's availability is dependent on your client's configuration.
        #
        #   @option params [String] :salesforce_opportunity_id This field's availability is dependent on your client's configuration.
        #
        #   @option params [Array<MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge>] :scheduled_charges
        #
        #   @option params [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::ScheduledChargesOnUsageInvoices] :scheduled_charges_on_usage_invoices Determines which scheduled and commit charges to consolidate onto the Contract's
        #     usage invoice. The charge's `timestamp` must match the usage invoice's
        #     `ending_before` date for consolidation to occur. This field cannot be modified
        #     after a Contract has been created. If this field is omitted, charges will appear
        #     on a separate invoice from usage charges.
        #
        #   @option params [MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration] :spend_threshold_configuration
        #
        #   @option params [Float] :total_contract_value This field's availability is dependent on your client's configuration.
        #
        #   @option params [MetronomeSDK::Models::V1::ContractCreateParams::Transition] :transition
        #
        #   @option params [String] :uniqueness_key Prevents the creation of duplicates. If a request to create a record is made
        #     with a previously used uniqueness key, a new record will not be created and the
        #     request will fail with a 409 error.
        #
        #   @option params [MetronomeSDK::Models::BaseUsageFilter] :usage_filter
        #
        #   @option params [MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule] :usage_statement_schedule
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::ContractCreateResponse]
        #
        def create(params)
          parsed, options = MetronomeSDK::Models::V1::ContractCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/create",
            body: parsed,
            model: MetronomeSDK::Models::V1::ContractCreateResponse,
            options: options
          )
        end

        # This is the v1 endpoint to get a contract. New clients should implement using
        #   the v2 endpoint.
        #
        # @param params [MetronomeSDK::Models::V1::ContractRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :contract_id
        #
        #   @option params [String] :customer_id
        #
        #   @option params [Boolean] :include_balance Include the balance of credits and commits in the response. Setting this flag
        #     may cause the query to be slower.
        #
        #   @option params [Boolean] :include_ledgers Include commit ledgers in the response. Setting this flag may cause the query to
        #     be slower.
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::ContractRetrieveResponse]
        #
        def retrieve(params)
          parsed, options = MetronomeSDK::Models::V1::ContractRetrieveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/get",
            body: parsed,
            model: MetronomeSDK::Models::V1::ContractRetrieveResponse,
            options: options
          )
        end

        # This is the v1 endpoint to list all contracts for a customer. New clients should
        #   implement using the v2 endpoint.
        #
        # @param params [MetronomeSDK::Models::V1::ContractListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :customer_id
        #
        #   @option params [Time] :covering_date Optional RFC 3339 timestamp. If provided, the response will include only
        #     contracts effective on the provided date. This cannot be provided if the
        #     starting_at filter is provided.
        #
        #   @option params [Boolean] :include_archived Include archived contracts in the response
        #
        #   @option params [Boolean] :include_balance Include the balance of credits and commits in the response. Setting this flag
        #     may cause the query to be slower.
        #
        #   @option params [Boolean] :include_ledgers Include commit ledgers in the response. Setting this flag may cause the query to
        #     be slower.
        #
        #   @option params [Time] :starting_at Optional RFC 3339 timestamp. If provided, the response will include only
        #     contracts where effective_at is on or after the provided date. This cannot be
        #     provided if the covering_date filter is provided.
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::ContractListResponse]
        #
        def list(params)
          parsed, options = MetronomeSDK::Models::V1::ContractListParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/list",
            body: parsed,
            model: MetronomeSDK::Models::V1::ContractListResponse,
            options: options
          )
        end

        # Add a manual balance entry
        #
        # @param params [MetronomeSDK::Models::V1::ContractAddManualBalanceEntryParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :id ID of the balance (commit or credit) to update.
        #
        #   @option params [Float] :amount Amount to add to the segment. A negative number will draw down from the balance.
        #
        #   @option params [String] :customer_id ID of the customer whose balance is to be updated.
        #
        #   @option params [String] :reason Reason for the manual adjustment. This will be displayed in the ledger.
        #
        #   @option params [String] :segment_id ID of the segment to update.
        #
        #   @option params [String] :contract_id ID of the contract to update. Leave blank to update a customer level balance.
        #
        #   @option params [Time] :timestamp RFC 3339 timestamp indicating when the manual adjustment takes place. If not
        #     provided, it will default to the start of the segment.
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        #
        def add_manual_balance_entry(params)
          parsed, options = MetronomeSDK::Models::V1::ContractAddManualBalanceEntryParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/addManualBalanceLedgerEntry",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Amendments will be replaced by Contract editing. New clients should implement
        #   using the editContract endpoint. Read more about the migration to contract
        #   editing [here](https://docs.metronome.com/migrate-amendments-to-edits/) and
        #   reach out to your Metronome representative for more details. Once contract
        #   editing is enabled, access to this endpoint will be removed.
        #
        # @param params [MetronomeSDK::Models::V1::ContractAmendParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :contract_id ID of the contract to amend
        #
        #   @option params [String] :customer_id ID of the customer whose contract is to be amended
        #
        #   @option params [Time] :starting_at inclusive start time for the amendment
        #
        #   @option params [Array<MetronomeSDK::Models::V1::ContractAmendParams::Commit>] :commits
        #
        #   @option params [Array<MetronomeSDK::Models::V1::ContractAmendParams::Credit>] :credits
        #
        #   @option params [Hash{Symbol=>String}] :custom_fields
        #
        #   @option params [Array<MetronomeSDK::Models::V1::ContractAmendParams::Discount>] :discounts This field's availability is dependent on your client's configuration.
        #
        #   @option params [String] :netsuite_sales_order_id This field's availability is dependent on your client's configuration.
        #
        #   @option params [Array<MetronomeSDK::Models::V1::ContractAmendParams::Override>] :overrides
        #
        #   @option params [Array<MetronomeSDK::Models::V1::ContractAmendParams::ProfessionalService>] :professional_services This field's availability is dependent on your client's configuration.
        #
        #   @option params [Array<MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty>] :reseller_royalties This field's availability is dependent on your client's configuration.
        #
        #   @option params [String] :salesforce_opportunity_id This field's availability is dependent on your client's configuration.
        #
        #   @option params [Array<MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge>] :scheduled_charges
        #
        #   @option params [Float] :total_contract_value This field's availability is dependent on your client's configuration.
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::ContractAmendResponse]
        #
        def amend(params)
          parsed, options = MetronomeSDK::Models::V1::ContractAmendParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/amend",
            body: parsed,
            model: MetronomeSDK::Models::V1::ContractAmendResponse,
            options: options
          )
        end

        # Archive a contract
        #
        # @param params [MetronomeSDK::Models::V1::ContractArchiveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :contract_id ID of the contract to archive
        #
        #   @option params [String] :customer_id ID of the customer whose contract is to be archived
        #
        #   @option params [Boolean] :void_invoices If false, the existing finalized invoices will remain after the contract is
        #     archived.
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::ContractArchiveResponse]
        #
        def archive(params)
          parsed, options = MetronomeSDK::Models::V1::ContractArchiveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/archive",
            body: parsed,
            model: MetronomeSDK::Models::V1::ContractArchiveResponse,
            options: options
          )
        end

        # Creates historical usage invoices for a contract
        #
        # @param params [MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice>] :invoices
        #
        #   @option params [Boolean] :preview
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesResponse]
        #
        def create_historical_invoices(params)
          parsed, options = MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/createHistoricalInvoices",
            body: parsed,
            model: MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesResponse,
            options: options
          )
        end

        # List balances (commits and credits).
        #
        # @param params [MetronomeSDK::Models::V1::ContractListBalancesParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :customer_id
        #
        #   @option params [String] :id
        #
        #   @option params [Time] :covering_date Return only balances that have access schedules that "cover" the provided date
        #
        #   @option params [Time] :effective_before Include only balances that have any access before the provided date (exclusive)
        #
        #   @option params [Boolean] :include_archived Include archived credits and credits from archived contracts.
        #
        #   @option params [Boolean] :include_balance Include the balance of credits and commits in the response. Setting this flag
        #     may cause the query to be slower.
        #
        #   @option params [Boolean] :include_contract_balances Include balances on the contract level.
        #
        #   @option params [Boolean] :include_ledgers Include ledgers in the response. Setting this flag may cause the query to be
        #     slower.
        #
        #   @option params [String] :next_page The next page token from a previous response.
        #
        #   @option params [Time] :starting_at Include only balances that have any access on or after the provided date
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::ContractListBalancesResponse]
        #
        def list_balances(params)
          parsed, options = MetronomeSDK::Models::V1::ContractListBalancesParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/customerBalances/list",
            body: parsed,
            model: MetronomeSDK::Models::V1::ContractListBalancesResponse,
            options: options
          )
        end

        # Get the rate schedule for the rate card on a given contract.
        #
        # @param params [MetronomeSDK::Models::V1::ContractRetrieveRateScheduleParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :contract_id Body param: ID of the contract to get the rate schedule for.
        #
        #   @option params [String] :customer_id Body param: ID of the customer for whose contract to get the rate schedule for.
        #
        #   @option params [Integer] :limit Query param: Max number of results that should be returned
        #
        #   @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
        #
        #   @option params [Time] :at Body param: optional timestamp which overlaps with the returned rate schedule
        #     segments. When not specified, the current timestamp will be used.
        #
        #   @option params [Array<MetronomeSDK::Models::V1::ContractRetrieveRateScheduleParams::Selector>] :selectors Body param: List of rate selectors, rates matching ANY of the selectors will be
        #     included in the response. Passing no selectors will result in all rates being
        #     returned.
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse]
        #
        def retrieve_rate_schedule(params)
          parsed, options = MetronomeSDK::Models::V1::ContractRetrieveRateScheduleParams.dump_request(params)
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

        # Create a new scheduled invoice for Professional Services terms on a contract.
        #   This endpoint's availability is dependent on your client's configuration.
        #
        # @param params [MetronomeSDK::Models::V1::ContractScheduleProServicesInvoiceParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :contract_id
        #
        #   @option params [String] :customer_id
        #
        #   @option params [Time] :issued_at The date the invoice is issued
        #
        #   @option params [Array<MetronomeSDK::Models::V1::ContractScheduleProServicesInvoiceParams::LineItem>] :line_items Each line requires an amount or both unit_price and quantity.
        #
        #   @option params [Time] :netsuite_invoice_header_end The end date of the invoice header in Netsuite
        #
        #   @option params [Time] :netsuite_invoice_header_start The start date of the invoice header in Netsuite
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::ContractScheduleProServicesInvoiceResponse]
        #
        def schedule_pro_services_invoice(params)
          parsed, options = MetronomeSDK::Models::V1::ContractScheduleProServicesInvoiceParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/scheduleProServicesInvoice",
            body: parsed,
            model: MetronomeSDK::Models::V1::ContractScheduleProServicesInvoiceResponse,
            options: options
          )
        end

        # Set usage filter for a contract
        #
        # @param params [MetronomeSDK::Models::V1::ContractSetUsageFilterParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :contract_id
        #
        #   @option params [String] :customer_id
        #
        #   @option params [String] :group_key
        #
        #   @option params [Array<String>] :group_values
        #
        #   @option params [Time] :starting_at
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        #
        def set_usage_filter(params)
          parsed, options = MetronomeSDK::Models::V1::ContractSetUsageFilterParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/setUsageFilter",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Update the end date of a contract
        #
        # @param params [MetronomeSDK::Models::V1::ContractUpdateEndDateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :contract_id ID of the contract to update
        #
        #   @option params [String] :customer_id ID of the customer whose contract is to be updated
        #
        #   @option params [Boolean] :allow_ending_before_finalized_invoice If true, allows setting the contract end date earlier than the end_timestamp of
        #     existing finalized invoices. Finalized invoices will be unchanged; if you want
        #     to incorporate the new end date, you can void and regenerate finalized usage
        #     invoices. Defaults to true.
        #
        #   @option params [Time] :ending_before RFC 3339 timestamp indicating when the contract will end (exclusive). If not
        #     provided, the contract will be updated to be open-ended.
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::ContractUpdateEndDateResponse]
        #
        def update_end_date(params)
          parsed, options = MetronomeSDK::Models::V1::ContractUpdateEndDateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/updateEndDate",
            body: parsed,
            model: MetronomeSDK::Models::V1::ContractUpdateEndDateResponse,
            options: options
          )
        end

        # @param client [MetronomeSDK::Client]
        #
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
