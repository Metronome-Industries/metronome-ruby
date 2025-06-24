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
        # Create a new contract
        #
        # @overload create(customer_id:, starting_at:, billing_provider_configuration: nil, commits: nil, credits: nil, custom_fields: nil, discounts: nil, ending_before: nil, multiplier_override_prioritization: nil, name: nil, net_payment_terms_days: nil, netsuite_sales_order_id: nil, overrides: nil, prepaid_balance_threshold_configuration: nil, professional_services: nil, rate_card_alias: nil, rate_card_id: nil, recurring_commits: nil, recurring_credits: nil, reseller_royalties: nil, salesforce_opportunity_id: nil, scheduled_charges: nil, scheduled_charges_on_usage_invoices: nil, spend_threshold_configuration: nil, subscriptions: nil, total_contract_value: nil, transition: nil, uniqueness_key: nil, usage_filter: nil, usage_statement_schedule: nil, request_options: {})
        #
        # @param customer_id [String]
        #
        # @param starting_at [Time] inclusive contract start time
        #
        # @param billing_provider_configuration [MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration] The billing provider configuration associated with a contract.
        #
        # @param commits [Array<MetronomeSDK::Models::V1::ContractCreateParams::Commit>]
        #
        # @param credits [Array<MetronomeSDK::Models::V1::ContractCreateParams::Credit>]
        #
        # @param custom_fields [Hash{Symbol=>String}]
        #
        # @param discounts [Array<MetronomeSDK::Models::V1::ContractCreateParams::Discount>] This field's availability is dependent on your client's configuration.
        #
        # @param ending_before [Time] exclusive contract end time
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
        # @param prepaid_balance_threshold_configuration [MetronomeSDK::Models::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration]
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
        # @param spend_threshold_configuration [MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration]
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
        # This is the v1 endpoint to list all contracts for a customer. New clients should
        # implement using the v2 endpoint.
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
        # Add a manual balance entry
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
        # using the editContract endpoint. Read more about the migration to contract
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
        # @param custom_fields [Hash{Symbol=>String}]
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
        # Archive a contract
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

        # Creates historical usage invoices for a contract
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
        # {MetronomeSDK::Models::V1::ContractListBalancesParams} for more details.
        #
        # List balances (commits and credits).
        #
        # @overload list_balances(customer_id:, id: nil, covering_date: nil, effective_before: nil, include_archived: nil, include_balance: nil, include_contract_balances: nil, include_ledgers: nil, next_page: nil, starting_at: nil, request_options: {})
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
        # @param next_page [String] The next page token from a previous response.
        #
        # @param starting_at [Time] Include only balances that have any access on or after the provided date
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::ContractListBalancesResponse]
        #
        # @see MetronomeSDK::Models::V1::ContractListBalancesParams
        def list_balances(params)
          parsed, options = MetronomeSDK::V1::ContractListBalancesParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/contracts/customerBalances/list",
            body: parsed,
            model: MetronomeSDK::Models::V1::ContractListBalancesResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::ContractRetrieveRateScheduleParams} for more details.
        #
        # Get the rate schedule for the rate card on a given contract.
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

        # Fetch the quantity and price for a subscription over time. End-point does not
        # return future scheduled changes.
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

        # Set usage filter for a contract
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
        # Update the end date of a contract
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
