# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#preview_events
      class CustomerPreviewEventsResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V1::Customers::Invoice]
        required :data, -> { MetronomeSDK::V1::Customers::Invoice }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::V1::Customers::Invoice]
      end
    end
  end
end
