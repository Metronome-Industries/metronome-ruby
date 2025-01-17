# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # pro_service => {
    #   id: String,
    #   max_amount: Float,
    #   product_id: String,
    #   quantity: Float,
    #   unit_price: Float,
    #   **_
    # }
    # ```
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
      #   Quantity for the charge. Will be multiplied by unit_price to determine the amount.
      #
      #   @return [Float]
      required :quantity, Float

      # @!attribute unit_price
      #   Unit price for the charge. Will be multiplied by quantity to determine the amount and must be specified.
      #
      #   @return [Float]
      required :unit_price, Float

      # @!attribute custom_fields
      #
      #   @return [Hash{Symbol=>String}]
      optional :custom_fields, Metronome::HashOf[String]

      # @!attribute description
      #
      #   @return [String]
      optional :description, String

      # @!attribute netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String]
      optional :netsuite_sales_order_id, String

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param max_amount [Float] Maximum amount for the term.
      #   #
      #   # @param product_id [String]
      #   #
      #   # @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the
      #   #   amount.
      #   #
      #   # @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the
      #   #   amount and must be specified.
      #   #
      #   # @param custom_fields [Hash{Symbol=>String}]
      #   #
      #   # @param description [String]
      #   #
      #   # @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
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
