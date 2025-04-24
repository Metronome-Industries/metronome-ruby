# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class CustomerCreateResponse < MetronomeSDK::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V1::Customer]
        required :data, -> { MetronomeSDK::Models::V1::Customer }

        # @!parse
        #   # @param data [MetronomeSDK::Models::V1::Customer]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end
