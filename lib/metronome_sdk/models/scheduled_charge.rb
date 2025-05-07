# frozen_string_literal: true

module MetronomeSDK
  module Models
    class ScheduledCharge < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute product
      #
      #   @return [MetronomeSDK::ScheduledCharge::Product]
      required :product, -> { MetronomeSDK::ScheduledCharge::Product }

      # @!attribute schedule
      #
      #   @return [MetronomeSDK::SchedulePointInTime]
      required :schedule, -> { MetronomeSDK::SchedulePointInTime }

      # @!attribute archived_at
      #
      #   @return [Time, nil]
      optional :archived_at, Time

      # @!attribute custom_fields
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

      # @!attribute name
      #   displayed on invoices
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String, nil]
      optional :netsuite_sales_order_id, String

      # @!method initialize(id:, product:, schedule:, archived_at: nil, custom_fields: nil, name: nil, netsuite_sales_order_id: nil)
      #   @param id [String]
      #
      #   @param product [MetronomeSDK::ScheduledCharge::Product]
      #
      #   @param schedule [MetronomeSDK::SchedulePointInTime]
      #
      #   @param archived_at [Time]
      #
      #   @param custom_fields [Hash{Symbol=>String}]
      #
      #   @param name [String] displayed on invoices
      #
      #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.

      # @see MetronomeSDK::ScheduledCharge#product
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
