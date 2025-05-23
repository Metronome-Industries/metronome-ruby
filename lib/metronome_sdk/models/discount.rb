# frozen_string_literal: true

module MetronomeSDK
  module Models
    class Discount < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute product
      #
      #   @return [MetronomeSDK::Discount::Product]
      required :product, -> { MetronomeSDK::Discount::Product }

      # @!attribute schedule
      #
      #   @return [MetronomeSDK::SchedulePointInTime]
      required :schedule, -> { MetronomeSDK::SchedulePointInTime }

      # @!attribute custom_fields
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String, nil]
      optional :netsuite_sales_order_id, String

      # @!method initialize(id:, product:, schedule:, custom_fields: nil, name: nil, netsuite_sales_order_id: nil)
      #   @param id [String]
      #
      #   @param product [MetronomeSDK::Discount::Product]
      #
      #   @param schedule [MetronomeSDK::SchedulePointInTime]
      #
      #   @param custom_fields [Hash{Symbol=>String}]
      #
      #   @param name [String]
      #
      #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.

      # @see MetronomeSDK::Discount#product
      class Product < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!method initialize(id:, name:)
        #   @param id [String]
        #   @param name [String]
      end
    end
  end
end
