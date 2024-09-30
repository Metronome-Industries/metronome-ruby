# frozen_string_literal: true

module Metronome
  module Resources
    class Contracts
      # @return [Metronome::Resources::Contracts::Products]
      attr_reader :products

      # @return [Metronome::Resources::Contracts::RateCards]
      attr_reader :rate_cards

      # @return [Metronome::Resources::Contracts::NamedSchedules]
      attr_reader :named_schedules

      def initialize(client:)
        @client = client
        @products = Metronome::Resources::Contracts::Products.new(client: client)
        @rate_cards = Metronome::Resources::Contracts::RateCards.new(client: client)
        @named_schedules = Metronome::Resources::Contracts::NamedSchedules.new(client: client)
      end

      # Create a new contract
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :customer_id
      # @option params [DateTime] :starting_at inclusive contract start time
      # @option params [BillingProviderConfiguration] :billing_provider_configuration This field's availability is dependent on your client's configuration.
      # @option params [Array<Commit>] :commits
      # @option params [Array<Credit>] :credits
      # @option params [Hash] :custom_fields
      # @option params [Array<Discount>] :discounts This field's availability is dependent on your client's configuration.
      # @option params [DateTime] :ending_before exclusive contract end time
      # @option params [Symbol] :multiplier_override_prioritization Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
      #   prices automatically. EXPLICIT prioritization requires specifying priorities for
      #   each multiplier; the one with the lowest priority value will be prioritized
      #   first. If tiered overrides are used, prioritization must be explicit.
      # @option params [String] :name
      # @option params [Float] :net_payment_terms_days
      # @option params [String] :netsuite_sales_order_id This field's availability is dependent on your client's configuration.
      # @option params [Array<Override>] :overrides
      # @option params [Array<ProfessionalService>] :professional_services This field's availability is dependent on your client's configuration.
      # @option params [String] :rate_card_alias Selects the rate card linked to the specified alias as of the contract's start
      #   date.
      # @option params [String] :rate_card_id
      # @option params [Array<ResellerRoyalty>] :reseller_royalties This field's availability is dependent on your client's configuration.
      # @option params [String] :salesforce_opportunity_id This field's availability is dependent on your client's configuration.
      # @option params [Array<ScheduledCharge>] :scheduled_charges
      # @option params [Float] :total_contract_value This field's availability is dependent on your client's configuration.
      # @option params [Transition] :transition
      # @option params [String] :uniqueness_key Prevents the creation of duplicates. If a request to create a record is made
      #   with a previously used uniqueness key, a new record will not be created and the
      #   request will fail with a 409 error.
      # @option params [Metronome::Models::BaseUsageFilter] :usage_filter
      # @option params [UsageStatementSchedule] :usage_statement_schedule
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::ContractCreateResponse]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/contracts/create"
        req[:body] = params
        req[:model] = Metronome::Models::ContractCreateResponse
        @client.request(req, opts)
      end

      # Get a specific contract
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :contract_id
      # @option params [String] :customer_id
      # @option params [Boolean] :include_ledgers Include commit ledgers in the response. Setting this flag may cause the query to
      #   be slower.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::ContractRetrieveResponse]
      def retrieve(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/contracts/get"
        req[:body] = params
        req[:model] = Metronome::Models::ContractRetrieveResponse
        @client.request(req, opts)
      end

      # List all contracts for a customer
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :customer_id
      # @option params [DateTime] :covering_date Optional RFC 3339 timestamp. If provided, the response will include only
      #   contracts effective on the provided date. This cannot be provided if the
      #   starting_at filter is provided.
      # @option params [Boolean] :include_archived Include archived contracts in the response
      # @option params [Boolean] :include_ledgers Include commit ledgers in the response. Setting this flag may cause the query to
      #   be slower.
      # @option params [DateTime] :starting_at Optional RFC 3339 timestamp. If provided, the response will include only
      #   contracts where effective_at is on or after the provided date. This cannot be
      #   provided if the covering_date filter is provided.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::ContractListResponse]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/contracts/list"
        req[:body] = params
        req[:model] = Metronome::Models::ContractListResponse
        @client.request(req, opts)
      end

      # Add a manual balance entry
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :id ID of the balance (commit or credit) to update.
      # @option params [Float] :amount Amount to add to the segment. A negative number will draw down from the balance.
      # @option params [String] :customer_id ID of the customer whose balance is to be updated.
      # @option params [String] :reason Reason for the manual adjustment. This will be displayed in the ledger.
      # @option params [String] :segment_id ID of the segment to update.
      # @option params [String] :contract_id ID of the contract to update. Leave blank to update a customer level balance.
      # @option params [DateTime] :timestamp RFC 3339 timestamp indicating when the manual adjustment takes place. If not
      #   provided, it will default to the start of the segment.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def add_manual_balance_entry(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/contracts/addManualBalanceLedgerEntry"
        req[:body] = params
        req[:model] = NilClass
        @client.request(req, opts)
      end

      # Amend a contract
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :contract_id ID of the contract to amend
      # @option params [String] :customer_id ID of the customer whose contract is to be amended
      # @option params [DateTime] :starting_at inclusive start time for the amendment
      # @option params [Array<Commit>] :commits
      # @option params [Array<Credit>] :credits
      # @option params [Hash] :custom_fields
      # @option params [Array<Discount>] :discounts This field's availability is dependent on your client's configuration.
      # @option params [String] :netsuite_sales_order_id This field's availability is dependent on your client's configuration.
      # @option params [Array<Override>] :overrides
      # @option params [Array<ProfessionalService>] :professional_services This field's availability is dependent on your client's configuration.
      # @option params [Array<ResellerRoyalty>] :reseller_royalties This field's availability is dependent on your client's configuration.
      # @option params [String] :salesforce_opportunity_id This field's availability is dependent on your client's configuration.
      # @option params [Array<ScheduledCharge>] :scheduled_charges
      # @option params [Float] :total_contract_value This field's availability is dependent on your client's configuration.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::ContractAmendResponse]
      def amend(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/contracts/amend"
        req[:body] = params
        req[:model] = Metronome::Models::ContractAmendResponse
        @client.request(req, opts)
      end

      # Archive a contract
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :contract_id ID of the contract to archive
      # @option params [String] :customer_id ID of the customer whose contract is to be archived
      # @option params [Boolean] :void_invoices If false, the existing finalized invoices will remain after the contract is
      #   archived.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::ContractArchiveResponse]
      def archive(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/contracts/archive"
        req[:body] = params
        req[:model] = Metronome::Models::ContractArchiveResponse
        @client.request(req, opts)
      end

      # Creates historical usage invoices for a contract
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Array<Invoice>] :invoices
      # @option params [Boolean] :preview
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::ContractCreateHistoricalInvoicesResponse]
      def create_historical_invoices(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/contracts/createHistoricalInvoices"
        req[:body] = params
        req[:model] = Metronome::Models::ContractCreateHistoricalInvoicesResponse
        @client.request(req, opts)
      end

      # List balances (commits and credits).
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :customer_id
      # @option params [String] :id
      # @option params [DateTime] :covering_date Return only balances that have access schedules that "cover" the provided date
      # @option params [DateTime] :effective_before Include only balances that have any access before the provided date (exclusive)
      # @option params [Boolean] :include_archived Include credits from archived contracts.
      # @option params [Boolean] :include_contract_balances Include balances on the contract level.
      # @option params [Boolean] :include_ledgers Include ledgers in the response. Setting this flag may cause the query to be
      #   slower.
      # @option params [String] :next_page The next page token from a previous response.
      # @option params [DateTime] :starting_at Include only balances that have any access on or after the provided date
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::ContractListBalancesResponse]
      def list_balances(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/contracts/customerBalances/list"
        req[:body] = params
        req[:model] = Metronome::Models::ContractListBalancesResponse
        @client.request(req, opts)
      end

      # Get the rate schedule for the rate card on a given contract.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :contract_id Body param: ID of the contract to get the rate schedule for.
      # @option params [String] :customer_id Body param: ID of the customer for whose contract to get the rate schedule for.
      # @option params [Integer] :limit Query param: Max number of results that should be returned
      # @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
      # @option params [DateTime] :at Body param: optional timestamp which overlaps with the returned rate schedule
      #   segments. When not specified, the current timestamp will be used.
      # @option params [Array<Selector>] :selectors Body param: List of rate selectors, rates matching ANY of the selectors will be
      #   included in the response. Passing no selectors will result in all rates being
      #   returned.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::ContractRetrieveRateScheduleResponse]
      def retrieve_rate_schedule(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/contracts/getContractRateSchedule"
        query_params = [:limit, :next_page]
        req[:query] = params.slice(*query_params)
        req[:body] = params.except(*query_params)
        req[:model] = Metronome::Models::ContractRetrieveRateScheduleResponse
        @client.request(req, opts)
      end

      # Create a new, scheduled invoice for Professional Services terms on a contract.
      #   This endpoint's availability is dependent on your client's configuration.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :contract_id
      # @option params [String] :customer_id
      # @option params [DateTime] :issued_at The date the invoice is issued
      # @option params [Array<LineItem>] :line_items Each line requires an amount or both unit_price and quantity.
      # @option params [DateTime] :netsuite_invoice_header_end The end date of the invoice header in Netsuite
      # @option params [DateTime] :netsuite_invoice_header_start The start date of the invoice header in Netsuite
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::ContractScheduleProServicesInvoiceResponse]
      def schedule_pro_services_invoice(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/contracts/scheduleProServicesInvoice"
        req[:body] = params
        req[:model] = Metronome::Models::ContractScheduleProServicesInvoiceResponse
        @client.request(req, opts)
      end

      # Set usage filter for a contract
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :contract_id
      # @option params [String] :customer_id
      # @option params [String] :group_key
      # @option params [Array<String>] :group_values
      # @option params [DateTime] :starting_at
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def set_usage_filter(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/contracts/setUsageFilter"
        req[:body] = params
        req[:model] = NilClass
        @client.request(req, opts)
      end

      # Update the end date of a contract
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :contract_id ID of the contract to update
      # @option params [String] :customer_id ID of the customer whose contract is to be updated
      # @option params [DateTime] :ending_before RFC 3339 timestamp indicating when the contract will end (exclusive). If not
      #   provided, the contract will be updated to be open-ended.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::ContractUpdateEndDateResponse]
      def update_end_date(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/contracts/updateEndDate"
        req[:body] = params
        req[:model] = Metronome::Models::ContractUpdateEndDateResponse
        @client.request(req, opts)
      end
    end
  end
end
