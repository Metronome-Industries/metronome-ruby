# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PlanGetDetailsResponse < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(MetronomeSDK::Models::V1::PlanDetail) }
        attr_reader :data

        sig { params(data: T.any(MetronomeSDK::Models::V1::PlanDetail, MetronomeSDK::Internal::AnyHash)).void }
        attr_writer :data

        sig do
          params(data: T.any(MetronomeSDK::Models::V1::PlanDetail, MetronomeSDK::Internal::AnyHash))
            .returns(T.attached_class)
        end
        def self.new(data:); end

        sig { override.returns({data: MetronomeSDK::Models::V1::PlanDetail}) }
        def to_hash; end
      end
    end
  end
end
