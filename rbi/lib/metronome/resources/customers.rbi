# typed: strong

module Metronome
  module Resources
    class Customers
      sig { returns(Metronome::Resources::Customers::Alerts) }
      attr_reader :alerts

      sig { returns(Metronome::Resources::Customers::Plans) }
      attr_reader :plans

      sig { returns(Metronome::Resources::Customers::Invoices) }
      attr_reader :invoices

      sig { returns(Metronome::Resources::Customers::BillingConfig) }
      attr_reader :billing_config

      sig { returns(Metronome::Resources::Customers::Commits) }
      attr_reader :commits

      sig { returns(Metronome::Resources::Customers::Credits) }
      attr_reader :credits

      sig { returns(Metronome::Resources::Customers::NamedSchedules) }
      attr_reader :named_schedules

      sig do
        params(
          name: String,
          billing_config: Metronome::Models::CustomerCreateParams::BillingConfig,
          custom_fields: T::Hash[Symbol, String],
          customer_billing_provider_configurations: T::Array[Metronome::Models::CustomerCreateParams::CustomerBillingProviderConfiguration],
          external_id: String,
          ingest_aliases: T::Array[String],
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::CustomerCreateResponse)
      end
      def create(
        name:,
        billing_config:,
        custom_fields:,
        customer_billing_provider_configurations:,
        external_id:,
        ingest_aliases:,
        request_options: {}
      ); end

      sig do
        params(
          customer_id: String,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::CustomerRetrieveResponse)
      end
      def retrieve(customer_id:, request_options: {}); end

      sig do
        params(
          customer_ids: T::Array[String],
          ingest_alias: String,
          limit: Integer,
          next_page: String,
          only_archived: T::Boolean,
          salesforce_account_ids: T::Array[String],
          request_options: Metronome::RequestOpts
        ).returns(Metronome::CursorPage[Metronome::Models::CustomerDetail])
      end
      def list(
        customer_ids:,
        ingest_alias:,
        limit:,
        next_page:,
        only_archived:,
        salesforce_account_ids:,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::CustomerArchiveResponse)
      end
      def archive(id:, request_options: {}); end

      sig do
        params(
          customer_id: String,
          include_archived: T::Boolean,
          limit: Integer,
          next_page: String,
          on_current_plan: T::Boolean,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::CursorPage[Metronome::Models::CustomerListBillableMetricsResponse])
      end
      def list_billable_metrics(
        customer_id:,
        include_archived:,
        limit:,
        next_page:,
        on_current_plan:,
        request_options: {}
      )
      end

      sig do
        params(
          customer_id: String,
          ending_before: Time,
          starting_on: Time,
          limit: Integer,
          next_page: String,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::CursorPage[Metronome::Models::CustomerListCostsResponse])
      end
      def list_costs(customer_id:, ending_before:, starting_on:, limit:, next_page:, request_options: {}); end

      sig do
        params(
          customer_id: String,
          ingest_aliases: T::Array[String],
          request_options: Metronome::RequestOpts
        ).void
      end
      def set_ingest_aliases(customer_id:, ingest_aliases:, request_options: {}); end

      sig do
        params(
          customer_id: String,
          name: String,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::CustomerSetNameResponse)
      end
      def set_name(customer_id:, name:, request_options: {}); end

      sig do
        params(
          customer_id: String,
          leave_stripe_invoices_in_draft: T.nilable(T::Boolean),
          salesforce_account_id: T.nilable(String),
          request_options: Metronome::RequestOpts
        ).void
      end
      def update_config(
        customer_id:,
        leave_stripe_invoices_in_draft:,
        salesforce_account_id:,
        request_options: {}
      )
      end

      sig { params(client: Metronome::Client).void }
      def initialize(client:); end
    end
  end
end
