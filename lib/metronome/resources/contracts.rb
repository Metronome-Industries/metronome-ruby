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

      # @param client [Metronome::Client]
      def initialize(client:)
        @client = client
        @products = Metronome::Resources::Contracts::Products.new(client: client)
        @rate_cards = Metronome::Resources::Contracts::RateCards.new(client: client)
        @named_schedules = Metronome::Resources::Contracts::NamedSchedules.new(client: client)
      end

      # Create a new contract
      #
      # @param params [Hash{Symbol => Object}, Metronome::Models::ContractCreateParams] Attributes to send in this request.
      #
      #   @option params [String] :customer_id
      #
      #   @option params [Time] :starting_at inclusive contract start time
      #
      #   @option params [Metronome::Models::ContractCreateParams::BillingProviderConfiguration, nil] :billing_provider_configuration The billing provider configuration associated with a contract.
      #
      #   @option params [Array<Metronome::Models::ContractCreateParams::Commit>, nil] :commits
      #
      #   @option params [Array<Metronome::Models::ContractCreateParams::Credit>, nil] :credits
      #
      #   @option params [Hash{Symbol => String}, nil] :custom_fields
      #
      #   @option params [Array<Metronome::Models::ContractCreateParams::Discount>, nil] :discounts This field's availability is dependent on your client's configuration.
      #
      #   @option params [Time, nil] :ending_before exclusive contract end time
      #
      #   @option params [Symbol, Metronome::Models::ContractCreateParams::MultiplierOverridePrioritization, nil] :multiplier_override_prioritization Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
      #     prices automatically. EXPLICIT prioritization requires specifying priorities for
      #     each multiplier; the one with the lowest priority value will be prioritized
      #     first. If tiered overrides are used, prioritization must be explicit.
      #
      #   @option params [String, nil] :name
      #
      #   @option params [Float, nil] :net_payment_terms_days
      #
      #   @option params [String, nil] :netsuite_sales_order_id This field's availability is dependent on your client's configuration.
      #
      #   @option params [Array<Metronome::Models::ContractCreateParams::Override>, nil] :overrides
      #
      #   @option params [Array<Metronome::Models::ContractCreateParams::ProfessionalService>, nil] :professional_services This field's availability is dependent on your client's configuration.
      #
      #   @option params [String, nil] :rate_card_alias Selects the rate card linked to the specified alias as of the contract's start
      #     date.
      #
      #   @option params [String, nil] :rate_card_id
      #
      #   @option params [Array<Metronome::Models::ContractCreateParams::ResellerRoyalty>, nil] :reseller_royalties This field's availability is dependent on your client's configuration.
      #
      #   @option params [String, nil] :salesforce_opportunity_id This field's availability is dependent on your client's configuration.
      #
      #   @option params [Array<Metronome::Models::ContractCreateParams::ScheduledCharge>, nil] :scheduled_charges
      #
      #   @option params [Float, nil] :total_contract_value This field's availability is dependent on your client's configuration.
      #
      #   @option params [Metronome::Models::ContractCreateParams::Transition, nil] :transition
      #
      #   @option params [String, nil] :uniqueness_key Prevents the creation of duplicates. If a request to create a record is made
      #     with a previously used uniqueness key, a new record will not be created and the
      #     request will fail with a 409 error.
      #
      #   @option params [Metronome::Models::BaseUsageFilter, nil] :usage_filter
      #
      #   @option params [Metronome::Models::ContractCreateParams::UsageStatementSchedule, nil] :usage_statement_schedule
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::ContractCreateResponse]
      def create(params = {}, opts = {})
        parsed = Metronome::Models::ContractCreateParams.dump(params)
        req = {
          method: :post,
          path: "/contracts/create",
          body: parsed,
          model: Metronome::Models::ContractCreateResponse
        }
        @client.request(req, opts)
      end

      # Get a specific contract
      #
      # @param params [Hash{Symbol => Object}, Metronome::Models::ContractRetrieveParams] Attributes to send in this request.
      #
      #   @option params [String] :contract_id
      #
      #   @option params [String] :customer_id
      #
      #   @option params [Boolean, nil] :include_ledgers Include commit ledgers in the response. Setting this flag may cause the query to
      #     be slower.
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::ContractRetrieveResponse]
      def retrieve(params = {}, opts = {})
        parsed = Metronome::Models::ContractRetrieveParams.dump(params)
        req = {
          method: :post,
          path: "/contracts/get",
          body: parsed,
          model: Metronome::Models::ContractRetrieveResponse
        }
        @client.request(req, opts)
      end

      # List all contracts for a customer
      #
      # @param params [Hash{Symbol => Object}, Metronome::Models::ContractListParams] Attributes to send in this request.
      #
      #   @option params [String] :customer_id
      #
      #   @option params [Time, nil] :covering_date Optional RFC 3339 timestamp. If provided, the response will include only
      #     contracts effective on the provided date. This cannot be provided if the
      #     starting_at filter is provided.
      #
      #   @option params [Boolean, nil] :include_archived Include archived contracts in the response
      #
      #   @option params [Boolean, nil] :include_ledgers Include commit ledgers in the response. Setting this flag may cause the query to
      #     be slower.
      #
      #   @option params [Time, nil] :starting_at Optional RFC 3339 timestamp. If provided, the response will include only
      #     contracts where effective_at is on or after the provided date. This cannot be
      #     provided if the covering_date filter is provided.
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::ContractListResponse]
      def list(params = {}, opts = {})
        parsed = Metronome::Models::ContractListParams.dump(params)
        req = {
          method: :post,
          path: "/contracts/list",
          body: parsed,
          model: Metronome::Models::ContractListResponse
        }
        @client.request(req, opts)
      end

      # Add a manual balance entry
      #
      # @param params [Hash{Symbol => Object}, Metronome::Models::ContractAddManualBalanceEntryParams] Attributes to send in this request.
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
      #   @option params [String, nil] :contract_id ID of the contract to update. Leave blank to update a customer level balance.
      #
      #   @option params [Time, nil] :timestamp RFC 3339 timestamp indicating when the manual adjustment takes place. If not
      #     provided, it will default to the start of the segment.
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def add_manual_balance_entry(params = {}, opts = {})
        parsed = Metronome::Models::ContractAddManualBalanceEntryParams.dump(params)
        req = {
          method: :post,
          path: "/contracts/addManualBalanceLedgerEntry",
          body: parsed,
          model: NilClass
        }
        @client.request(req, opts)
      end

      # Amend a contract
      #
      # @param params [Hash{Symbol => Object}, Metronome::Models::ContractAmendParams] Attributes to send in this request.
      #
      #   @option params [String] :contract_id ID of the contract to amend
      #
      #   @option params [String] :customer_id ID of the customer whose contract is to be amended
      #
      #   @option params [Time] :starting_at inclusive start time for the amendment
      #
      #   @option params [Array<Metronome::Models::ContractAmendParams::Commit>, nil] :commits
      #
      #   @option params [Array<Metronome::Models::ContractAmendParams::Credit>, nil] :credits
      #
      #   @option params [Hash{Symbol => String}, nil] :custom_fields
      #
      #   @option params [Array<Metronome::Models::ContractAmendParams::Discount>, nil] :discounts This field's availability is dependent on your client's configuration.
      #
      #   @option params [String, nil] :netsuite_sales_order_id This field's availability is dependent on your client's configuration.
      #
      #   @option params [Array<Metronome::Models::ContractAmendParams::Override>, nil] :overrides
      #
      #   @option params [Array<Metronome::Models::ContractAmendParams::ProfessionalService>, nil] :professional_services This field's availability is dependent on your client's configuration.
      #
      #   @option params [Array<Metronome::Models::ContractAmendParams::ResellerRoyalty>, nil] :reseller_royalties This field's availability is dependent on your client's configuration.
      #
      #   @option params [String, nil] :salesforce_opportunity_id This field's availability is dependent on your client's configuration.
      #
      #   @option params [Array<Metronome::Models::ContractAmendParams::ScheduledCharge>, nil] :scheduled_charges
      #
      #   @option params [Float, nil] :total_contract_value This field's availability is dependent on your client's configuration.
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::ContractAmendResponse]
      def amend(params = {}, opts = {})
        parsed = Metronome::Models::ContractAmendParams.dump(params)
        req = {
          method: :post,
          path: "/contracts/amend",
          body: parsed,
          model: Metronome::Models::ContractAmendResponse
        }
        @client.request(req, opts)
      end

      # Archive a contract
      #
      # @param params [Hash{Symbol => Object}, Metronome::Models::ContractArchiveParams] Attributes to send in this request.
      #
      #   @option params [String] :contract_id ID of the contract to archive
      #
      #   @option params [String] :customer_id ID of the customer whose contract is to be archived
      #
      #   @option params [Boolean] :void_invoices If false, the existing finalized invoices will remain after the contract is
      #     archived.
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::ContractArchiveResponse]
      def archive(params = {}, opts = {})
        parsed = Metronome::Models::ContractArchiveParams.dump(params)
        req = {
          method: :post,
          path: "/contracts/archive",
          body: parsed,
          model: Metronome::Models::ContractArchiveResponse
        }
        @client.request(req, opts)
      end

      # Creates historical usage invoices for a contract
      #
      # @param params [Hash{Symbol => Object}, Metronome::Models::ContractCreateHistoricalInvoicesParams] Attributes to send in this request.
      #
      #   @option params [Array<Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice>] :invoices
      #
      #   @option params [Boolean] :preview
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::ContractCreateHistoricalInvoicesResponse]
      def create_historical_invoices(params = {}, opts = {})
        parsed = Metronome::Models::ContractCreateHistoricalInvoicesParams.dump(params)
        req = {
          method: :post,
          path: "/contracts/createHistoricalInvoices",
          body: parsed,
          model: Metronome::Models::ContractCreateHistoricalInvoicesResponse
        }
        @client.request(req, opts)
      end

      # List balances (commits and credits).
      #
      # @param params [Hash{Symbol => Object}, Metronome::Models::ContractListBalancesParams] Attributes to send in this request.
      #
      #   @option params [String] :customer_id
      #
      #   @option params [String, nil] :id
      #
      #   @option params [Time, nil] :covering_date Return only balances that have access schedules that "cover" the provided date
      #
      #   @option params [Time, nil] :effective_before Include only balances that have any access before the provided date (exclusive)
      #
      #   @option params [Boolean, nil] :include_archived Include credits from archived contracts.
      #
      #   @option params [Boolean, nil] :include_contract_balances Include balances on the contract level.
      #
      #   @option params [Boolean, nil] :include_ledgers Include ledgers in the response. Setting this flag may cause the query to be
      #     slower.
      #
      #   @option params [String, nil] :next_page The next page token from a previous response.
      #
      #   @option params [Time, nil] :starting_at Include only balances that have any access on or after the provided date
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::ContractListBalancesResponse]
      def list_balances(params = {}, opts = {})
        parsed = Metronome::Models::ContractListBalancesParams.dump(params)
        req = {
          method: :post,
          path: "/contracts/customerBalances/list",
          body: parsed,
          model: Metronome::Models::ContractListBalancesResponse
        }
        @client.request(req, opts)
      end

      # Get the rate schedule for the rate card on a given contract.
      #
      # @param params [Hash{Symbol => Object}, Metronome::Models::ContractRetrieveRateScheduleParams] Attributes to send in this request.
      #
      #   @option params [String] :contract_id Body param: ID of the contract to get the rate schedule for.
      #
      #   @option params [String] :customer_id Body param: ID of the customer for whose contract to get the rate schedule for.
      #
      #   @option params [Integer, nil] :limit Query param: Max number of results that should be returned
      #
      #   @option params [String, nil] :next_page Query param: Cursor that indicates where the next page of results should start.
      #
      #   @option params [Time, nil] :at Body param: optional timestamp which overlaps with the returned rate schedule
      #     segments. When not specified, the current timestamp will be used.
      #
      #   @option params [Array<Metronome::Models::ContractRetrieveRateScheduleParams::Selector>, nil] :selectors Body param: List of rate selectors, rates matching ANY of the selectors will be
      #     included in the response. Passing no selectors will result in all rates being
      #     returned.
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::ContractRetrieveRateScheduleResponse]
      def retrieve_rate_schedule(params = {}, opts = {})
        parsed = Metronome::Models::ContractRetrieveRateScheduleParams.dump(params)
        query_params = [:limit, :next_page]
        req = {
          method: :post,
          path: "/contracts/getContractRateSchedule",
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: Metronome::Models::ContractRetrieveRateScheduleResponse
        }
        @client.request(req, opts)
      end

      # Create a new scheduled invoice for Professional Services terms on a contract.
      #   This endpoint's availability is dependent on your client's configuration.
      #
      # @param params [Hash{Symbol => Object}, Metronome::Models::ContractScheduleProServicesInvoiceParams] Attributes to send in this request.
      #
      #   @option params [String] :contract_id
      #
      #   @option params [String] :customer_id
      #
      #   @option params [Time] :issued_at The date the invoice is issued
      #
      #   @option params [Array<Metronome::Models::ContractScheduleProServicesInvoiceParams::LineItem>] :line_items Each line requires an amount or both unit_price and quantity.
      #
      #   @option params [Time, nil] :netsuite_invoice_header_end The end date of the invoice header in Netsuite
      #
      #   @option params [Time, nil] :netsuite_invoice_header_start The start date of the invoice header in Netsuite
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::ContractScheduleProServicesInvoiceResponse]
      def schedule_pro_services_invoice(params = {}, opts = {})
        parsed = Metronome::Models::ContractScheduleProServicesInvoiceParams.dump(params)
        req = {
          method: :post,
          path: "/contracts/scheduleProServicesInvoice",
          body: parsed,
          model: Metronome::Models::ContractScheduleProServicesInvoiceResponse
        }
        @client.request(req, opts)
      end

      # Set usage filter for a contract
      #
      # @param params [Hash{Symbol => Object}, Metronome::Models::ContractSetUsageFilterParams] Attributes to send in this request.
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
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def set_usage_filter(params = {}, opts = {})
        parsed = Metronome::Models::ContractSetUsageFilterParams.dump(params)
        req = {
          method: :post,
          path: "/contracts/setUsageFilter",
          body: parsed,
          model: NilClass
        }
        @client.request(req, opts)
      end

      # Update the end date of a contract
      #
      # @param params [Hash{Symbol => Object}, Metronome::Models::ContractUpdateEndDateParams] Attributes to send in this request.
      #
      #   @option params [String] :contract_id ID of the contract to update
      #
      #   @option params [String] :customer_id ID of the customer whose contract is to be updated
      #
      #   @option params [Time, nil] :ending_before RFC 3339 timestamp indicating when the contract will end (exclusive). If not
      #     provided, the contract will be updated to be open-ended.
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::ContractUpdateEndDateResponse]
      def update_end_date(params = {}, opts = {})
        parsed = Metronome::Models::ContractUpdateEndDateParams.dump(params)
        req = {
          method: :post,
          path: "/contracts/updateEndDate",
          body: parsed,
          model: Metronome::Models::ContractUpdateEndDateResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
