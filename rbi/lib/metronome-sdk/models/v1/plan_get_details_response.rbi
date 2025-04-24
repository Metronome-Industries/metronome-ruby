# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PlanGetDetailsResponse < MetronomeSDK::BaseModel
        sig { returns(MetronomeSDK::Models::V1::PlanDetail) }
        def data
        end

        sig { params(_: MetronomeSDK::Models::V1::PlanDetail).returns(MetronomeSDK::Models::V1::PlanDetail) }
        def data=(_)
        end

        sig { params(data: MetronomeSDK::Models::V1::PlanDetail).void }
        def initialize(data:)
        end

        sig { override.returns({data: MetronomeSDK::Models::V1::PlanDetail}) }
        def to_hash
        end
      end
    end
  end
end
