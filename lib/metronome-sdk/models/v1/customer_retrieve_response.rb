# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class CustomerRetrieveResponse < MetronomeSDK::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V1::CustomerDetail]
        required :data, -> { MetronomeSDK::Models::V1::CustomerDetail }

        # @!parse
        #   # @param data [MetronomeSDK::Models::V1::CustomerDetail]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end
