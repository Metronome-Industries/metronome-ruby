# typed: strong

module MetronomeSDK
  module Models
    module V1
      class BillableMetricRetrieveParams < MetronomeSDK::BaseModel
        extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        sig { returns(String) }
        def billable_metric_id
        end

        sig { params(_: String).returns(String) }
        def billable_metric_id=(_)
        end

        sig do
          params(
            billable_metric_id: String,
            request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(billable_metric_id:, request_options: {})
        end

        sig { override.returns({billable_metric_id: String, request_options: MetronomeSDK::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
