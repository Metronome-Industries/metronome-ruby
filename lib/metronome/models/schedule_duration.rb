# frozen_string_literal: true

module Metronome
  module Models
    class ScheduleDuration < Metronome::BaseModel
      # @!attribute schedule_items
      #
      #   @return [Array<Metronome::Models::ScheduleDuration::ScheduleItem>]
      required :schedule_items, -> { Metronome::ArrayOf[Metronome::Models::ScheduleDuration::ScheduleItem] }

      # @!attribute [r] credit_type
      #
      #   @return [Metronome::Models::CreditTypeData, nil]
      optional :credit_type, -> { Metronome::Models::CreditTypeData }

      # @!parse
      #   # @return [Metronome::Models::CreditTypeData]
      #   attr_writer :credit_type

      # @!parse
      #   # @param schedule_items [Array<Metronome::Models::ScheduleDuration::ScheduleItem>]
      #   # @param credit_type [Metronome::Models::CreditTypeData]
      #   #
      #   def initialize(schedule_items:, credit_type: nil, **) = super

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

        # @!attribute ending_before
        #
        #   @return [Time]
        required :ending_before, Time

        # @!attribute starting_at
        #
        #   @return [Time]
        required :starting_at, Time

        # @!parse
        #   # @param id [String]
        #   # @param amount [Float]
        #   # @param ending_before [Time]
        #   # @param starting_at [Time]
        #   #
        #   def initialize(id:, amount:, ending_before:, starting_at:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
