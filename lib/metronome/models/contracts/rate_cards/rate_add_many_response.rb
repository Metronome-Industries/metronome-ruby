# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      module RateCards
        # @example
        #
        # ```ruby
        # rate_add_many_response => {
        #   data: Metronome::Models::ID
        # }
        # ```
        class RateAddManyResponse < Metronome::BaseModel
          # @!attribute data
          #   The ID of the rate card to which the rates were added.
          #
          #   @return [Metronome::Models::ID]
          required :data, -> { Metronome::Models::ID }

          # @!parse
          #   # @param data [Metronome::Models::ID] The ID of the rate card to which the rates were added.
          #   #
          #   def initialize(data:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end
      end
    end
  end
end
