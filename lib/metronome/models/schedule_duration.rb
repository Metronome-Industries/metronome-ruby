# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # schedule_duration => {
    #   schedule_items: -> { Metronome::ArrayOf[Metronome::Models::ScheduleDuration::ScheduleItem] === _1 },
    #   credit_type: Metronome::Models::CreditTypeData
    # }
    # ```
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

      # @example
      # ```ruby
      # schedule_item => {
      #   id: String,
      #   amount: Float,
      #   ending_before: Time,
      #   starting_at: Time
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
        #   # @param ending_before [String]
        #   # @param starting_at [String]
        #   #
        #   def initialize(id:, amount:, ending_before:, starting_at:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
