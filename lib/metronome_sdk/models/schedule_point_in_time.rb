# frozen_string_literal: true

module MetronomeSDK
  module Models
    class SchedulePointInTime < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute credit_type
      #
      #   @return [MetronomeSDK::Models::CreditTypeData, nil]
      optional :credit_type, -> { MetronomeSDK::CreditTypeData }

      # @!attribute do_not_invoice
      #   This field is only applicable to commit invoice schedules. If true, this
      #   schedule will not generate an invoice.
      #
      #   @return [Boolean, nil]
      optional :do_not_invoice, MetronomeSDK::Internal::Type::Boolean

      # @!attribute quantity_to_fiat_conversion_rate
      #   Conversion rate from unused quantity units to the invoice currency for a
      #   quantity-based postpaid commit.
      #
      #   @return [Float, nil]
      optional :quantity_to_fiat_conversion_rate, Float

      # @!attribute schedule_items
      #
      #   @return [Array<MetronomeSDK::Models::SchedulePointInTime::ScheduleItem>, nil]
      optional :schedule_items,
               -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::SchedulePointInTime::ScheduleItem] }

      # @!method initialize(credit_type: nil, do_not_invoice: nil, quantity_to_fiat_conversion_rate: nil, schedule_items: nil)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::SchedulePointInTime} for more details.
      #
      #   @param credit_type [MetronomeSDK::Models::CreditTypeData]
      #
      #   @param do_not_invoice [Boolean] This field is only applicable to commit invoice schedules. If true, this schedul
      #
      #   @param quantity_to_fiat_conversion_rate [Float] Conversion rate from unused quantity units to the invoice currency for a quantit
      #
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
