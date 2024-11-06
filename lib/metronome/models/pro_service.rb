# frozen_string_literal: true

module Metronome
  module Models
    class ProService < Metronome::BaseModel
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

      # @!parse
      #   # Create a new instance of ProService from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [Float] :max_amount Maximum amount for the term.
      #   #   @option data [String] :product_id
      #   #   @option data [Float] :quantity Quantity for the charge. Will be multiplied by unit_price to determine the
      #   #     amount.
      #   #   @option data [Float] :unit_price Unit price for the charge. Will be multiplied by quantity to determine the
      #   #     amount and must be specified.
      #   #   @option data [Hash, nil] :custom_fields
      #   #   @option data [String, nil] :description
      #   #   @option data [String, nil] :netsuite_sales_order_id This field's availability is dependent on your client's configuration.
      #   def initialize(data = {}) = super
    end
  end
end
