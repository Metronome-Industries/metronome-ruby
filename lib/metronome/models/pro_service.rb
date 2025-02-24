# frozen_string_literal: true

module Metronome
  module Models
    class ProService < Metronome::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute max_amount
      #   Maximum amount for the term.
      #
      #   @return [Float]
      required :max_amount, Float

      # @!attribute product_id
      #
      #   @return [String]
      required :product_id, String

      # @!attribute quantity
      #   Quantity for the charge. Will be multiplied by unit_price to determine the
      #     amount.
      #
      #   @return [Float]
      required :quantity, Float

      # @!attribute unit_price
      #   Unit price for the charge. Will be multiplied by quantity to determine the
      #     amount and must be specified.
      #
      #   @return [Float]
      required :unit_price, Float

      # @!attribute [r] custom_fields
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :custom_fields, Metronome::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :custom_fields

      # @!attribute [r] description
      #
      #   @return [String, nil]
      optional :description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :description

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
      #   # @param max_amount [Float]
      #   # @param product_id [String]
      #   # @param quantity [Float]
      #   # @param unit_price [Float]
      #   # @param custom_fields [Hash{Symbol=>String}]
      #   # @param description [String]
      #   # @param netsuite_sales_order_id [String]
      #   #
      #   def initialize(
      #     id:,
      #     max_amount:,
      #     product_id:,
      #     quantity:,
      #     unit_price:,
      #     custom_fields: nil,
      #     description: nil,
      #     netsuite_sales_order_id: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
