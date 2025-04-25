# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Credits#list
        class CreditListResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<MetronomeSDK::Models::Credit>]
          required :data, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::Credit] }

          # @!attribute next_page
          #
          #   @return [String, nil]
          required :next_page, String, nil?: true

          # @!method initialize(data:, next_page:)
          #   @param data [Array<MetronomeSDK::Models::Credit>]
          #   @param next_page [String, nil]
        end
      end
    end
  end
end
