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

        # Create a new customer
        sig do
          params(
            name: String,
            billing_config: T.any(MetronomeSDK::Models::V1::CustomerCreateParams::BillingConfig, MetronomeSDK::Internal::AnyHash),
            custom_fields: T::Hash[Symbol, String],
            customer_billing_provider_configurations: T::Array[
              T.any(
                MetronomeSDK::Models::V1::CustomerCreateParams::CustomerBillingProviderConfiguration,
                MetronomeSDK::Internal::AnyHash
              )
            ],
            external_id: String,
            ingest_aliases: T::Array[String],
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash))
          )
            .returns(MetronomeSDK::Models::V1::CustomerCreateResponse)
        end
        def create(
          # This will be truncated to 160 characters if the provided name is longer.
          name:,
          billing_config: nil,
          custom_fields: nil,
          customer_billing_provider_configurations: nil,
          # (deprecated, use ingest_aliases instead) an alias that can be used to refer to
          # this customer in usage events
          external_id: nil,
          # Aliases that can be used to refer to this customer in usage events
          ingest_aliases: nil,
          request_options: {}
        ); end
        # Get a customer by Metronome ID.
        sig do
          params(
            customer_id: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash))
          )
            .returns(MetronomeSDK::Models::V1::CustomerRetrieveResponse)
        end
        def retrieve(customer_id:, request_options: {}); end

        # List all customers.
        sig do
          params(
            customer_ids: T::Array[String],
            ingest_alias: String,
            limit: Integer,
            next_page: String,
            only_archived: T::Boolean,
            salesforce_account_ids: T::Array[String],
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash))
          )
            .returns(MetronomeSDK::Internal::CursorPage[MetronomeSDK::Models::V1::CustomerDetail])
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
        ); end
        # Archive a customer
        sig do
          params(
            id: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash))
          )
            .returns(MetronomeSDK::Models::V1::CustomerArchiveResponse)
        end
        def archive(id:, request_options: {}); end

        # Get all billable metrics for a given customer.
        sig do
          params(
            customer_id: String,
            include_archived: T::Boolean,
            limit: Integer,
            next_page: String,
            on_current_plan: T::Boolean,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash))
          )
            .returns(MetronomeSDK::Internal::CursorPage[MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse])
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
        ); end
        # Fetch daily pending costs for the specified customer, broken down by credit type
        # and line items. Note: this is not supported for customers whose plan includes a
        # UNIQUE-type billable metric.
        sig do
          params(
            customer_id: String,
            ending_before: Time,
            starting_on: Time,
            limit: Integer,
            next_page: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash))
          )
            .returns(MetronomeSDK::Internal::CursorPage[MetronomeSDK::Models::V1::CustomerListCostsResponse])
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
        ); end
        # Sets the ingest aliases for a customer. Ingest aliases can be used in the
        # `customer_id` field when sending usage events to Metronome. This call is
        # idempotent. It fully replaces the set of ingest aliases for the given customer.
        sig do
          params(
            customer_id: String,
            ingest_aliases: T::Array[String],
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash))
          )
            .void
        end
        def set_ingest_aliases(
          # Path param:
          customer_id:,
          # Body param:
          ingest_aliases:,
          request_options: {}
        ); end
        # Updates the specified customer's name.
        sig do
          params(
            customer_id: String,
            name: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash))
          )
            .returns(MetronomeSDK::Models::V1::CustomerSetNameResponse)
        end
        def set_name(
          # Path param:
          customer_id:,
          # Body param: The new name for the customer. This will be truncated to 160
          # characters if the provided name is longer.
          name:,
          request_options: {}
        ); end
        # Updates the specified customer's config.
        sig do
          params(
            customer_id: String,
            leave_stripe_invoices_in_draft: T.nilable(T::Boolean),
            salesforce_account_id: T.nilable(String),
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash))
          )
            .void
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
        ); end
        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
