# frozen_string_literal: true

module Metronome
  module Models
    class RateAddManyResponse < BaseModel
      # @!attribute [rw] data
      #   The ID of the rate card to which the rates were added.
      #   @return [Metronome::Models::ID]
      required :data, -> { Metronome::Models::ID }
    end
  end
end
