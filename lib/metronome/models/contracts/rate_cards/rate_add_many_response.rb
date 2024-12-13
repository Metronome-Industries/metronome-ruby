# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      module RateCards
        class RateAddManyResponse < Metronome::BaseModel
          # @!attribute data
          #   The ID of the rate card to which the rates were added.
          #   @return [Metronome::Models::ID]
          required :data, -> { Metronome::Models::ID }

          # @!parse
          #   # Create a new instance of RateAddManyResponse from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Object] :data The ID of the rate card to which the rates were added.
          #   def initialize(data = {}) = super
        end
      end
    end
  end
end
