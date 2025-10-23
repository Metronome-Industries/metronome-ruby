# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Customers
        sig { returns(MetronomeSDK::Resources::V1::Customers::Alerts) }
        attr_reader :alerts

        sig { returns(MetronomeSDK::Resources::V1::Customers::Plans) }
        attr_reader :plans

        sig { returns(MetronomeSDK::Resources::V1::Customers::Invoices) }
        attr_reader :invoices

        sig { returns(MetronomeSDK::Resources::V1::Customers::BillingConfig) }
        attr_reader :billing_config

        sig { returns(MetronomeSDK::Resources::V1::Customers::Commits) }
        attr_reader :commits

        sig { returns(MetronomeSDK::Resources::V1::Customers::Credits) }
        attr_reader :credits

        sig { returns(MetronomeSDK::Resources::V1::Customers::NamedSchedules) }
        attr_reader :named_schedules

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
        sig do
          params(
            name: String,
            billing_config:
              MetronomeSDK::V1::CustomerCreateParams::BillingConfig::OrHash,
            custom_fields: T::Hash[Symbol, String],
            customer_billing_provider_configurations:
              T::Array[
                MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::OrHash
              ],
            external_id: String,
            ingest_aliases: T::Array[String],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::CustomerCreateResponse)
        end
        def create(
          # This will be truncated to 160 characters if the provided name is longer.
          name:,
          billing_config: nil,
          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          custom_fields: nil,
          customer_billing_provider_configurations: nil,
          # (deprecated, use ingest_aliases instead) an alias that can be used to refer to
          # this customer in usage events
          external_id: nil,
          # Aliases that can be used to refer to this customer in usage events
          ingest_aliases: nil,
          request_options: {}
        )
        end

        # Get detailed information for a specific customer by their Metronome ID. Returns
        # customer profile data including name, creation date, ingest aliases,
        # configuration settings, and custom fields. Use this endpoint to fetch complete
        # customer details for billing operations or account management.
        #
        # Note: If searching for a customer billing configuration, use the
        # `/getCustomerBillingConfigurations` endpoint.
        sig do
          params(
            customer_id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::CustomerRetrieveResponse)
        end
        def retrieve(customer_id:, request_options: {})
        end

        # Gets a paginated list of all customers in your Metronome account. Use this
        # endpoint to browse your customer base, implement customer search functionality,
        # or sync customer data with external systems. Returns customer details including
        # IDs, names, and configuration settings. Supports filtering and pagination
        # parameters for efficient data retrieval.
        sig do
          params(
            customer_ids: T::Array[String],
            ingest_alias: String,
            limit: Integer,
            next_page: String,
            only_archived: T::Boolean,
            salesforce_account_ids: T::Array[String],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Internal::CursorPage[MetronomeSDK::V1::CustomerDetail]
          )
        end
        def list(
          # Filter the customer list by customer_id. Up to 100 ids can be provided.
          customer_ids: nil,
          # Filter the customer list by ingest_alias
          ingest_alias: nil,
          # Max number of results that should be returned
          limit: nil,
          # Cursor that indicates where the next page of results should start.
          next_page: nil,
          # Filter the customer list to only return archived customers. By default, only
          # active customers are returned.
          only_archived: nil,
          # Filter the customer list by salesforce_account_id. Up to 100 ids can be
          # provided.
          salesforce_account_ids: nil,
          request_options: {}
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
        sig do
          params(
            id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::CustomerArchiveResponse)
        end
        def archive(id:, request_options: {})
        end

        # Get all billable metrics available for a specific customer. Supports pagination
        # and filtering by current plan status or archived metrics. Use this endpoint to
        # see which metrics are being tracked for billing calculations for a given
        # customer.
        sig do
          params(
            customer_id: String,
            include_archived: T::Boolean,
            limit: Integer,
            next_page: String,
            on_current_plan: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Internal::CursorPage[
              MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse
            ]
          )
        end
        def list_billable_metrics(
          # Path param:
          customer_id:,
          # Query param: If true, the list of returned metrics will include archived metrics
          include_archived: nil,
          # Query param: Max number of results that should be returned
          limit: nil,
          # Query param: Cursor that indicates where the next page of results should start.
          next_page: nil,
          # Query param: If true, the list of metrics will be filtered to just ones that are
          # on the customer's current plan
          on_current_plan: nil,
          request_options: {}
        )
        end

        # Fetch daily pending costs for the specified customer, broken down by credit type
        # and line items. Note: this is not supported for customers whose plan includes a
        # UNIQUE-type billable metric. This is a Plans (deprecated) endpoint. New clients
        # should implement using Contracts.
        sig do
          params(
            customer_id: String,
            ending_before: Time,
            starting_on: Time,
            limit: Integer,
            next_page: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Internal::CursorPage[
              MetronomeSDK::Models::V1::CustomerListCostsResponse
            ]
          )
        end
        def list_costs(
          # Path param:
          customer_id:,
          # Query param: RFC 3339 timestamp (exclusive)
          ending_before:,
          # Query param: RFC 3339 timestamp (inclusive)
          starting_on:,
          # Query param: Max number of results that should be returned
          limit: nil,
          # Query param: Cursor that indicates where the next page of results should start.
          next_page: nil,
          request_options: {}
        )
        end

        # Preview how a set of events will affect a customer's invoices. Generates draft
        # invoices for a customer using their current contract configuration and the
        # provided events. This is useful for testing how new events will affect the
        # customer's invoices before they are actually processed.
        sig do
          params(
            customer_id: String,
            events:
              T::Array[
                MetronomeSDK::V1::CustomerPreviewEventsParams::Event::OrHash
              ],
            mode: MetronomeSDK::V1::CustomerPreviewEventsParams::Mode::OrSymbol,
            skip_zero_qty_line_items: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::CustomerPreviewEventsResponse)
        end
        def preview_events(
          # Path param:
          customer_id:,
          # Body param: Array of usage events to include in the preview calculation. Must
          # contain at least one event in `merge` mode.
          events:,
          # Body param: Controls how the provided events are combined with existing usage
          # data. Use `replace` to calculate the preview as if these are the only events for
          # the customer, ignoring all historical usage. Use `merge` to combine these events
          # with the customer's existing usage. Defaults to `replace`.
          mode: nil,
          # Body param: When `true`, line items with zero quantity are excluded from the
          # response.
          skip_zero_qty_line_items: nil,
          request_options: {}
        )
        end

        # Returns all billing configurations previously set for the customer. Use during
        # the contract provisioning process to fetch the
        # `billing_provider_configuration_id` needed to set the contract billing
        # configuration.
        sig do
          params(
            customer_id: String,
            include_archived: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse
          )
        end
        def retrieve_billing_configurations(
          customer_id:,
          include_archived: nil,
          request_options: {}
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
        sig do
          params(
            data:
              T::Array[
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::OrHash
              ],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).void
        end
        def set_billing_configurations(data:, request_options: {})
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
        sig do
          params(
            customer_id: String,
            ingest_aliases: T::Array[String],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).void
        end
        def set_ingest_aliases(
          # Path param:
          customer_id:,
          # Body param:
          ingest_aliases:,
          request_options: {}
        )
        end

        # Updates the display name for a customer record. Use this to correct customer
        # names, update business names after rebranding, or maintain accurate customer
        # information for invoicing and reporting. Returns the updated customer object
        # with the new name applied immediately across all billing documents and
        # interfaces.
        sig do
          params(
            customer_id: String,
            name: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::CustomerSetNameResponse)
        end
        def set_name(
          # Path param:
          customer_id:,
          # Body param: The new name for the customer. This will be truncated to 160
          # characters if the provided name is longer.
          name:,
          request_options: {}
        )
        end

        # Update configuration settings for a specific customer, such as external system
        # integrations (e.g., Salesforce account ID) and other customer-specific billing
        # parameters. Use this endpoint to modify customer configurations without
        # affecting core customer data like name or ingest aliases.
        sig do
          params(
            customer_id: String,
            leave_stripe_invoices_in_draft: T.nilable(T::Boolean),
            salesforce_account_id: T.nilable(String),
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).void
        end
        def update_config(
          # Path param:
          customer_id:,
          # Body param: Leave in draft or set to auto-advance on invoices sent to Stripe.
          # Falls back to the client-level config if unset, which defaults to true if unset.
          leave_stripe_invoices_in_draft: nil,
          # Body param: The Salesforce account ID for the customer
          salesforce_account_id: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
