# frozen_string_literal: true

module Metronome
  module Models
    class ScheduleDuration < BaseModel
      # @!attribute [rw] schedule_items
      #   @return [Array<Metronome::Models::ScheduleDuration::ScheduleItem>]
      required :schedule_items, Metronome::ArrayOf.new(-> { Metronome::Models::ScheduleDuration::ScheduleItem })

      # @!attribute [rw] credit_type
      #   @return [Metronome::Models::CreditType]
      optional :credit_type, -> { Metronome::Models::CreditType }

      class ScheduleItem < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] amount
        #   @return [Float]
        required :amount, Float

        # @!attribute [rw] ending_before
        #   @return [DateTime]
        required :ending_before, DateTime

        # @!attribute [rw] starting_at
        #   @return [DateTime]
        required :starting_at, DateTime
      end
    end
  end
end
