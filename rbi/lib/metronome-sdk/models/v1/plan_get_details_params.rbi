# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PlanGetDetailsParams < MetronomeSDK::BaseModel
        extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        sig { returns(String) }
        def plan_id
        end

        sig { params(_: String).returns(String) }
        def plan_id=(_)
        end

        sig do
          params(
            plan_id: String,
            request_options: T.any(
              MetronomeSDK::RequestOptions,
              T::Hash[Symbol, T.anything]
            )
          )
            .void
        end
        def initialize(plan_id:, request_options: {})
        end

        sig { override.returns({plan_id: String, request_options: MetronomeSDK::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
