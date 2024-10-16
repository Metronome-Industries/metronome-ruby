# frozen_string_literal: true

module Metronome
  module Models
    class ProService < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] max_amount
      #   Maximum amount for the term.
      #   @return [Float]
      required :max_amount, Float

      # @!attribute [rw] product_id
      #   @return [String]
      required :product_id, String

      # @!attribute [rw] quantity
      #   Quantity for the charge. Will be multiplied by unit_price to determine the amount.
      #   @return [Float]
      required :quantity, Float

      # @!attribute [rw] unit_price
      #   Unit price for the charge. Will be multiplied by quantity to determine the amount and must be specified.
      #   @return [Float]
      required :unit_price, Float

      # @!attribute [rw] custom_fields
      #   @return [Hash]
      optional :custom_fields, Hash

      # @!attribute [rw] description
      #   @return [String]
      optional :description, String

      # @!attribute [rw] netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #   @return [String]
      optional :netsuite_sales_order_id, String

      # Create a new instance of ProService from a Hash of raw data.
      #
      # @overload initialize(id: nil, max_amount: nil, product_id: nil, quantity: nil, unit_price: nil, custom_fields: nil, description: nil, netsuite_sales_order_id: nil)
      # @param id [String]
      # @param max_amount [Float] Maximum amount for the term.
      # @param product_id [String]
      # @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the
      #   amount.
      # @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the
      #   amount and must be specified.
      # @param custom_fields [Hash]
      # @param description [String]
      # @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
      def initialize(data = {})
        super
      end
    end
  end
end
