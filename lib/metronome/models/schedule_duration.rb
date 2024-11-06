# frozen_string_literal: true

module Metronome
  module Models
    class ScheduleDuration < Metronome::BaseModel
      # @!attribute [rw] schedule_items
      #   @return [Array<Metronome::Models::ScheduleDuration::ScheduleItem>]
      required :schedule_items,
               Metronome::ArrayOf.new(
                 -> {
                   Metronome::Models::ScheduleDuration::ScheduleItem
                 }
               )

      # @!attribute [rw] credit_type
      #   @return [Metronome::Models::CreditTypeData]
      optional :credit_type, -> { Metronome::Models::CreditTypeData }

      class ScheduleItem < Metronome::BaseModel
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

        # @!parse
        #   # Create a new instance of ScheduleItem from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id
        #   #   @option data [Float] :amount
        #   #   @option data [String] :ending_before
        #   #   @option data [String] :starting_at
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of ScheduleDuration from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Array<Object>] :schedule_items
      #   #   @option data [Object, nil] :credit_type
      #   def initialize(data = {}) = super
    end
  end
end
