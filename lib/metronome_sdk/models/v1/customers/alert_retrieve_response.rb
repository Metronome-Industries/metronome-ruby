# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Alerts#retrieve
        class AlertRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [MetronomeSDK::Models::V1::Customers::CustomerAlert]
          required :data, -> { MetronomeSDK::V1::Customers::CustomerAlert }

          # @!method initialize(data:)
          #   @param data [MetronomeSDK::Models::V1::Customers::CustomerAlert]
        end
      end
    end
  end
end
