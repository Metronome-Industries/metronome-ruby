# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          # @see MetronomeSDK::Resources::V1::Contracts::RateCards::ProductOrders#update
          class ProductOrderUpdateResponse < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateResponse::Data]
            required :data, -> { MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateResponse::Data }

            # @!method initialize(data:)
            #   @param data [MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateResponse::Data]

            # @see MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateResponse#data
            class Data < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!method initialize(id:)
              #   @param id [String]
            end
          end
        end
      end
    end
  end
end
