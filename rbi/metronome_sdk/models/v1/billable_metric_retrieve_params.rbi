# typed: strong

module MetronomeSDK
  module Models
    module V1
      class BillableMetricRetrieveParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        sig { returns(String) }
        attr_accessor :billable_metric_id

        sig do
          params(
            billable_metric_id: String,
            request_options: T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(billable_metric_id:, request_options: {}); end

        sig { override.returns({billable_metric_id: String, request_options: MetronomeSDK::RequestOptions}) }
        def to_hash; end
      end
    end
  end
end
