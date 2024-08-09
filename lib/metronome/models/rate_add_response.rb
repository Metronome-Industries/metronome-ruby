# frozen_string_literal: true

module Metronome
  module Models
    class RateAddResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::Rate]
      required :data, -> { Metronome::Models::Rate }
    end
  end
end
