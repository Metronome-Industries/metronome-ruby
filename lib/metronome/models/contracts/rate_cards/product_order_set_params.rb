# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      module RateCards
        class ProductOrderSetParams < Metronome::BaseModel
          # @!attribute product_order
          #
          #   @return [Array<String>]
          required :product_order, Metronome::ArrayOf.new(String)

          # @!attribute rate_card_id
          #   ID of the rate card to update
          #
          #   @return [String]
          required :rate_card_id, String
        end
      end
    end
  end
end
