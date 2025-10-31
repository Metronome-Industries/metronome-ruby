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
        # Create a new customer in Metronome and optionally the billing configuration
        # (recommended) which dictates where invoices for the customer will be sent or
        # where payment will be collected.
        #
        # ### Use this endpoint to:
        #
        # Execute your customer provisioning workflows for either PLG motions, where
        # customers originate in your platform, or SLG motions, where customers originate
        # in your sales system.
        #
        # ### Key response fields:
        #
        # This end-point returns the `customer_id` created by the request. This id can be
        # used to fetch relevant billing configurations and create contracts.
        #
        # ### Example workflow:
        #
        # - Generally, Metronome recommends first creating the customer in the downstream
        #   payment / ERP system when payment method is collected and then creating the
        #   customer in Metronome using the response (i.e. `customer_id`) from the
        #   downstream system. If you do not create a billing configuration on customer
        #   creation, you can add it later.
        # - Once a customer is created, you can then create a contract for the customer.
        #   In the contract creation process, you will need to add the customer billing
        #   configuration to the contract to ensure Metronome invoices the customer
        #   correctly. This is because a customer can have multiple configurations.
        # - As part of the customer creation process, set the ingest alias for the
        #   customer which will ensure usage is accurately mapped to the customer. Ingest
        #   aliases can be added or changed after the creation process as well.
        #
        # ### Usage guidelines:
        #
        # For details on different billing configurations for different systems, review
        # the `/setCustomerBillingConfiguration` end-point.
        #
        # @overload create(name:, billing_config: nil, custom_fields: nil, customer_billing_provider_configurations: nil, external_id: nil, ingest_aliases: nil, request_options: {})
        #
        # @param name [String] This will be truncated to 160 characters if the provided name is longer.
        #
        # @param billing_config [MetronomeSDK::Models::V1::CustomerCreateParams::BillingConfig]
        #
        # @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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

        # Get detailed information for a specific customer by their Metronome ID. Returns
        # customer profile data including name, creation date, ingest aliases,
        # configuration settings, and custom fields. Use this endpoint to fetch complete
        # customer details for billing operations or account management.
        #
        # Note: If searching for a customer billing configuration, use the
        # `/getCustomerBillingConfigurations` endpoint.
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
        # Gets a paginated list of all customers in your Metronome account. Use this
        # endpoint to browse your customer base, implement customer search functionality,
        # or sync customer data with external systems. Returns customer details including
        # IDs, names, and configuration settings. Supports filtering and pagination
        # parameters for efficient data retrieval.
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

        # Use this endpoint to archive a customer while preserving auditability. Archiving
        # a customer will automatically archive all contracts as of the current date and
        # void all corresponding invoices. Use this endpoint if a customer is onboarded by
        # mistake.
        #
        # ### Usage guidelines:
        #
        # - Once a customer is archived, it cannot be unarchived.
        # - Archived customers can still be viewed through the API or the UI for audit
        #   purposes.
        # - Ingest aliases remain idempotent for archived customers. In order to reuse an
        #   ingest alias, first remove the ingest alias from the customer prior to
        #   archiving.
        # - Any notifications associated with the customer will no longer be triggered.
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
        # Get all billable metrics available for a specific customer. Supports pagination
        # and filtering by current plan status or archived metrics. Use this endpoint to
        # see which metrics are being tracked for billing calculations for a given
        # customer.
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
        # UNIQUE-type billable metric. This is a Plans (deprecated) endpoint. New clients
        # should implement using Contracts.
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

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::CustomerPreviewEventsParams} for more details.
        #
        # Preview how a set of events will affect a customer's invoices. Generates draft
        # invoices for a customer using their current contract configuration and the
        # provided events. This is useful for testing how new events will affect the
        # customer's invoices before they are actually processed. Customers on contracts
        # with SQL billable metrics are not supported.
        #
        # @overload preview_events(customer_id:, events:, mode: nil, skip_zero_qty_line_items: nil, request_options: {})
        #
        # @param customer_id [String] Path param:
        #
        # @param events [Array<MetronomeSDK::Models::V1::CustomerPreviewEventsParams::Event>] Body param: Array of usage events to include in the preview calculation. Must co
        #
        # @param mode [Symbol, MetronomeSDK::Models::V1::CustomerPreviewEventsParams::Mode] Body param: Controls how the provided events are combined with existing usage da
        #
        # @param skip_zero_qty_line_items [Boolean] Body param: When `true`, line items with zero quantity are excluded from the res
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::CustomerPreviewEventsResponse]
        #
        # @see MetronomeSDK::Models::V1::CustomerPreviewEventsParams
        def preview_events(params)
          parsed, options = MetronomeSDK::V1::CustomerPreviewEventsParams.dump_request(params)
          customer_id =
            parsed.delete(:customer_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["v1/customers/%1$s/previewEvents", customer_id],
            body: parsed,
            model: MetronomeSDK::Models::V1::CustomerPreviewEventsResponse,
            options: options
          )
        end

        # Returns all billing configurations previously set for the customer. Use during
        # the contract provisioning process to fetch the
        # `billing_provider_configuration_id` needed to set the contract billing
        # configuration.
        #
        # @overload retrieve_billing_configurations(customer_id:, include_archived: nil, request_options: {})
        #
        # @param customer_id [String]
        # @param include_archived [Boolean]
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse]
        #
        # @see MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsParams
        def retrieve_billing_configurations(params)
          parsed, options = MetronomeSDK::V1::CustomerRetrieveBillingConfigurationsParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/getCustomerBillingProviderConfigurations",
            body: parsed,
            model: MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse,
            options: options
          )
        end

        # Create a billing configuration for a customer. Once created, these
        # configurations are available to associate to a contract and dictates which
        # downstream system to collect payment in or send the invoice to. You can create
        # multiple configurations per customer. The configuration formats are distinct for
        # each downstream provider.
        #
        # ### Use this endpoint to:
        #
        # - Add the initial configuration to an existing customer. Once created, the
        #   billing configuration can then be associated to the customer's contract.
        # - Add a new configuration to an existing customer. This might be used as part of
        #   an upgrade or downgrade workflow where the customer was previously billed
        #   through system A (e.g. Stripe) but will now be billed through system B (e.g.
        #   AWS). Once created, the new configuration can then be associated to the
        #   customer's contract.
        # - Multiple configurations can be added per destination. For example, you can
        #   create two Stripe billing configurations for a Metronome customer that each
        #   have a distinct `collection_method`.
        #
        # ### Delivery method options:
        #
        # - `direct_to_billing_provider`: Use when Metronome should send invoices directly
        #   to the billing provider's API (e.g., Stripe, NetSuite). This is the most
        #   common method for automated billing workflows.
        # - `tackle`: Use specifically for AWS Marketplace transactions that require
        #   Tackle's co-selling platform for partner attribution and commission tracking.
        # - `aws_sqs`: Use when you want invoice data delivered to an AWS SQS queue for
        #   custom processing before sending to your billing system.
        # - `aws_sns`: Use when you want invoice notifications published to an AWS SNS
        #   topic for event-driven billing workflows.
        #
        # ### Key response fields:
        #
        # The id for the customer billing configuration. This id can be used to associate
        # the billing configuration to a contract.
        #
        # ### Usage guidelines:
        #
        # Must use the `delivery_method_id` if you have multiple Stripe accounts connected
        # to Metronome.
        #
        # @overload set_billing_configurations(data:, request_options: {})
        #
        # @param data [Array<MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsParams::Data>]
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsParams
        def set_billing_configurations(params)
          parsed, options = MetronomeSDK::V1::CustomerSetBillingConfigurationsParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/setCustomerBillingProviderConfigurations",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Sets the ingest aliases for a customer. Use this endpoint to associate a
        # Metronome customer with an internal ID for easier tracking between systems.
        # Ingest aliases can be used in the `customer_id` field when sending usage events
        # to Metronome.
        #
        # ### Usage guidelines:
        #
        # - This call is idempotent and fully replaces the set of ingest aliases for the
        #   given customer.
        # - Switching an ingest alias from one customer to another will associate all
        #   corresponding usage to the new customer.
        # - Use multiple ingest aliases to model child organizations within a single
        #   Metronome customer.
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
        # Updates the display name for a customer record. Use this to correct customer
        # names, update business names after rebranding, or maintain accurate customer
        # information for invoicing and reporting. Returns the updated customer object
        # with the new name applied immediately across all billing documents and
        # interfaces.
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
        # Update configuration settings for a specific customer, such as external system
        # integrations (e.g., Salesforce account ID) and other customer-specific billing
        # parameters. Use this endpoint to modify customer configurations without
        # affecting core customer data like name or ingest aliases.
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
