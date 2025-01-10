# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      module RateCards
        # @example
        #
        # ```ruby
        # product_order_set_response => {
        #   data: Metronome::Models::ID
        # }
        # ```
        class ProductOrderSetResponse < Metronome::BaseModel
          # @!attribute data
          #
          #   @return [Metronome::Models::ID]
          required :data, -> { Metronome::Models::ID }

          # @!parse
          #   # @param data [Metronome::Models::ID]
          #   #
          #   def initialize(data:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end
      end
    end
  end
end
