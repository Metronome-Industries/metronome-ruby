# frozen_string_literal: true

module Metronome
  module Models
    class ScheduledCharge < Metronome::BaseModel
      # @!attribute id
      #   @return [String]
      required :id, String

      # @!attribute product
      #   @return [Metronome::Models::ScheduledCharge::Product]
      required :product, -> { Metronome::Models::ScheduledCharge::Product }

      # @!attribute schedule
      #   @return [Metronome::Models::SchedulePointInTime]
      required :schedule, -> { Metronome::Models::SchedulePointInTime }

      # @!attribute custom_fields
      #   @return [Hash]
      optional :custom_fields, Hash

      # @!attribute name
      #   displayed on invoices
      #   @return [String]
      optional :name, String

      # @!attribute netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #   @return [String]
      optional :netsuite_sales_order_id, String

      class Product < Metronome::BaseModel
        # @!attribute id
        #   @return [String]
        required :id, String

        # @!attribute name
        #   @return [String]
        required :name, String

        # @!parse
        #   # Create a new instance of Product from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id
        #   #   @option data [String] :name
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of ScheduledCharge from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [Object] :product
      #   #   @option data [Object] :schedule
      #   #   @option data [Hash, nil] :custom_fields
      #   #   @option data [String, nil] :name displayed on invoices
      #   #   @option data [String, nil] :netsuite_sales_order_id This field's availability is dependent on your client's configuration.
      #   def initialize(data = {}) = super
    end
  end
end
