# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Customers
        sig { returns(MetronomeSDK::Resources::V1::Customers::Alerts) }
        def alerts
        end

        sig { returns(MetronomeSDK::Resources::V1::Customers::Plans) }
        def plans
        end

        sig { returns(MetronomeSDK::Resources::V1::Customers::Invoices) }
        def invoices
        end

        sig { returns(MetronomeSDK::Resources::V1::Customers::BillingConfig) }
        def billing_config
        end

        sig { returns(MetronomeSDK::Resources::V1::Customers::Commits) }
        def commits
        end

        sig { returns(MetronomeSDK::Resources::V1::Customers::Credits) }
        def credits
        end

        sig { returns(MetronomeSDK::Resources::V1::Customers::NamedSchedules) }
        def named_schedules
        end

        sig do
          params(
            name: String,
            billing_config: MetronomeSDK::Models::V1::CustomerCreateParams::BillingConfig,
            custom_fields: T::Hash[Symbol, String],
            customer_billing_provider_configurations: T::Array[MetronomeSDK::Models::V1::CustomerCreateParams::CustomerBillingProviderConfiguration],
            external_id: String,
            ingest_aliases: T::Array[String],
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::Models::V1::CustomerCreateResponse)
        end
        def create(
          name:,
          billing_config: nil,
          custom_fields: nil,
          customer_billing_provider_configurations: nil,
          external_id: nil,
          ingest_aliases: nil,
          request_options: {}
        )
        end

        sig do
          params(
            customer_id: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::Models::V1::CustomerRetrieveResponse)
        end
        def retrieve(customer_id:, request_options: {})
        end

        sig do
          params(
            customer_ids: T::Array[String],
            ingest_alias: String,
            limit: Integer,
            next_page: String,
            only_archived: T::Boolean,
            salesforce_account_ids: T::Array[String],
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::CursorPage[MetronomeSDK::Models::V1::CustomerDetail])
        end
        def list(
          customer_ids: nil,
          ingest_alias: nil,
          limit: nil,
          next_page: nil,
          only_archived: nil,
          salesforce_account_ids: nil,
          request_options: {}
        )
        end

        sig do
          params(
            id: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::Models::V1::CustomerArchiveResponse)
        end
        def archive(id:, request_options: {})
        end

        sig do
          params(
            customer_id: String,
            include_archived: T::Boolean,
            limit: Integer,
            next_page: String,
            on_current_plan: T::Boolean,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::CursorPage[MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse])
        end
        def list_billable_metrics(
          customer_id:,
          include_archived: nil,
          limit: nil,
          next_page: nil,
          on_current_plan: nil,
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
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::CursorPage[MetronomeSDK::Models::V1::CustomerListCostsResponse])
        end
        def list_costs(
          customer_id:,
          ending_before:,
          starting_on:,
          limit: nil,
          next_page: nil,
          request_options: {}
        )
        end

        sig do
          params(
            customer_id: String,
            ingest_aliases: T::Array[String],
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .void
        end
        def set_ingest_aliases(customer_id:, ingest_aliases:, request_options: {})
        end

        sig do
          params(
            customer_id: String,
            name: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::Models::V1::CustomerSetNameResponse)
        end
        def set_name(customer_id:, name:, request_options: {})
        end

        sig do
          params(
            customer_id: String,
            leave_stripe_invoices_in_draft: T.nilable(T::Boolean),
            salesforce_account_id: T.nilable(String),
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .void
        end
        def update_config(
          customer_id:,
          leave_stripe_invoices_in_draft: nil,
          salesforce_account_id: nil,
          request_options: {}
        )
        end

        sig { params(client: MetronomeSDK::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
