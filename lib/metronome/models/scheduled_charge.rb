# frozen_string_literal: true

module Metronome
  module Models
    class ScheduledCharge < Metronome::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute product
      #
      #   @return [Metronome::Models::ScheduledCharge::Product]
      required :product, -> { Metronome::Models::ScheduledCharge::Product }

      # @!attribute schedule
      #
      #   @return [Metronome::Models::SchedulePointInTime]
      required :schedule, -> { Metronome::Models::SchedulePointInTime }

      # @!attribute [r] custom_fields
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :custom_fields, Metronome::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :custom_fields

      # @!attribute [r] name
      #   displayed on invoices
      #
      #   @return [String, nil]
      optional :name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :name

      # @!attribute [r] netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String, nil]
      optional :netsuite_sales_order_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :netsuite_sales_order_id

      # @!parse
      #   # @param id [String]
      #   # @param product [Metronome::Models::ScheduledCharge::Product]
      #   # @param schedule [Metronome::Models::SchedulePointInTime]
      #   # @param custom_fields [Hash{Symbol=>String}]
      #   # @param name [String]
      #   # @param netsuite_sales_order_id [String]
      #   #
      #   def initialize(id:, product:, schedule:, custom_fields: nil, name: nil, netsuite_sales_order_id: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      class Product < Metronome::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!parse
        #   # @param id [String]
        #   # @param name [String]
        #   #
        #   def initialize(id:, name:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
