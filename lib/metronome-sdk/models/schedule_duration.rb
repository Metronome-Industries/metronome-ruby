# frozen_string_literal: true

module MetronomeSDK
  module Models
    class ScheduleDuration < MetronomeSDK::BaseModel
      # @!attribute schedule_items
      #
      #   @return [Array<MetronomeSDK::Models::ScheduleDuration::ScheduleItem>]
      required :schedule_items,
               -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::ScheduleDuration::ScheduleItem] }

      # @!attribute [r] credit_type
      #
      #   @return [MetronomeSDK::Models::CreditTypeData, nil]
      optional :credit_type, -> { MetronomeSDK::Models::CreditTypeData }

      # @!parse
      #   # @return [MetronomeSDK::Models::CreditTypeData]
      #   attr_writer :credit_type

      # @!parse
      #   # @param schedule_items [Array<MetronomeSDK::Models::ScheduleDuration::ScheduleItem>]
      #   # @param credit_type [MetronomeSDK::Models::CreditTypeData]
      #   #
      #   def initialize(schedule_items:, credit_type: nil, **) = super

      # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

      class ScheduleItem < MetronomeSDK::BaseModel
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

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end
