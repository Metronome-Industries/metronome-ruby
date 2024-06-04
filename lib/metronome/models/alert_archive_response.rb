# frozen_string_literal: true

module Metronome
  module Models
    class AlertArchiveResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::AlertArchiveResponse::Data]
      required :data, -> { Metronome::Models::AlertArchiveResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String
      end
    end
  end
end
