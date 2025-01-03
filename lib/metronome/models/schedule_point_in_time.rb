# frozen_string_literal: true

module Metronome
  module Models
    class SchedulePointInTime < Metronome::BaseModel
      # @!attribute credit_type
      #
      #   @return [Metronome::Models::CreditTypeData]
      optional :credit_type, -> { Metronome::Models::CreditTypeData }

      # @!attribute schedule_items
      #
      #   @return [Array<Metronome::Models::SchedulePointInTime::ScheduleItem>]
      optional :schedule_items,
               Metronome::ArrayOf[-> {
                 Metronome::Models::SchedulePointInTime::ScheduleItem
               }]

      # @!parse
      #   # @param credit_type [Metronome::Models::CreditTypeData]
      #   # @param schedule_items [Array<Metronome::Models::SchedulePointInTime::ScheduleItem>]
      #   #
      #   def initialize(credit_type: nil, schedule_items: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      class ScheduleItem < Metronome::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute invoice_id
        #
        #   @return [String]
        required :invoice_id, String

        # @!attribute quantity
        #
        #   @return [Float]
        required :quantity, Float

        # @!attribute timestamp
        #
        #   @return [Time]
        required :timestamp, Time

        # @!attribute unit_price
        #
        #   @return [Float]
        required :unit_price, Float

        # @!parse
        #   # @param id [String]
        #   # @param amount [Float]
        #   # @param invoice_id [String]
        #   # @param quantity [Float]
        #   # @param timestamp [String]
        #   # @param unit_price [Float]
        #   #
        #   def initialize(id:, amount:, invoice_id:, quantity:, timestamp:, unit_price:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
