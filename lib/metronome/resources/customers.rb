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

      # @param client [Metronome::Client]
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
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :name This will be truncated to 160 characters if the provided name is longer.
      #   @option params [BillingConfig, nil] :billing_config
      #   @option params [Hash, nil] :custom_fields
      #   @option params [String, nil] :external_id (deprecated, use ingest_aliases instead) an alias that can be used to refer to
      #     this customer in usage events
      #   @option params [Array<String>, nil] :ingest_aliases Aliases that can be used to refer to this customer in usage events
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::CustomerCreateResponse]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/customers",
          headers: {"Content-Type" => "application/json"},
          body: params,
          model: Metronome::Models::CustomerCreateResponse
        }
        @client.request(req, opts)
      end

      # Get a customer by Metronome ID.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :customer_id
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::CustomerRetrieveResponse]
      def retrieve(params = {}, opts = {})
        customer_id = params.fetch(:customer_id) do
          raise ArgumentError, "missing required path argument :customer_id"
        end
        req = {
          method: :get,
          path: "/customers/#{customer_id}",
          model: Metronome::Models::CustomerRetrieveResponse
        }
        @client.request(req, opts)
      end

      # List all customers.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Array<String>, nil] :customer_ids Filter the customer list by customer_id. Up to 100 ids can be provided.
      #   @option params [String, nil] :ingest_alias Filter the customer list by ingest_alias
      #   @option params [Integer, nil] :limit Max number of results that should be returned
      #   @option params [String, nil] :next_page Cursor that indicates where the next page of results should start.
      #   @option params [Boolean, nil] :only_archived Filter the customer list by only archived customers.
      #   @option params [Array<String>, nil] :salesforce_account_ids Filter the customer list by salesforce_account_id. Up to 100 ids can be
      #     provided.
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::CursorPage<Metronome::Models::CustomerDetail>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/customers",
          query: params,
          page: Metronome::CursorPage,
          model: Metronome::Models::CustomerDetail
        }
        @client.request(req, opts)
      end

      # Archive a customer
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :id
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::CustomerArchiveResponse]
      def archive(params = {}, opts = {})
        req = {
          method: :post,
          path: "/customers/archive",
          headers: {"Content-Type" => "application/json"},
          body: params,
          model: Metronome::Models::CustomerArchiveResponse
        }
        @client.request(req, opts)
      end

      # Get all billable metrics for a given customer.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :customer_id Path param:
      #   @option params [Boolean, nil] :include_archived Query param: If true, the list of returned metrics will include archived metrics
      #   @option params [Integer, nil] :limit Query param: Max number of results that should be returned
      #   @option params [String, nil] :next_page Query param: Cursor that indicates where the next page of results should start.
      #   @option params [Boolean, nil] :on_current_plan Query param: If true, the list of metrics will be filtered to just ones that are
      #     on the customer's current plan
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::CursorPage<Metronome::Models::CustomerListBillableMetricsResponse>]
      def list_billable_metrics(params = {}, opts = {})
        customer_id = params.fetch(:customer_id) do
          raise ArgumentError, "missing required path argument :customer_id"
        end
        req = {
          method: :get,
          path: "/customers/#{customer_id}/billable-metrics",
          query: params.except(:customer_id),
          page: Metronome::CursorPage,
          model: Metronome::Models::CustomerListBillableMetricsResponse
        }
        @client.request(req, opts)
      end

      # Fetch daily pending costs for the specified customer, broken down by credit type
      #   and line items. Note: this is not supported for customers whose plan includes a
      #   UNIQUE-type billable metric.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :customer_id Path param:
      #   @option params [Time] :ending_before Query param: RFC 3339 timestamp (exclusive)
      #   @option params [Time] :starting_on Query param: RFC 3339 timestamp (inclusive)
      #   @option params [Integer, nil] :limit Query param: Max number of results that should be returned
      #   @option params [String, nil] :next_page Query param: Cursor that indicates where the next page of results should start.
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::CursorPage<Metronome::Models::CustomerListCostsResponse>]
      def list_costs(params = {}, opts = {})
        customer_id = params.fetch(:customer_id) do
          raise ArgumentError, "missing required path argument :customer_id"
        end
        req = {
          method: :get,
          path: "/customers/#{customer_id}/costs",
          query: params.except(:customer_id),
          page: Metronome::CursorPage,
          model: Metronome::Models::CustomerListCostsResponse
        }
        @client.request(req, opts)
      end

      # Sets the ingest aliases for a customer. Ingest aliases can be used in the
      #   `customer_id` field when sending usage events to Metronome. This call is
      #   idempotent. It fully replaces the set of ingest aliases for the given customer.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :customer_id Path param:
      #   @option params [Array<String>] :ingest_aliases Body param:
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def set_ingest_aliases(params = {}, opts = {})
        customer_id = params.fetch(:customer_id) do
          raise ArgumentError, "missing required path argument :customer_id"
        end
        req = {
          method: :post,
          path: "/customers/#{customer_id}/setIngestAliases",
          headers: {"Content-Type" => "application/json"},
          body: params.except(:customer_id),
          model: NilClass
        }
        @client.request(req, opts)
      end

      # Updates the specified customer's name.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :customer_id Path param:
      #   @option params [String] :name Body param: The new name for the customer. This will be truncated to 160
      #     characters if the provided name is longer.
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::CustomerSetNameResponse]
      def set_name(params = {}, opts = {})
        customer_id = params.fetch(:customer_id) do
          raise ArgumentError, "missing required path argument :customer_id"
        end
        req = {
          method: :post,
          path: "/customers/#{customer_id}/setName",
          headers: {"Content-Type" => "application/json"},
          body: params.except(:customer_id),
          model: Metronome::Models::CustomerSetNameResponse
        }
        @client.request(req, opts)
      end

      # Updates the specified customer's config.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :customer_id Path param:
      #   @option params [Boolean, nil] :leave_stripe_invoices_in_draft Body param: Leave in draft or set to auto-advance on invoices sent to Stripe.
      #     Falls back to the client-level config if unset, which defaults to true if unset.
      #   @option params [String, nil] :salesforce_account_id Body param: The Salesforce account ID for the customer
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def update_config(params = {}, opts = {})
        customer_id = params.fetch(:customer_id) do
          raise ArgumentError, "missing required path argument :customer_id"
        end
        req = {
          method: :post,
          path: "/customers/#{customer_id}/updateConfig",
          headers: {"Content-Type" => "application/json"},
          body: params.except(:customer_id),
          model: NilClass
        }
        @client.request(req, opts)
      end
    end
  end
end
