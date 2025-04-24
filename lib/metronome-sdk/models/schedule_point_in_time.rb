# frozen_string_literal: true

module MetronomeSDK
  module Models
    class SchedulePointInTime < MetronomeSDK::BaseModel
      # @!attribute [r] credit_type
      #
      #   @return [MetronomeSDK::Models::CreditTypeData, nil]
      optional :credit_type, -> { MetronomeSDK::Models::CreditTypeData }

      # @!parse
      #   # @return [MetronomeSDK::Models::CreditTypeData]
      #   attr_writer :credit_type

      # @!attribute [r] schedule_items
      #
      #   @return [Array<MetronomeSDK::Models::SchedulePointInTime::ScheduleItem>, nil]
      optional :schedule_items,
               -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::SchedulePointInTime::ScheduleItem] }

      # @!parse
      #   # @return [Array<MetronomeSDK::Models::SchedulePointInTime::ScheduleItem>]
      #   attr_writer :schedule_items

      # @!parse
      #   # @param credit_type [MetronomeSDK::Models::CreditTypeData]
      #   # @param schedule_items [Array<MetronomeSDK::Models::SchedulePointInTime::ScheduleItem>]
      #   #
      #   def initialize(credit_type: nil, schedule_items: nil, **) = super

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

        # @!parse
        #   # @param id [String]
        #   # @param amount [Float]
        #   # @param invoice_id [String]
        #   # @param quantity [Float]
        #   # @param timestamp [Time]
        #   # @param unit_price [Float]
        #   #
        #   def initialize(id:, amount:, invoice_id:, quantity:, timestamp:, unit_price:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end
