# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#retrieve
      class CustomerRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V1::CustomerDetail]
        required :data, -> { MetronomeSDK::V1::CustomerDetail }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::V1::CustomerDetail]
      end
    end
  end
end
