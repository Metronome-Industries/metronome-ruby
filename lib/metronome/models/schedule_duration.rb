# frozen_string_literal: true

module Metronome
  module Models
    class ScheduleDuration < BaseModel
      # @!attribute [rw] schedule_items
      #   @return [Array<Metronome::Models::ScheduleDuration::ScheduleItem>]
      required :schedule_items,
               Metronome::ArrayOf.new(
                 lambda {
                   Metronome::Models::ScheduleDuration::ScheduleItem
                 }
               )

      # @!attribute [rw] credit_type
      #   @return [Metronome::Models::CreditTypeData]
      optional :credit_type, -> { Metronome::Models::CreditTypeData }

      class ScheduleItem < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] amount
        #   @return [Float]
        required :amount, Float

        # @!attribute [rw] ending_before
        #   @return [Time]
        required :ending_before, Time

        # @!attribute [rw] starting_at
        #   @return [Time]
        required :starting_at, Time
      end
    end
  end
end
