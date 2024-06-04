# frozen_string_literal: true

module Metronome
  module Models
    class AlertCreateResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::AlertCreateResponse::Data]
      required :data, -> { Metronome::Models::AlertCreateResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String
      end
    end
  end
end
