# frozen_string_literal: true

module MetronomeSDK
  module Models
    class ProService < MetronomeSDK::Internal::Type::BaseModel
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
      #   amount.
      #
      #   @return [Float]
      required :quantity, Float

      # @!attribute unit_price
      #   Unit price for the charge. Will be multiplied by quantity to determine the
      #   amount and must be specified.
      #
      #   @return [Float]
      required :unit_price, Float

      # @!attribute custom_fields
      #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String, nil]
      optional :netsuite_sales_order_id, String

      # @!method initialize(id:, max_amount:, product_id:, quantity:, unit_price:, custom_fields: nil, description: nil, netsuite_sales_order_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::ProService} for more details.
      #
      #   @param id [String]
      #
      #   @param max_amount [Float] Maximum amount for the term.
      #
      #   @param product_id [String]
      #
      #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
      #
      #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun
      #
      #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
      #
      #   @param description [String]
      #
      #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
    end
  end
end
