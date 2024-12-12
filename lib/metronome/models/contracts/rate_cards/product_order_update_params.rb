# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      module RateCards
        class ProductOrderUpdateParams < Metronome::BaseModel
          # @!attribute [rw] product_moves
          #   @return [Array<Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams::ProductMove>]
          required :product_moves,
                   Metronome::ArrayOf.new(
                     -> {
                       Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams::ProductMove
                     }
                   )

          # @!attribute [rw] rate_card_id
          #   ID of the rate card to update
          #   @return [String]
          required :rate_card_id, String

          class ProductMove < Metronome::BaseModel
            # @!attribute [rw] position
            #   0-based index of the new position of the product
            #   @return [Float]
            required :position, Float

            # @!attribute [rw] product_id
            #   ID of the product to move
            #   @return [String]
            required :product_id, String

            # @!parse
            #   # Create a new instance of ProductMove from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Float] :position 0-based index of the new position of the product
            #   #   @option data [String] :product_id ID of the product to move
            #   def initialize(data = {}) = super
          end
        end
      end
    end
  end
end
