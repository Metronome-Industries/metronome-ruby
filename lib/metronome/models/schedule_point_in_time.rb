# frozen_string_literal: true

module Metronome
  module Models
    class SchedulePointInTime < BaseModel
      # @!attribute [rw] credit_type
      #   @return [Metronome::Models::CreditTypeData]
      optional :credit_type, -> { Metronome::Models::CreditTypeData }

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

        # Create a new instance of ScheduleItem from a Hash of raw data.
        #
        # @overload initialize(id: nil, amount: nil, invoice_id: nil, quantity: nil, timestamp: nil, unit_price: nil)
        # @param id [String]
        # @param amount [Float]
        # @param invoice_id [String]
        # @param quantity [Float]
        # @param timestamp [String]
        # @param unit_price [Float]
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of SchedulePointInTime from a Hash of raw data.
      #
      # @overload initialize(credit_type: nil, schedule_items: nil)
      # @param credit_type [Object]
      # @param schedule_items [Array<Object>]
      def initialize(data = {})
        super
      end
    end
  end
end
