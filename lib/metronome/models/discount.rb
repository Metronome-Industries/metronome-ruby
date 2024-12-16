# frozen_string_literal: true

module Metronome
  module Models
    class Discount < Metronome::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute product
      #
      #   @return [Metronome::Models::Discount::Product]
      required :product, -> { Metronome::Models::Discount::Product }

      # @!attribute schedule
      #
      #   @return [Metronome::Models::SchedulePointInTime]
      required :schedule, -> { Metronome::Models::SchedulePointInTime }

      # @!attribute name
      #
      #   @return [String]
      optional :name, String

      # @!attribute netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String]
      optional :netsuite_sales_order_id, String

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param product [Metronome::Models::Discount::Product]
      #   #
      #   # @param schedule [Metronome::Models::SchedulePointInTime]
      #   #
      #   # @param name [String, nil]
      #   #
      #   # @param netsuite_sales_order_id [String, nil] This field's availability is dependent on your client's configuration.
      #   #
      #   def initialize(id:, product:, schedule:, name: nil, netsuite_sales_order_id: nil) = super

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
        #   def initialize(id:, name:) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
