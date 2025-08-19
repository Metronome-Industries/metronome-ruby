# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          # @see MetronomeSDK::Resources::V1::Contracts::RateCards::ProductOrders#update
          class ProductOrderUpdateParams < MetronomeSDK::Internal::Type::BaseModel
            extend MetronomeSDK::Internal::Type::RequestParameters::Converter
            include MetronomeSDK::Internal::Type::RequestParameters

            # @!attribute product_moves
            #
            #   @return [Array<MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateParams::ProductMove>]
            required :product_moves,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Contracts::RateCards::ProductOrderUpdateParams::ProductMove] }

            # @!attribute rate_card_id
            #   ID of the rate card to update
            #
            #   @return [String]
            required :rate_card_id, String

            # @!method initialize(product_moves:, rate_card_id:, request_options: {})
            #   @param product_moves [Array<MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateParams::ProductMove>]
            #
            #   @param rate_card_id [String] ID of the rate card to update
            #
            #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

            class ProductMove < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute position
              #   0-based index of the new position of the product
              #
              #   @return [Float]
              required :position, Float

              # @!attribute product_id
              #   ID of the product to move
              #
              #   @return [String]
              required :product_id, String

              # @!method initialize(position:, product_id:)
              #   @param position [Float] 0-based index of the new position of the product
              #
              #   @param product_id [String] ID of the product to move
            end
          end
        end
      end
    end
  end
end
