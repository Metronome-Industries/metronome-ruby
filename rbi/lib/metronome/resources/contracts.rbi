# typed: strong

module Metronome
  module Resources
    class Contracts
      sig { returns(Metronome::Resources::Contracts::Products) }
      def products
      end

      sig { returns(Metronome::Resources::Contracts::RateCards) }
      def rate_cards
      end

      sig { returns(Metronome::Resources::Contracts::NamedSchedules) }
      def named_schedules
      end

      sig do
        params(
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
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Metronome::Models::ContractCreateResponse)
      end
      def create(
        customer_id:,
        starting_at:,
        billing_provider_configuration: nil,
        commits: nil,
        credits: nil,
        custom_fields: nil,
        discounts: nil,
        ending_before: nil,
        multiplier_override_prioritization: nil,
        name: nil,
        net_payment_terms_days: nil,
        netsuite_sales_order_id: nil,
        overrides: nil,
        professional_services: nil,
        rate_card_alias: nil,
        rate_card_id: nil,
        recurring_commits: nil,
        recurring_credits: nil,
        reseller_royalties: nil,
        salesforce_opportunity_id: nil,
        scheduled_charges: nil,
        scheduled_charges_on_usage_invoices: nil,
        total_contract_value: nil,
        transition: nil,
        uniqueness_key: nil,
        usage_filter: nil,
        usage_statement_schedule: nil,
        request_options: {}
      )
      end

      sig do
        params(
          contract_id: String,
          customer_id: String,
          include_balance: T::Boolean,
          include_ledgers: T::Boolean,
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Metronome::Models::ContractRetrieveResponse)
      end
      def retrieve(
        contract_id:,
        customer_id:,
        include_balance: nil,
        include_ledgers: nil,
        request_options: {}
      )
      end

      sig do
        params(
          customer_id: String,
          covering_date: Time,
          include_archived: T::Boolean,
          include_balance: T::Boolean,
          include_ledgers: T::Boolean,
          starting_at: Time,
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Metronome::Models::ContractListResponse)
      end
      def list(
        customer_id:,
        covering_date: nil,
        include_archived: nil,
        include_balance: nil,
        include_ledgers: nil,
        starting_at: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          amount: Float,
          customer_id: String,
          reason: String,
          segment_id: String,
          contract_id: String,
          timestamp: Time,
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .void
      end
      def add_manual_balance_entry(
        id:,
        amount:,
        customer_id:,
        reason:,
        segment_id:,
        contract_id: nil,
        timestamp: nil,
        request_options: {}
      )
      end

      sig do
        params(
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
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Metronome::Models::ContractAmendResponse)
      end
      def amend(
        contract_id:,
        customer_id:,
        starting_at:,
        commits: nil,
        credits: nil,
        custom_fields: nil,
        discounts: nil,
        netsuite_sales_order_id: nil,
        overrides: nil,
        professional_services: nil,
        reseller_royalties: nil,
        salesforce_opportunity_id: nil,
        scheduled_charges: nil,
        total_contract_value: nil,
        request_options: {}
      )
      end

      sig do
        params(
          contract_id: String,
          customer_id: String,
          void_invoices: T::Boolean,
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Metronome::Models::ContractArchiveResponse)
      end
      def archive(contract_id:, customer_id:, void_invoices:, request_options: {})
      end

      sig do
        params(
          invoices: T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice],
          preview: T::Boolean,
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Metronome::Models::ContractCreateHistoricalInvoicesResponse)
      end
      def create_historical_invoices(invoices:, preview:, request_options: {})
      end

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
          next_page: String,
          starting_at: Time,
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Metronome::Models::ContractListBalancesResponse)
      end
      def list_balances(
        customer_id:,
        id: nil,
        covering_date: nil,
        effective_before: nil,
        include_archived: nil,
        include_balance: nil,
        include_contract_balances: nil,
        include_ledgers: nil,
        next_page: nil,
        starting_at: nil,
        request_options: {}
      )
      end

      sig do
        params(
          contract_id: String,
          customer_id: String,
          limit: Integer,
          next_page: String,
          at: Time,
          selectors: T::Array[Metronome::Models::ContractRetrieveRateScheduleParams::Selector],
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Metronome::Models::ContractRetrieveRateScheduleResponse)
      end
      def retrieve_rate_schedule(
        contract_id:,
        customer_id:,
        limit: nil,
        next_page: nil,
        at: nil,
        selectors: nil,
        request_options: {}
      )
      end

      sig do
        params(
          contract_id: String,
          customer_id: String,
          issued_at: Time,
          line_items: T::Array[Metronome::Models::ContractScheduleProServicesInvoiceParams::LineItem],
          netsuite_invoice_header_end: Time,
          netsuite_invoice_header_start: Time,
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Metronome::Models::ContractScheduleProServicesInvoiceResponse)
      end
      def schedule_pro_services_invoice(
        contract_id:,
        customer_id:,
        issued_at:,
        line_items:,
        netsuite_invoice_header_end: nil,
        netsuite_invoice_header_start: nil,
        request_options: {}
      )
      end

      sig do
        params(
          contract_id: String,
          customer_id: String,
          group_key: String,
          group_values: T::Array[String],
          starting_at: Time,
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .void
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

      sig do
        params(
          contract_id: String,
          customer_id: String,
          allow_ending_before_finalized_invoice: T::Boolean,
          ending_before: Time,
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Metronome::Models::ContractUpdateEndDateResponse)
      end
      def update_end_date(
        contract_id:,
        customer_id:,
        allow_ending_before_finalized_invoice: nil,
        ending_before: nil,
        request_options: {}
      )
      end

      sig { params(client: Metronome::Client).void }
      def initialize(client:)
      end
    end
  end
end
