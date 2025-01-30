# typed: strong

module Metronome
  module Resources
    class Contracts
      sig { returns(Metronome::Resources::Contracts::Products) }
      attr_reader :products

      sig { returns(Metronome::Resources::Contracts::RateCards) }
      attr_reader :rate_cards

      sig { returns(Metronome::Resources::Contracts::NamedSchedules) }
      attr_reader :named_schedules

      sig do
        params(
          params: T.any(Metronome::Models::ContractCreateParams, T::Hash[Symbol, T.anything]),
          customer_id: String,
          starting_at: Time,
          billing_provider_configuration: Metronome::Models::ContractCreateParams::BillingProviderConfiguration,
          commits: T::Array[Metronome::Models::ContractCreateParams::Commit],
          credits: T::Array[Metronome::Models::ContractCreateParams::Credit],
          custom_fields: T::Hash[Symbol, String],
          discounts: T::Array[Metronome::Models::ContractCreateParams::Discount],
          ending_before: Time,
          multiplier_override_prioritization: Symbol,
          name: String,
          net_payment_terms_days: Float,
          netsuite_sales_order_id: String,
          overrides: T::Array[Metronome::Models::ContractCreateParams::Override],
          professional_services: T::Array[Metronome::Models::ContractCreateParams::ProfessionalService],
          rate_card_alias: String,
          rate_card_id: String,
          recurring_commits: T::Array[Metronome::Models::ContractCreateParams::RecurringCommit],
          recurring_credits: T::Array[Metronome::Models::ContractCreateParams::RecurringCredit],
          reseller_royalties: T::Array[Metronome::Models::ContractCreateParams::ResellerRoyalty],
          salesforce_opportunity_id: String,
          scheduled_charges: T::Array[Metronome::Models::ContractCreateParams::ScheduledCharge],
          scheduled_charges_on_usage_invoices: Symbol,
          total_contract_value: Float,
          transition: Metronome::Models::ContractCreateParams::Transition,
          uniqueness_key: String,
          usage_filter: Metronome::Models::BaseUsageFilter,
          usage_statement_schedule: Metronome::Models::ContractCreateParams::UsageStatementSchedule,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::ContractCreateResponse)
      end
      def create(
        params,
        customer_id:,
        starting_at:,
        billing_provider_configuration:,
        commits:,
        credits:,
        custom_fields:,
        discounts:,
        ending_before:,
        multiplier_override_prioritization:,
        name:,
        net_payment_terms_days:,
        netsuite_sales_order_id:,
        overrides:,
        professional_services:,
        rate_card_alias:,
        rate_card_id:,
        recurring_commits:,
        recurring_credits:,
        reseller_royalties:,
        salesforce_opportunity_id:,
        scheduled_charges:,
        scheduled_charges_on_usage_invoices:,
        total_contract_value:,
        transition:,
        uniqueness_key:,
        usage_filter:,
        usage_statement_schedule:,
        request_options: {}
      ); end

      sig do
        params(
          params: T.any(Metronome::Models::ContractRetrieveParams, T::Hash[Symbol, T.anything]),
          contract_id: String,
          customer_id: String,
          include_balance: T::Boolean,
          include_ledgers: T::Boolean,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::ContractRetrieveResponse)
      end
      def retrieve(
        params,
        contract_id:,
        customer_id:,
        include_balance:,
        include_ledgers:,
        request_options: {}
      )
      end

      sig do
        params(
          params: T.any(Metronome::Models::ContractListParams, T::Hash[Symbol, T.anything]),
          customer_id: String,
          covering_date: Time,
          include_archived: T::Boolean,
          include_balance: T::Boolean,
          include_ledgers: T::Boolean,
          starting_at: Time,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::ContractListResponse)
      end
      def list(
        params,
        customer_id:,
        covering_date:,
        include_archived:,
        include_balance:,
        include_ledgers:,
        starting_at:,
        request_options: {}
      ); end

      sig do
        params(
          params: T.any(Metronome::Models::ContractAddManualBalanceEntryParams, T::Hash[Symbol, T.anything]),
          id: String,
          amount: Float,
          customer_id: String,
          reason: String,
          segment_id: String,
          contract_id: String,
          timestamp: Time,
          request_options: Metronome::RequestOpts
        ).returns(NilClass)
      end
      def add_manual_balance_entry(
        params,
        id:,
        amount:,
        customer_id:,
        reason:,
        segment_id:,
        contract_id:,
        timestamp:,
        request_options: {}
      )
      end

      sig do
        params(
          params: T.any(Metronome::Models::ContractAmendParams, T::Hash[Symbol, T.anything]),
          contract_id: String,
          customer_id: String,
          starting_at: Time,
          commits: T::Array[Metronome::Models::ContractAmendParams::Commit],
          credits: T::Array[Metronome::Models::ContractAmendParams::Credit],
          custom_fields: T::Hash[Symbol, String],
          discounts: T::Array[Metronome::Models::ContractAmendParams::Discount],
          netsuite_sales_order_id: String,
          overrides: T::Array[Metronome::Models::ContractAmendParams::Override],
          professional_services: T::Array[Metronome::Models::ContractAmendParams::ProfessionalService],
          reseller_royalties: T::Array[Metronome::Models::ContractAmendParams::ResellerRoyalty],
          salesforce_opportunity_id: String,
          scheduled_charges: T::Array[Metronome::Models::ContractAmendParams::ScheduledCharge],
          total_contract_value: Float,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::ContractAmendResponse)
      end
      def amend(
        params,
        contract_id:,
        customer_id:,
        starting_at:,
        commits:,
        credits:,
        custom_fields:,
        discounts:,
        netsuite_sales_order_id:,
        overrides:,
        professional_services:,
        reseller_royalties:,
        salesforce_opportunity_id:,
        scheduled_charges:,
        total_contract_value:,
        request_options: {}
      ); end

      sig do
        params(
          params: T.any(Metronome::Models::ContractArchiveParams, T::Hash[Symbol, T.anything]),
          contract_id: String,
          customer_id: String,
          void_invoices: T::Boolean,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::ContractArchiveResponse)
      end
      def archive(params, contract_id:, customer_id:, void_invoices:, request_options: {}); end

      sig do
        params(
          params: T.any(
            Metronome::Models::ContractCreateHistoricalInvoicesParams,
            T::Hash[Symbol, T.anything]
          ),
          invoices: T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice],
          preview: T::Boolean,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::ContractCreateHistoricalInvoicesResponse)
      end
      def create_historical_invoices(params, invoices:, preview:, request_options: {}); end

      sig do
        params(
          params: T.any(Metronome::Models::ContractListBalancesParams, T::Hash[Symbol, T.anything]),
          customer_id: String,
          id: String,
          covering_date: Time,
          effective_before: Time,
          include_archived: T::Boolean,
          include_balance: T::Boolean,
          include_contract_balances: T::Boolean,
          include_ledgers: T::Boolean,
          next_page: String,
          starting_at: Time,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::ContractListBalancesResponse)
      end
      def list_balances(
        params,
        customer_id:,
        id:,
        covering_date:,
        effective_before:,
        include_archived:,
        include_balance:,
        include_contract_balances:,
        include_ledgers:,
        next_page:,
        starting_at:,
        request_options: {}
      ); end

      sig do
        params(
          params: T.any(Metronome::Models::ContractRetrieveRateScheduleParams, T::Hash[Symbol, T.anything]),
          contract_id: String,
          customer_id: String,
          limit: Integer,
          next_page: String,
          at: Time,
          selectors: T::Array[Metronome::Models::ContractRetrieveRateScheduleParams::Selector],
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::ContractRetrieveRateScheduleResponse)
      end
      def retrieve_rate_schedule(
        params,
        contract_id:,
        customer_id:,
        limit:,
        next_page:,
        at:,
        selectors:,
        request_options: {}
      )
      end

      sig do
        params(
          params: T.any(
            Metronome::Models::ContractScheduleProServicesInvoiceParams,
            T::Hash[Symbol, T.anything]
          ),
          contract_id: String,
          customer_id: String,
          issued_at: Time,
          line_items: T::Array[Metronome::Models::ContractScheduleProServicesInvoiceParams::LineItem],
          netsuite_invoice_header_end: Time,
          netsuite_invoice_header_start: Time,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::ContractScheduleProServicesInvoiceResponse)
      end
      def schedule_pro_services_invoice(
        params,
        contract_id:,
        customer_id:,
        issued_at:,
        line_items:,
        netsuite_invoice_header_end:,
        netsuite_invoice_header_start:,
        request_options: {}
      ); end

      sig do
        params(
          params: T.any(Metronome::Models::ContractSetUsageFilterParams, T::Hash[Symbol, T.anything]),
          contract_id: String,
          customer_id: String,
          group_key: String,
          group_values: T::Array[String],
          starting_at: Time,
          request_options: Metronome::RequestOpts
        ).returns(NilClass)
      end
      def set_usage_filter(
        params,
        contract_id:,
        customer_id:,
        group_key:,
        group_values:,
        starting_at:,
        request_options: {}
      )
      end

      sig do
        params(
          params: T.any(Metronome::Models::ContractUpdateEndDateParams, T::Hash[Symbol, T.anything]),
          contract_id: String,
          customer_id: String,
          allow_ending_before_finalized_invoice: T::Boolean,
          ending_before: Time,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::ContractUpdateEndDateResponse)
      end
      def update_end_date(
        params,
        contract_id:,
        customer_id:,
        allow_ending_before_finalized_invoice:,
        ending_before:,
        request_options: {}
      ); end

      sig { params(client: Metronome::Client).void }
      def initialize(client:); end
    end
  end
end
