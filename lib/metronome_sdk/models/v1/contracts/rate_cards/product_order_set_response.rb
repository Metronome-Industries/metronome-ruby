# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          # @see MetronomeSDK::Resources::V1::Contracts::RateCards::ProductOrders#set
          class ProductOrderSetResponse < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [MetronomeSDK::Models::ID]
            required :data, -> { MetronomeSDK::Models::ID }

            # @!method initialize(data:)
            #   @param data [MetronomeSDK::Models::ID]
          end
        end
      end
    end
  end
end
