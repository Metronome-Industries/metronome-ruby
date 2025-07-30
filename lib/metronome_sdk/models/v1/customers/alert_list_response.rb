# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Alerts#list
        class AlertListResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<MetronomeSDK::Models::V1::Customers::CustomerAlert>]
          required :data,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Customers::CustomerAlert]
                   }

          # @!attribute next_page
          #
          #   @return [String, nil]
          required :next_page, String, nil?: true

          # @!method initialize(data:, next_page:)
          #   @param data [Array<MetronomeSDK::Models::V1::Customers::CustomerAlert>]
          #   @param next_page [String, nil]
        end
      end
    end
  end
end
