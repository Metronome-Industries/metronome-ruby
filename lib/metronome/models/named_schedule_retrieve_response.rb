# frozen_string_literal: true

module Metronome
  module Models
    class NamedScheduleRetrieveResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::NamedScheduleRetrieveResponse::Data>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::NamedScheduleRetrieveResponse::Data })

      class Data < BaseModel
        # @!attribute [rw] starting_at
        #   @return [String]
        required :starting_at, String

        # @!attribute [rw] value
        #   @return [Object]
        required :value, Metronome::Unknown

        # @!attribute [rw] ending_before
        #   @return [String]
        optional :ending_before, String
      end
    end
  end
end
