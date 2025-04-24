# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class PlanGetDetailsResponse < MetronomeSDK::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V1::PlanDetail]
        required :data, -> { MetronomeSDK::Models::V1::PlanDetail }

        # @!parse
        #   # @param data [MetronomeSDK::Models::V1::PlanDetail]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end
