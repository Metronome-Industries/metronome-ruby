# frozen_string_literal: true

module Metronome
  module Models
    class SchedulePointInTime < Metronome::BaseModel
      # @!attribute credit_type
      #   @return [Metronome::Models::CreditTypeData]
      optional :credit_type, -> { Metronome::Models::CreditTypeData }

      # @!attribute schedule_items
      #   @return [Array<Metronome::Models::SchedulePointInTime::ScheduleItem>]
      optional :schedule_items,
               Metronome::ArrayOf.new(-> { Metronome::Models::SchedulePointInTime::ScheduleItem })

      class ScheduleItem < Metronome::BaseModel
        # @!attribute id
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   @return [Float]
        required :amount, Float

        # @!attribute invoice_id
        #   @return [String]
        required :invoice_id, String

        # @!attribute quantity
        #   @return [Float]
        required :quantity, Float

        # @!attribute timestamp
        #   @return [Time]
        required :timestamp, Time

        # @!attribute unit_price
        #   @return [Float]
        required :unit_price, Float

        # @!parse
        #   # Create a new instance of ScheduleItem from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id
        #   #   @option data [Float] :amount
        #   #   @option data [String] :invoice_id
        #   #   @option data [Float] :quantity
        #   #   @option data [String] :timestamp
        #   #   @option data [Float] :unit_price
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of SchedulePointInTime from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Object, nil] :credit_type
      #   #   @option data [Array<Object>, nil] :schedule_items
      #   def initialize(data = {}) = super
    end
  end
end
