# frozen_string_literal: true

module Metronome
  module Models
    class Discount < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] product
      #   @return [Metronome::Models::Discount::Product]
      required :product, -> { Metronome::Models::Discount::Product }

      # @!attribute [rw] schedule
      #   @return [Metronome::Models::SchedulePointInTime]
      required :schedule, -> { Metronome::Models::SchedulePointInTime }

      # @!attribute [rw] name_
      #   @return [String]
      optional :name_, String

      # @!attribute [rw] netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #   @return [String]
      optional :netsuite_sales_order_id, String

      class Product < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] name_
        #   @return [String]
        required :name_, String

        # Create a new instance of Product from a Hash of raw data.
        #
        # @overload initialize(id: nil, name: nil)
        # @param id [String]
        # @param name [String]
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of Discount from a Hash of raw data.
      #
      # @overload initialize(id: nil, product: nil, schedule: nil, name: nil, netsuite_sales_order_id: nil)
      # @param id [String]
      # @param product [Object]
      # @param schedule [Object]
      # @param name [String]
      # @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
      def initialize(data = {})
        super
      end
    end
  end
end
