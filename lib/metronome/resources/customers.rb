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

      # Create a new customer
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :name This will be truncated to 160 characters if the provided name is longer.
      # @option params [BillingConfig, nil] :billing_config
      # @option params [Hash, nil] :custom_fields
      # @option params [String, nil] :external_id (deprecated, use ingest_aliases instead) the first ID (Metronome ID or ingest
      #   alias) that can be used in usage events
      # @option params [Array<String>, nil] :ingest_aliases Aliases that can be used to refer to this customer in usage events
      #
      # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::CustomerCreateResponse]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/customers"
        req[:body] = params
        req[:model] = Metronome::Models::CustomerCreateResponse
        @client.request(req, opts)
      end

      # Get a customer by Metronome ID.
      #
      # @param customer_id [String]
      # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::CustomerRetrieveResponse]
      def retrieve(customer_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/customers/#{customer_id}"
        req[:model] = Metronome::Models::CustomerRetrieveResponse
        @client.request(req, opts)
      end

      # List all customers.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Array<String>, nil] :customer_ids Filter the customer list by customer_id. Up to 100 ids can be provided.
      # @option params [String, nil] :ingest_alias Filter the customer list by ingest_alias
      # @option params [Integer, nil] :limit Max number of results that should be returned
      # @option params [String, nil] :next_page Cursor that indicates where the next page of results should start.
      # @option params [Boolean, nil] :only_archived Filter the customer list by only archived customers.
      # @option params [Array<String>, nil] :salesforce_account_ids Filter the customer list by salesforce_account_id. Up to 100 ids can be
      #   provided.
      #
      # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::CursorPage<Metronome::Models::CustomerDetail>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/customers"
        req[:query] = params
        req[:page] = Metronome::CursorPage
        req[:model] = Metronome::Models::CustomerDetail
        @client.request(req, opts)
      end

      # Archive a customer
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :id
      #
      # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::CustomerArchiveResponse]
      def archive(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/customers/archive"
        req[:body] = params
        req[:model] = Metronome::Models::CustomerArchiveResponse
        @client.request(req, opts)
      end

      # Get all billable metrics for a given customer.
      #
      # @param customer_id [String]
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Integer, nil] :limit Max number of results that should be returned
      # @option params [String, nil] :next_page Cursor that indicates where the next page of results should start.
      # @option params [Boolean, nil] :on_current_plan If true, the list of metrics will be filtered to just ones that are on the
      #   customer's current plan
      #
      # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::CursorPage<Metronome::Models::CustomerListBillableMetricsResponse>]
      def list_billable_metrics(customer_id, params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/customers/#{customer_id}/billable-metrics"
        req[:query] = params
        req[:page] = Metronome::CursorPage
        req[:model] = Metronome::Models::CustomerListBillableMetricsResponse
        @client.request(req, opts)
      end

      # Fetch daily pending costs for the specified customer, broken down by credit type
      #   and line items. Note: this is not supported for customers whose plan includes a
      #   UNIQUE-type billable metric.
      #
      # @param customer_id [String]
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [DateTime] :ending_before RFC 3339 timestamp (exclusive)
      # @option params [DateTime] :starting_on RFC 3339 timestamp (inclusive)
      # @option params [Integer, nil] :limit Max number of results that should be returned
      # @option params [String, nil] :next_page Cursor that indicates where the next page of results should start.
      #
      # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::CursorPage<Metronome::Models::CustomerListCostsResponse>]
      def list_costs(customer_id, params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/customers/#{customer_id}/costs"
        req[:query] = params
        req[:page] = Metronome::CursorPage
        req[:model] = Metronome::Models::CustomerListCostsResponse
        @client.request(req, opts)
      end

      # Sets the ingest aliases for a customer. Ingest aliases can be used in the
      #   `customer_id` field when sending usage events to Metronome. This call is
      #   idempotent. It fully replaces the set of ingest aliases for the given customer.
      #
      # @param customer_id [String]
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Array<String>] :ingest_aliases
      #
      # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def set_ingest_aliases(customer_id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/customers/#{customer_id}/setIngestAliases"
        req[:body] = params
        req[:model] = NilClass
        @client.request(req, opts)
      end

      # Updates the specified customer's name.
      #
      # @param customer_id [String]
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :name The new name for the customer. This will be truncated to 160 characters if the
      #   provided name is longer.
      #
      # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::CustomerSetNameResponse]
      def set_name(customer_id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/customers/#{customer_id}/setName"
        req[:body] = params
        req[:model] = Metronome::Models::CustomerSetNameResponse
        @client.request(req, opts)
      end

      # Updates the specified customer's config.
      #
      # @param customer_id [String]
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Boolean, nil] :leave_stripe_invoices_in_draft Leave in draft or set to auto-advance on invoices sent to Stripe. Falls back to
      #   the client-level config if unset, which defaults to true if unset.
      # @option params [String, nil] :salesforce_account_id The Salesforce account ID for the customer
      #
      # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def update_config(customer_id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/customers/#{customer_id}/updateConfig"
        req[:body] = params
        req[:model] = NilClass
        @client.request(req, opts)
      end
    end
  end
end
