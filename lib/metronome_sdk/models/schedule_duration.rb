# frozen_string_literal: true

module MetronomeSDK
  module Models
    class ScheduleDuration < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute schedule_items
      #
      #   @return [Array<MetronomeSDK::Models::ScheduleDuration::ScheduleItem>]
      required :schedule_items,
               -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ScheduleDuration::ScheduleItem] }

      # @!attribute access_type
      #   Indicates how the balance is drawn down. `SPEND` deducts the dollar cost of
      #   usage. `QUANTITY` deducts the number of units used.
      #
      #   @return [Symbol, MetronomeSDK::Models::ScheduleDuration::AccessType, nil]
      optional :access_type, enum: -> { MetronomeSDK::ScheduleDuration::AccessType }

      # @!attribute credit_type
      #
      #   @return [MetronomeSDK::Models::CreditTypeData, nil]
      optional :credit_type, -> { MetronomeSDK::CreditTypeData }

      # @!method initialize(schedule_items:, access_type: nil, credit_type: nil)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::ScheduleDuration} for more details.
      #
      #   @param schedule_items [Array<MetronomeSDK::Models::ScheduleDuration::ScheduleItem>]
      #
      #   @param access_type [Symbol, MetronomeSDK::Models::ScheduleDuration::AccessType] Indicates how the balance is drawn down. `SPEND` deducts the dollar cost of usag
      #
      #   @param credit_type [MetronomeSDK::Models::CreditTypeData]

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

      # Indicates how the balance is drawn down. `SPEND` deducts the dollar cost of
      # usage. `QUANTITY` deducts the number of units used.
      #
      # @see MetronomeSDK::Models::ScheduleDuration#access_type
      module AccessType
        extend MetronomeSDK::Internal::Type::Enum

        SPEND = :SPEND
        QUANTITY = :QUANTITY

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
