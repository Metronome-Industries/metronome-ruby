# frozen_string_literal: true

module Metronome
  module Models
    class Discount < Metronome::BaseModel
      # @!attribute id
      #   @return [String]
      required :id, String

      # @!attribute product
      #   @return [Metronome::Models::Discount::Product]
      required :product, -> { Metronome::Models::Discount::Product }

      # @!attribute schedule
      #   @return [Metronome::Models::SchedulePointInTime]
      required :schedule, -> { Metronome::Models::SchedulePointInTime }

      # @!attribute name
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
      #   # Create a new instance of Discount from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [Object] :product
      #   #   @option data [Object] :schedule
      #   #   @option data [String, nil] :name
      #   #   @option data [String, nil] :netsuite_sales_order_id This field's availability is dependent on your client's configuration.
      #   def initialize(data = {}) = super
    end
  end
end
