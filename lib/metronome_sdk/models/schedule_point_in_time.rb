# frozen_string_literal: true

module MetronomeSDK
  module Models
    class SchedulePointInTime < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute credit_type
      #
      #   @return [MetronomeSDK::Models::CreditTypeData, nil]
      optional :credit_type, -> { MetronomeSDK::CreditTypeData }

      # @!attribute schedule_items
      #
      #   @return [Array<MetronomeSDK::Models::SchedulePointInTime::ScheduleItem>, nil]
      optional :schedule_items,
               -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::SchedulePointInTime::ScheduleItem] }

      # @!method initialize(credit_type: nil, schedule_items: nil)
      #   @param credit_type [MetronomeSDK::Models::CreditTypeData]
      #   @param schedule_items [Array<MetronomeSDK::Models::SchedulePointInTime::ScheduleItem>]

      class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #
        #   @return [Float]
        required :amount, Float

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

        # @!attribute invoice_id
        #
        #   @return [String, nil]
        optional :invoice_id, String, nil?: true

        # @!method initialize(id:, amount:, quantity:, timestamp:, unit_price:, invoice_id: nil)
        #   @param id [String]
        #   @param amount [Float]
        #   @param quantity [Float]
        #   @param timestamp [Time]
        #   @param unit_price [Float]
        #   @param invoice_id [String, nil]
      end
    end
  end
end
