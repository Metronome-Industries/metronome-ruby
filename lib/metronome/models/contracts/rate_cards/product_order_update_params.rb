# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      module RateCards
        class ProductOrderUpdateParams < Metronome::BaseModel
          # @!attribute product_moves
          #
          #   @return [Array<Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams::ProductMove>]
          required :product_moves,
                   -> {
                     Metronome::ArrayOf[Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams::ProductMove]
                   }

          # @!attribute rate_card_id
          #   ID of the rate card to update
          #
          #   @return [String]
          required :rate_card_id, String

          # @!parse
          #   # @param product_moves [Array<Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams::ProductMove>]
          #   #
          #   # @param rate_card_id [String] ID of the rate card to update
          #   #
          #   def initialize(product_moves:, rate_card_id:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # product_move => {
          #   position: Float,
          #   product_id: String
          # }
          # ```
          class ProductMove < Metronome::BaseModel
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
            #   # @param position [Float] 0-based index of the new position of the product
            #   #
            #   # @param product_id [String] ID of the product to move
            #   #
            #   def initialize(position:, product_id:, **) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void
          end
        end
      end
    end
  end
end
