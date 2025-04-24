# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Customers
        # @return [MetronomeSDK::Resources::V1::Customers::Alerts]
        attr_reader :alerts

        # @return [MetronomeSDK::Resources::V1::Customers::Plans]
        attr_reader :plans

        # @return [MetronomeSDK::Resources::V1::Customers::Invoices]
        attr_reader :invoices

        # @return [MetronomeSDK::Resources::V1::Customers::BillingConfig]
        attr_reader :billing_config

        # @return [MetronomeSDK::Resources::V1::Customers::Commits]
        attr_reader :commits

        # @return [MetronomeSDK::Resources::V1::Customers::Credits]
        attr_reader :credits

        # @return [MetronomeSDK::Resources::V1::Customers::NamedSchedules]
        attr_reader :named_schedules

        # Create a new customer
        #
        # @param params [MetronomeSDK::Models::V1::CustomerCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :name This will be truncated to 160 characters if the provided name is longer.
        #
        #   @option params [MetronomeSDK::Models::V1::CustomerCreateParams::BillingConfig] :billing_config
        #
        #   @option params [Hash{Symbol=>String}] :custom_fields
        #
        #   @option params [Array<MetronomeSDK::Models::V1::CustomerCreateParams::CustomerBillingProviderConfiguration>] :customer_billing_provider_configurations
        #
        #   @option params [String] :external_id (deprecated, use ingest_aliases instead) an alias that can be used to refer to
        #     this customer in usage events
        #
        #   @option params [Array<String>] :ingest_aliases Aliases that can be used to refer to this customer in usage events
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::CustomerCreateResponse]
        #
        def create(params)
          parsed, options = MetronomeSDK::Models::V1::CustomerCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/customers",
            body: parsed,
            model: MetronomeSDK::Models::V1::CustomerCreateResponse,
            options: options
          )
        end

        # Get a customer by Metronome ID.
        #
        # @param params [MetronomeSDK::Models::V1::CustomerRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :customer_id
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::CustomerRetrieveResponse]
        #
        def retrieve(params)
          parsed, options = MetronomeSDK::Models::V1::CustomerRetrieveParams.dump_request(params)
          customer_id = parsed.fetch(:customer_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :get,
            path: ["v1/customers/%0s", customer_id],
            model: MetronomeSDK::Models::V1::CustomerRetrieveResponse,
            options: options
          )
        end

        # List all customers.
        #
        # @param params [MetronomeSDK::Models::V1::CustomerListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :customer_ids Filter the customer list by customer_id. Up to 100 ids can be provided.
        #
        #   @option params [String] :ingest_alias Filter the customer list by ingest_alias
        #
        #   @option params [Integer] :limit Max number of results that should be returned
        #
        #   @option params [String] :next_page Cursor that indicates where the next page of results should start.
        #
        #   @option params [Boolean] :only_archived Filter the customer list to only return archived customers. By default, only
        #     active customers are returned.
        #
        #   @option params [Array<String>] :salesforce_account_ids Filter the customer list by salesforce_account_id. Up to 100 ids can be
        #     provided.
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::CursorPage<MetronomeSDK::Models::V1::CustomerDetail>]
        #
        def list(params = {})
          parsed, options = MetronomeSDK::Models::V1::CustomerListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "v1/customers",
            query: parsed,
            page: MetronomeSDK::CursorPage,
            model: MetronomeSDK::Models::V1::CustomerDetail,
            options: options
          )
        end

        # Archive a customer
        #
        # @param params [MetronomeSDK::Models::V1::CustomerArchiveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :id
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::CustomerArchiveResponse]
        #
        def archive(params)
          parsed, options = MetronomeSDK::Models::V1::CustomerArchiveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/customers/archive",
            body: parsed,
            model: MetronomeSDK::Models::V1::CustomerArchiveResponse,
            options: options
          )
        end

        # Get all billable metrics for a given customer.
        #
        # @param params [MetronomeSDK::Models::V1::CustomerListBillableMetricsParams, Hash{Symbol=>Object}] .
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
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::CursorPage<MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse>]
        #
        def list_billable_metrics(params)
          parsed, options = MetronomeSDK::Models::V1::CustomerListBillableMetricsParams.dump_request(params)
          customer_id = parsed.fetch(:customer_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :get,
            path: ["v1/customers/%0s/billable-metrics", customer_id],
            query: parsed.except(:customer_id),
            page: MetronomeSDK::CursorPage,
            model: MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse,
            options: options
          )
        end

        # Fetch daily pending costs for the specified customer, broken down by credit type
        #   and line items. Note: this is not supported for customers whose plan includes a
        #   UNIQUE-type billable metric.
        #
        # @param params [MetronomeSDK::Models::V1::CustomerListCostsParams, Hash{Symbol=>Object}] .
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
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::CursorPage<MetronomeSDK::Models::V1::CustomerListCostsResponse>]
        #
        def list_costs(params)
          parsed, options = MetronomeSDK::Models::V1::CustomerListCostsParams.dump_request(params)
          customer_id = parsed.fetch(:customer_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :get,
            path: ["v1/customers/%0s/costs", customer_id],
            query: parsed.except(:customer_id),
            page: MetronomeSDK::CursorPage,
            model: MetronomeSDK::Models::V1::CustomerListCostsResponse,
            options: options
          )
        end

        # Sets the ingest aliases for a customer. Ingest aliases can be used in the
        #   `customer_id` field when sending usage events to Metronome. This call is
        #   idempotent. It fully replaces the set of ingest aliases for the given customer.
        #
        # @param params [MetronomeSDK::Models::V1::CustomerSetIngestAliasesParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :customer_id Path param:
        #
        #   @option params [Array<String>] :ingest_aliases Body param:
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        #
        def set_ingest_aliases(params)
          parsed, options = MetronomeSDK::Models::V1::CustomerSetIngestAliasesParams.dump_request(params)
          customer_id = parsed.fetch(:customer_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :post,
            path: ["v1/customers/%0s/setIngestAliases", customer_id],
            body: parsed.except(:customer_id),
            model: NilClass,
            options: options
          )
        end

        # Updates the specified customer's name.
        #
        # @param params [MetronomeSDK::Models::V1::CustomerSetNameParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :customer_id Path param:
        #
        #   @option params [String] :name Body param: The new name for the customer. This will be truncated to 160
        #     characters if the provided name is longer.
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::CustomerSetNameResponse]
        #
        def set_name(params)
          parsed, options = MetronomeSDK::Models::V1::CustomerSetNameParams.dump_request(params)
          customer_id = parsed.fetch(:customer_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :post,
            path: ["v1/customers/%0s/setName", customer_id],
            body: parsed.except(:customer_id),
            model: MetronomeSDK::Models::V1::CustomerSetNameResponse,
            options: options
          )
        end

        # Updates the specified customer's config.
        #
        # @param params [MetronomeSDK::Models::V1::CustomerUpdateConfigParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :customer_id Path param:
        #
        #   @option params [Boolean, nil] :leave_stripe_invoices_in_draft Body param: Leave in draft or set to auto-advance on invoices sent to Stripe.
        #     Falls back to the client-level config if unset, which defaults to true if unset.
        #
        #   @option params [String, nil] :salesforce_account_id Body param: The Salesforce account ID for the customer
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        #
        def update_config(params)
          parsed, options = MetronomeSDK::Models::V1::CustomerUpdateConfigParams.dump_request(params)
          customer_id = parsed.fetch(:customer_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :post,
            path: ["v1/customers/%0s/updateConfig", customer_id],
            body: parsed.except(:customer_id),
            model: NilClass,
            options: options
          )
        end

        # @param client [MetronomeSDK::Client]
        #
        def initialize(client:)
          @client = client
          @alerts = MetronomeSDK::Resources::V1::Customers::Alerts.new(client: client)
          @plans = MetronomeSDK::Resources::V1::Customers::Plans.new(client: client)
          @invoices = MetronomeSDK::Resources::V1::Customers::Invoices.new(client: client)
          @billing_config = MetronomeSDK::Resources::V1::Customers::BillingConfig.new(client: client)
          @commits = MetronomeSDK::Resources::V1::Customers::Commits.new(client: client)
          @credits = MetronomeSDK::Resources::V1::Customers::Credits.new(client: client)
          @named_schedules = MetronomeSDK::Resources::V1::Customers::NamedSchedules.new(client: client)
        end
      end
    end
  end
end
