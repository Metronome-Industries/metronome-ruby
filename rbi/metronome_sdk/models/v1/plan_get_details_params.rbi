# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PlanGetDetailsParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        sig { returns(String) }
        attr_accessor :plan_id

        sig do
          params(
            plan_id: String,
            request_options: T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(plan_id:, request_options: {}); end

        sig { override.returns({plan_id: String, request_options: MetronomeSDK::RequestOptions}) }
        def to_hash; end
      end
    end
  end
end
