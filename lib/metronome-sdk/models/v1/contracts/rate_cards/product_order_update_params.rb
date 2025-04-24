# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class ProductOrderUpdateParams < MetronomeSDK::BaseModel
            # @!parse
            #   extend MetronomeSDK::RequestParameters::Converter
            include MetronomeSDK::RequestParameters

            # @!attribute product_moves
            #
            #   @return [Array<MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateParams::ProductMove>]
            required :product_moves,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateParams::ProductMove] }

            # @!attribute rate_card_id
            #   ID of the rate card to update
            #
            #   @return [String]
            required :rate_card_id, String

            # @!parse
            #   # @param product_moves [Array<MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateParams::ProductMove>]
            #   # @param rate_card_id [String]
            #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
            #   #
            #   def initialize(product_moves:, rate_card_id:, request_options: {}, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class ProductMove < MetronomeSDK::BaseModel
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

              # @!parse
              #   # @param position [Float]
              #   # @param product_id [String]
              #   #
              #   def initialize(position:, product_id:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end
        end
      end
    end
  end
end
