# frozen_string_literal: true

module Metronome
  module Models
    class AlertRetrieveResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::CustomerAlert]
      required :data, -> { Metronome::Models::CustomerAlert }
    end
  end
end
