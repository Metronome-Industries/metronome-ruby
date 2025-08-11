# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Plans#get_details
      class PlanGetDetailsResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V1::PlanDetail]
        required :data, -> { MetronomeSDK::V1::PlanDetail }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::V1::PlanDetail]
      end
    end
  end
end
