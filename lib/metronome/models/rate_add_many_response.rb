# frozen_string_literal: true

module Metronome
  module Models
    class RateAddManyResponse < BaseModel
      # @!attribute [rw] data
      #   The ID of the rate card to which the rates were added.
      #   @return [Metronome::Models::ID]
      required :data, -> { Metronome::Models::ID }

      # Create a new instance of RateAddManyResponse from a Hash of raw data.
      #
      # @overload initialize(data: nil)
      # @param data [Object] The ID of the rate card to which the rates were added.
      def initialize(data = {})
        super
      end
    end
  end
end
