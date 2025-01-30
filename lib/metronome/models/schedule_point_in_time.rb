# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # schedule_point_in_time => {
    #   credit_type: Metronome::Models::CreditTypeData,
    #   schedule_items: -> { Metronome::ArrayOf[Metronome::Models::SchedulePointInTime::ScheduleItem] === _1 }
    # }
    # ```
    class SchedulePointInTime < Metronome::BaseModel
      # @!attribute [r] credit_type
      #
      #   @return [Metronome::Models::CreditTypeData, nil]
      optional :credit_type, -> { Metronome::Models::CreditTypeData }

      # @!parse
      #   # @return [Metronome::Models::CreditTypeData]
      #   attr_writer :credit_type

      # @!attribute [r] schedule_items
      #
      #   @return [Array<Metronome::Models::SchedulePointInTime::ScheduleItem>, nil]
      optional :schedule_items,
               -> {
                 Metronome::ArrayOf[Metronome::Models::SchedulePointInTime::ScheduleItem]
               }

      # @!parse
      #   # @return [Array<Metronome::Models::SchedulePointInTime::ScheduleItem>]
      #   attr_writer :schedule_items

      # @!parse
      #   # @param credit_type [Metronome::Models::CreditTypeData]
      #   # @param schedule_items [Array<Metronome::Models::SchedulePointInTime::ScheduleItem>]
      #   #
      #   def initialize(credit_type: nil, schedule_items: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      # ```ruby
      # schedule_item => {
      #   id: String,
      #   amount: Float,
      #   invoice_id: String,
      #   quantity: Float,
      #   timestamp: Time
      # }
      # ```
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
        #   # @param timestamp [Time]
        #   # @param unit_price [Float]
        #   #
        #   def initialize(id:, amount:, invoice_id:, quantity:, timestamp:, unit_price:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
