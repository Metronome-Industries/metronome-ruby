# frozen_string_literal: true

module Metronome
  module Models
    class CustomerArchiveResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::CustomerArchiveResponse::Data]
      required :data, -> { Metronome::Models::CustomerArchiveResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String
      end
    end
  end
end
