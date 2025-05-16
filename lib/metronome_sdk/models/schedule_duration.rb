# frozen_string_literal: true

module MetronomeSDK
  module Models
    class ScheduleDuration < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute schedule_items
      #
      #   @return [Array<MetronomeSDK::ScheduleDuration::ScheduleItem>]
      required :schedule_items,
               -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ScheduleDuration::ScheduleItem] }

      # @!attribute credit_type
      #
      #   @return [MetronomeSDK::CreditTypeData, nil]
      optional :credit_type, -> { MetronomeSDK::CreditTypeData }

      # @!method initialize(schedule_items:, credit_type: nil)
      #   @param schedule_items [Array<MetronomeSDK::ScheduleDuration::ScheduleItem>]
      #   @param credit_type [MetronomeSDK::CreditTypeData]

      class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
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

        # @!method initialize(id:, amount:, ending_before:, starting_at:)
        #   @param id [String]
        #   @param amount [Float]
        #   @param ending_before [Time]
        #   @param starting_at [Time]
      end
    end
  end
end
