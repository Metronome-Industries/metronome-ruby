# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Alerts
        sig do
          params(
            alert_type: Symbol,
            name: String,
            threshold: Float,
            billable_metric_id: String,
            credit_grant_type_filters: T::Array[String],
            credit_type_id: String,
            custom_field_filters: T::Array[MetronomeSDK::Models::V1::AlertCreateParams::CustomFieldFilter],
            customer_id: String,
            evaluate_on_create: T::Boolean,
            group_key_filter: MetronomeSDK::Models::V1::AlertCreateParams::GroupKeyFilter,
            invoice_types_filter: T::Array[String],
            plan_id: String,
            uniqueness_key: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::Models::V1::AlertCreateResponse)
        end
        def create(
          alert_type:,
          name:,
          threshold:,
          billable_metric_id: nil,
          credit_grant_type_filters: nil,
          credit_type_id: nil,
          custom_field_filters: nil,
          customer_id: nil,
          evaluate_on_create: nil,
          group_key_filter: nil,
          invoice_types_filter: nil,
          plan_id: nil,
          uniqueness_key: nil,
          request_options: {}
        )
        end

        sig do
          params(
            id: String,
            release_uniqueness_key: T::Boolean,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::Models::V1::AlertArchiveResponse)
        end
        def archive(id:, release_uniqueness_key: nil, request_options: {})
        end

        sig { params(client: MetronomeSDK::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
