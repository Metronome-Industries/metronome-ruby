# frozen_string_literal: true

module MetronomeSDK
  module Models
    class SchedulePointInTime < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute credit_type
      #
      #   @return [MetronomeSDK::CreditTypeData, nil]
      optional :credit_type, -> { MetronomeSDK::CreditTypeData }

      # @!attribute schedule_items
      #
      #   @return [Array<MetronomeSDK::SchedulePointInTime::ScheduleItem>, nil]
      optional :schedule_items,
               -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::SchedulePointInTime::ScheduleItem] }

      # @!method initialize(credit_type: nil, schedule_items: nil)
      #   @param credit_type [MetronomeSDK::CreditTypeData]
      #   @param schedule_items [Array<MetronomeSDK::SchedulePointInTime::ScheduleItem>]

      class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
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

        # @!method initialize(id:, amount:, invoice_id:, quantity:, timestamp:, unit_price:)
        #   @param id [String]
        #   @param amount [Float]
        #   @param invoice_id [String]
        #   @param quantity [Float]
        #   @param timestamp [Time]
        #   @param unit_price [Float]
      end
    end
  end
end
