# frozen_string_literal: true

module Metronome
  module Resources
    class Customers
      # @return [Metronome::Resources::Customers::Alerts]
      attr_reader :alerts

      # @return [Metronome::Resources::Customers::Plans]
      attr_reader :plans

      # @return [Metronome::Resources::Customers::Invoices]
      attr_reader :invoices

      # @return [Metronome::Resources::Customers::BillingConfig]
      attr_reader :billing_config

      # @return [Metronome::Resources::Customers::Commits]
      attr_reader :commits

      # @return [Metronome::Resources::Customers::Credits]
      attr_reader :credits

      # @return [Metronome::Resources::Customers::NamedSchedules]
      attr_reader :named_schedules

      # Create a new customer
      #
      # @param params [Metronome::Models::CustomerCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :name This will be truncated to 160 characters if the provided name is longer.
      #
      #   @option params [Metronome::Models::CustomerCreateParams::BillingConfig] :billing_config
      #
      #   @option params [Hash{Symbol=>String}] :custom_fields
      #
      #   @option params [Array<Metronome::Models::CustomerCreateParams::CustomerBillingProviderConfiguration>] :customer_billing_provider_configurations
      #
      #   @option params [String] :external_id (deprecated, use ingest_aliases instead) an alias that can be used to refer to
      #     this customer in usage events
      #
      #   @option params [Array<String>] :ingest_aliases Aliases that can be used to refer to this customer in usage events
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Metronome::Models::CustomerCreateResponse]
      #
      def create(params)
        parsed, options = Metronome::Models::CustomerCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "customers",
          body: parsed,
          model: Metronome::Models::CustomerCreateResponse,
          options: options
        )
      end

      # Get a customer by Metronome ID.
      #
      # @param params [Metronome::Models::CustomerRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :customer_id
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Metronome::Models::CustomerRetrieveResponse]
      #
      def retrieve(params)
        parsed, options = Metronome::Models::CustomerRetrieveParams.dump_request(params)
        customer_id = parsed.fetch(:customer_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :get,
          path: ["customers/%0s", customer_id],
          model: Metronome::Models::CustomerRetrieveResponse,
          options: options
        )
      end

      # List all customers.
      #
      # @param params [Metronome::Models::CustomerListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<String>] :customer_ids Filter the customer list by customer_id. Up to 100 ids can be provided.
      #
      #   @option params [String] :ingest_alias Filter the customer list by ingest_alias
      #
      #   @option params [Integer] :limit Max number of results that should be returned
      #
      #   @option params [String] :next_page Cursor that indicates where the next page of results should start.
      #
      #   @option params [Boolean] :only_archived Filter the customer list by only archived customers.
      #
      #   @option params [Array<String>] :salesforce_account_ids Filter the customer list by salesforce_account_id. Up to 100 ids can be
      #     provided.
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Metronome::CursorPage<Metronome::Models::CustomerDetail>]
      #
      def list(params = {})
        parsed, options = Metronome::Models::CustomerListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "customers",
          query: parsed,
          page: Metronome::CursorPage,
          model: Metronome::Models::CustomerDetail,
          options: options
        )
      end

      # Archive a customer
      #
      # @param params [Metronome::Models::CustomerArchiveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :id
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Metronome::Models::CustomerArchiveResponse]
      #
      def archive(params)
        parsed, options = Metronome::Models::CustomerArchiveParams.dump_request(params)
        @client.request(
          method: :post,
          path: "customers/archive",
          body: parsed,
          model: Metronome::Models::CustomerArchiveResponse,
          options: options
        )
      end

      # Get all billable metrics for a given customer.
      #
      # @param params [Metronome::Models::CustomerListBillableMetricsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :customer_id Path param:
      #
      #   @option params [Boolean] :include_archived Query param: If true, the list of returned metrics will include archived metrics
      #
      #   @option params [Integer] :limit Query param: Max number of results that should be returned
      #
      #   @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
      #
      #   @option params [Boolean] :on_current_plan Query param: If true, the list of metrics will be filtered to just ones that are
      #     on the customer's current plan
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Metronome::CursorPage<Metronome::Models::CustomerListBillableMetricsResponse>]
      #
      def list_billable_metrics(params)
        parsed, options = Metronome::Models::CustomerListBillableMetricsParams.dump_request(params)
        customer_id = parsed.fetch(:customer_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :get,
          path: ["customers/%0s/billable-metrics", customer_id],
          query: parsed.except(:customer_id),
          page: Metronome::CursorPage,
          model: Metronome::Models::CustomerListBillableMetricsResponse,
          options: options
        )
      end

      # Fetch daily pending costs for the specified customer, broken down by credit type
      #   and line items. Note: this is not supported for customers whose plan includes a
      #   UNIQUE-type billable metric.
      #
      # @param params [Metronome::Models::CustomerListCostsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :customer_id Path param:
      #
      #   @option params [Time] :ending_before Query param: RFC 3339 timestamp (exclusive)
      #
      #   @option params [Time] :starting_on Query param: RFC 3339 timestamp (inclusive)
      #
      #   @option params [Integer] :limit Query param: Max number of results that should be returned
      #
      #   @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Metronome::CursorPage<Metronome::Models::CustomerListCostsResponse>]
      #
      def list_costs(params)
        parsed, options = Metronome::Models::CustomerListCostsParams.dump_request(params)
        customer_id = parsed.fetch(:customer_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :get,
          path: ["customers/%0s/costs", customer_id],
          query: parsed.except(:customer_id),
          page: Metronome::CursorPage,
          model: Metronome::Models::CustomerListCostsResponse,
          options: options
        )
      end

      # Sets the ingest aliases for a customer. Ingest aliases can be used in the
      #   `customer_id` field when sending usage events to Metronome. This call is
      #   idempotent. It fully replaces the set of ingest aliases for the given customer.
      #
      # @param params [Metronome::Models::CustomerSetIngestAliasesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :customer_id Path param:
      #
      #   @option params [Array<String>] :ingest_aliases Body param:
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [nil]
      #
      def set_ingest_aliases(params)
        parsed, options = Metronome::Models::CustomerSetIngestAliasesParams.dump_request(params)
        customer_id = parsed.fetch(:customer_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :post,
          path: ["customers/%0s/setIngestAliases", customer_id],
          body: parsed.except(:customer_id),
          model: NilClass,
          options: options
        )
      end

      # Updates the specified customer's name.
      #
      # @param params [Metronome::Models::CustomerSetNameParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :customer_id Path param:
      #
      #   @option params [String] :name Body param: The new name for the customer. This will be truncated to 160
      #     characters if the provided name is longer.
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Metronome::Models::CustomerSetNameResponse]
      #
      def set_name(params)
        parsed, options = Metronome::Models::CustomerSetNameParams.dump_request(params)
        customer_id = parsed.fetch(:customer_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :post,
          path: ["customers/%0s/setName", customer_id],
          body: parsed.except(:customer_id),
          model: Metronome::Models::CustomerSetNameResponse,
          options: options
        )
      end

      # Updates the specified customer's config.
      #
      # @param params [Metronome::Models::CustomerUpdateConfigParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :customer_id Path param:
      #
      #   @option params [Boolean, nil] :leave_stripe_invoices_in_draft Body param: Leave in draft or set to auto-advance on invoices sent to Stripe.
      #     Falls back to the client-level config if unset, which defaults to true if unset.
      #
      #   @option params [String, nil] :salesforce_account_id Body param: The Salesforce account ID for the customer
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [nil]
      #
      def update_config(params)
        parsed, options = Metronome::Models::CustomerUpdateConfigParams.dump_request(params)
        customer_id = parsed.fetch(:customer_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :post,
          path: ["customers/%0s/updateConfig", customer_id],
          body: parsed.except(:customer_id),
          model: NilClass,
          options: options
        )
      end

      # @param client [Metronome::Client]
      #
      def initialize(client:)
        @client = client
        @alerts = Metronome::Resources::Customers::Alerts.new(client: client)
        @plans = Metronome::Resources::Customers::Plans.new(client: client)
        @invoices = Metronome::Resources::Customers::Invoices.new(client: client)
        @billing_config = Metronome::Resources::Customers::BillingConfig.new(client: client)
        @commits = Metronome::Resources::Customers::Commits.new(client: client)
        @credits = Metronome::Resources::Customers::Credits.new(client: client)
        @named_schedules = Metronome::Resources::Customers::NamedSchedules.new(client: client)
      end
    end
  end
end
