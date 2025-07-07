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

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::CustomerCreateParams} for more details.
        #
        # Create a new customer
        #
        # @overload create(name:, billing_config: nil, custom_fields: nil, customer_billing_provider_configurations: nil, external_id: nil, ingest_aliases: nil, request_options: {})
        #
        # @param name [String] This will be truncated to 160 characters if the provided name is longer.
        #
        # @param billing_config [MetronomeSDK::Models::V1::CustomerCreateParams::BillingConfig]
        #
        # @param custom_fields [Hash{Symbol=>String}]
        #
        # @param customer_billing_provider_configurations [Array<MetronomeSDK::Models::V1::CustomerCreateParams::CustomerBillingProviderConfiguration>]
        #
        # @param external_id [String] (deprecated, use ingest_aliases instead) an alias that can be used to refer to t
        #
        # @param ingest_aliases [Array<String>] Aliases that can be used to refer to this customer in usage events
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::CustomerCreateResponse]
        #
        # @see MetronomeSDK::Models::V1::CustomerCreateParams
        def create(params)
          parsed, options = MetronomeSDK::V1::CustomerCreateParams.dump_request(params)
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
        # @overload retrieve(customer_id:, request_options: {})
        #
        # @param customer_id [String]
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::CustomerRetrieveResponse]
        #
        # @see MetronomeSDK::Models::V1::CustomerRetrieveParams
        def retrieve(params)
          parsed, options = MetronomeSDK::V1::CustomerRetrieveParams.dump_request(params)
          customer_id =
            parsed.delete(:customer_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/customers/%1$s", customer_id],
            model: MetronomeSDK::Models::V1::CustomerRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::CustomerListParams} for more details.
        #
        # List all customers.
        #
        # @overload list(customer_ids: nil, ingest_alias: nil, limit: nil, next_page: nil, only_archived: nil, salesforce_account_ids: nil, request_options: {})
        #
        # @param customer_ids [Array<String>] Filter the customer list by customer_id. Up to 100 ids can be provided.
        #
        # @param ingest_alias [String] Filter the customer list by ingest_alias
        #
        # @param limit [Integer] Max number of results that should be returned
        #
        # @param next_page [String] Cursor that indicates where the next page of results should start.
        #
        # @param only_archived [Boolean] Filter the customer list to only return archived customers. By default, only act
        #
        # @param salesforce_account_ids [Array<String>] Filter the customer list by salesforce_account_id. Up to 100 ids can be provide
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::CustomerDetail>]
        #
        # @see MetronomeSDK::Models::V1::CustomerListParams
        def list(params = {})
          parsed, options = MetronomeSDK::V1::CustomerListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "v1/customers",
            query: parsed,
            page: MetronomeSDK::Internal::CursorPage,
            model: MetronomeSDK::V1::CustomerDetail,
            options: options
          )
        end

        # Archive a customer Note: any alerts associated with the customer will not be
        # triggered.
        #
        # @overload archive(id:, request_options: {})
        #
        # @param id [String]
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::CustomerArchiveResponse]
        #
        # @see MetronomeSDK::Models::V1::CustomerArchiveParams
        def archive(params)
          parsed, options = MetronomeSDK::V1::CustomerArchiveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/customers/archive",
            body: parsed,
            model: MetronomeSDK::Models::V1::CustomerArchiveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::CustomerListBillableMetricsParams} for more details.
        #
        # Get all billable metrics for a given customer.
        #
        # @overload list_billable_metrics(customer_id:, include_archived: nil, limit: nil, next_page: nil, on_current_plan: nil, request_options: {})
        #
        # @param customer_id [String] Path param:
        #
        # @param include_archived [Boolean] Query param: If true, the list of returned metrics will include archived metrics
        #
        # @param limit [Integer] Query param: Max number of results that should be returned
        #
        # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
        #
        # @param on_current_plan [Boolean] Query param: If true, the list of metrics will be filtered to just ones that are
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse>]
        #
        # @see MetronomeSDK::Models::V1::CustomerListBillableMetricsParams
        def list_billable_metrics(params)
          parsed, options = MetronomeSDK::V1::CustomerListBillableMetricsParams.dump_request(params)
          customer_id =
            parsed.delete(:customer_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/customers/%1$s/billable-metrics", customer_id],
            query: parsed,
            page: MetronomeSDK::Internal::CursorPage,
            model: MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse,
            options: options
          )
        end

        # Fetch daily pending costs for the specified customer, broken down by credit type
        # and line items. Note: this is not supported for customers whose plan includes a
        # UNIQUE-type billable metric.
        #
        # @overload list_costs(customer_id:, ending_before:, starting_on:, limit: nil, next_page: nil, request_options: {})
        #
        # @param customer_id [String] Path param:
        #
        # @param ending_before [Time] Query param: RFC 3339 timestamp (exclusive)
        #
        # @param starting_on [Time] Query param: RFC 3339 timestamp (inclusive)
        #
        # @param limit [Integer] Query param: Max number of results that should be returned
        #
        # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::CustomerListCostsResponse>]
        #
        # @see MetronomeSDK::Models::V1::CustomerListCostsParams
        def list_costs(params)
          parsed, options = MetronomeSDK::V1::CustomerListCostsParams.dump_request(params)
          customer_id =
            parsed.delete(:customer_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/customers/%1$s/costs", customer_id],
            query: parsed,
            page: MetronomeSDK::Internal::CursorPage,
            model: MetronomeSDK::Models::V1::CustomerListCostsResponse,
            options: options
          )
        end

        # Sets the ingest aliases for a customer. Ingest aliases can be used in the
        # `customer_id` field when sending usage events to Metronome. This call is
        # idempotent. It fully replaces the set of ingest aliases for the given customer.
        #
        # @overload set_ingest_aliases(customer_id:, ingest_aliases:, request_options: {})
        #
        # @param customer_id [String] Path param:
        #
        # @param ingest_aliases [Array<String>] Body param:
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see MetronomeSDK::Models::V1::CustomerSetIngestAliasesParams
        def set_ingest_aliases(params)
          parsed, options = MetronomeSDK::V1::CustomerSetIngestAliasesParams.dump_request(params)
          customer_id =
            parsed.delete(:customer_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["v1/customers/%1$s/setIngestAliases", customer_id],
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::CustomerSetNameParams} for more details.
        #
        # Updates the specified customer's name.
        #
        # @overload set_name(customer_id:, name:, request_options: {})
        #
        # @param customer_id [String] Path param:
        #
        # @param name [String] Body param: The new name for the customer. This will be truncated to 160 charact
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::CustomerSetNameResponse]
        #
        # @see MetronomeSDK::Models::V1::CustomerSetNameParams
        def set_name(params)
          parsed, options = MetronomeSDK::V1::CustomerSetNameParams.dump_request(params)
          customer_id =
            parsed.delete(:customer_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["v1/customers/%1$s/setName", customer_id],
            body: parsed,
            model: MetronomeSDK::Models::V1::CustomerSetNameResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::CustomerUpdateConfigParams} for more details.
        #
        # Updates the specified customer's config.
        #
        # @overload update_config(customer_id:, leave_stripe_invoices_in_draft: nil, salesforce_account_id: nil, request_options: {})
        #
        # @param customer_id [String] Path param:
        #
        # @param leave_stripe_invoices_in_draft [Boolean, nil] Body param: Leave in draft or set to auto-advance on invoices sent to Stripe. Fa
        #
        # @param salesforce_account_id [String, nil] Body param: The Salesforce account ID for the customer
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see MetronomeSDK::Models::V1::CustomerUpdateConfigParams
        def update_config(params)
          parsed, options = MetronomeSDK::V1::CustomerUpdateConfigParams.dump_request(params)
          customer_id =
            parsed.delete(:customer_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["v1/customers/%1$s/updateConfig", customer_id],
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # @api private
        #
        # @param client [MetronomeSDK::Client]
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
