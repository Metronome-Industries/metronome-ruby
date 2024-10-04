# frozen_string_literal: true

module Metronome
  module Models
    class NamedScheduleRetrieveResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::NamedScheduleRetrieveResponse::Data>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::NamedScheduleRetrieveResponse::Data })

      class Data < BaseModel
        # @!attribute [rw] starting_at
        #   @return [DateTime]
        required :starting_at, DateTime

        # @!attribute [rw] value
        #   @return [Object]
        required :value, Metronome::Unknown

        # @!attribute [rw] ending_before
        #   @return [DateTime]
        optional :ending_before, DateTime
      end
    end
  end
end
