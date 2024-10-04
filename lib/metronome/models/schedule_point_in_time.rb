# frozen_string_literal: true

module Metronome
  module Models
    class SchedulePointInTime < BaseModel
      # @!attribute [rw] credit_type
      #   @return [Metronome::Models::CreditType]
      optional :credit_type, -> { Metronome::Models::CreditType }

      # @!attribute [rw] schedule_items
      #   @return [Array<Metronome::Models::SchedulePointInTime::ScheduleItem>]
      optional :schedule_items,
               Metronome::ArrayOf.new(-> { Metronome::Models::SchedulePointInTime::ScheduleItem })

      class ScheduleItem < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] amount
        #   @return [Float]
        required :amount, Float

        # @!attribute [rw] invoice_id
        #   @return [String]
        required :invoice_id, String

        # @!attribute [rw] quantity
        #   @return [Float]
        required :quantity, Float

        # @!attribute [rw] timestamp
        #   @return [Time]
        required :timestamp, Time

        # @!attribute [rw] unit_price
        #   @return [Float]
        required :unit_price, Float
      end
    end
  end
end
