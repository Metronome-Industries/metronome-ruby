# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        # @see MetronomeSDK::Resources::V1::Contracts::Products#update
        class ProductUpdateParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute product_id
          #   ID of the product to update
          #
          #   @return [String]
          required :product_id, String

          # @!attribute starting_at
          #   Timestamp representing when the update should go into effect. It must be on an
          #   hour boundary (e.g. 1:00, not 1:30).
          #
          #   @return [Time]
          required :starting_at, Time

          # @!attribute billable_metric_id
          #   Available for USAGE products only. If not provided, defaults to product's
          #   current billable metric.
          #
          #   @return [String, nil]
          optional :billable_metric_id, String

          # @!attribute composite_product_ids
          #   Available for COMPOSITE products only. If not provided, defaults to product's
          #   current composite_product_ids.
          #
          #   @return [Array<String>, nil]
          optional :composite_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute composite_tags
          #   Available for COMPOSITE products only. If not provided, defaults to product's
          #   current composite_tags.
          #
          #   @return [Array<String>, nil]
          optional :composite_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute exclude_free_usage
          #   Beta feature only available for composite products. If true, products with $0
          #   will not be included when computing composite usage. Defaults to false
          #
          #   @return [Boolean, nil]
          optional :exclude_free_usage, MetronomeSDK::Internal::Type::Boolean

          # @!attribute is_refundable
          #   Defaults to product's current refundability status. This field's availability is
          #   dependent on your client's configuration.
          #
          #   @return [Boolean, nil]
          optional :is_refundable, MetronomeSDK::Internal::Type::Boolean

          # @!attribute name
          #   displayed on invoices. If not provided, defaults to product's current name.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute netsuite_internal_item_id
          #   If not provided, defaults to product's current netsuite_internal_item_id. This
          #   field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :netsuite_internal_item_id, String

          # @!attribute netsuite_overage_item_id
          #   Available for USAGE and COMPOSITE products only. If not provided, defaults to
          #   product's current netsuite_overage_item_id. This field's availability is
          #   dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :netsuite_overage_item_id, String

          # @!attribute presentation_group_key
          #   For USAGE products only. Groups usage line items on invoices. The superset of
          #   values in the pricing group key and presentation group key must be set as one
          #   compound group key on the billable metric.
          #
          #   @return [Array<String>, nil]
          optional :presentation_group_key, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute pricing_group_key
          #   For USAGE products only. If set, pricing for this product will be determined for
          #   each pricing_group_key value, as opposed to the product as a whole. The superset
          #   of values in the pricing group key and presentation group key must be set as one
          #   compound group key on the billable metric.
          #
          #   @return [Array<String>, nil]
          optional :pricing_group_key, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute quantity_conversion
          #   Optional. Only valid for USAGE products. If provided, the quantity will be
          #   converted using the provided conversion factor and operation. For example, if
          #   the operation is "multiply" and the conversion factor is 100, then the quantity
          #   will be multiplied by 100. This can be used in cases where data is sent in one
          #   unit and priced in another. For example, data could be sent in MB and priced in
          #   GB. In this case, the conversion factor would be 1024 and the operation would be
          #   "divide".
          #
          #   @return [MetronomeSDK::Models::V1::Contracts::ProductUpdateParams::QuantityConversion, nil]
          optional :quantity_conversion,
                   -> { MetronomeSDK::V1::Contracts::ProductUpdateParams::QuantityConversion },
                   nil?: true

          # @!attribute quantity_rounding
          #   Optional. Only valid for USAGE products. If provided, the quantity will be
          #   rounded using the provided rounding method and decimal places. For example, if
          #   the method is "round up" and the decimal places is 0, then the quantity will be
          #   rounded up to the nearest integer.
          #
          #   @return [MetronomeSDK::Models::V1::Contracts::ProductUpdateParams::QuantityRounding, nil]
          optional :quantity_rounding,
                   -> { MetronomeSDK::V1::Contracts::ProductUpdateParams::QuantityRounding },
                   nil?: true

          # @!attribute tags
          #   If not provided, defaults to product's current tags
          #
          #   @return [Array<String>, nil]
          optional :tags, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(product_id:, starting_at:, billable_metric_id: nil, composite_product_ids: nil, composite_tags: nil, exclude_free_usage: nil, is_refundable: nil, name: nil, netsuite_internal_item_id: nil, netsuite_overage_item_id: nil, presentation_group_key: nil, pricing_group_key: nil, quantity_conversion: nil, quantity_rounding: nil, tags: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Contracts::ProductUpdateParams} for more details.
          #
          #   @param product_id [String] ID of the product to update
          #
          #   @param starting_at [Time] Timestamp representing when the update should go into effect. It must be on an h
          #
          #   @param billable_metric_id [String] Available for USAGE products only. If not provided, defaults to product's curren
          #
          #   @param composite_product_ids [Array<String>] Available for COMPOSITE products only. If not provided, defaults to product's cu
          #
          #   @param composite_tags [Array<String>] Available for COMPOSITE products only. If not provided, defaults to product's cu
          #
          #   @param exclude_free_usage [Boolean] Beta feature only available for composite products. If true, products with $0 wi
          #
          #   @param is_refundable [Boolean] Defaults to product's current refundability status. This field's availability is
          #
          #   @param name [String] displayed on invoices. If not provided, defaults to product's current name.
          #
          #   @param netsuite_internal_item_id [String] If not provided, defaults to product's current netsuite_internal_item_id. This f
          #
          #   @param netsuite_overage_item_id [String] Available for USAGE and COMPOSITE products only. If not provided, defaults to pr
          #
          #   @param presentation_group_key [Array<String>] For USAGE products only. Groups usage line items on invoices. The superset of va
          #
          #   @param pricing_group_key [Array<String>] For USAGE products only. If set, pricing for this product will be determined for
          #
          #   @param quantity_conversion [MetronomeSDK::Models::V1::Contracts::ProductUpdateParams::QuantityConversion, nil] Optional. Only valid for USAGE products. If provided, the quantity will be conve
          #
          #   @param quantity_rounding [MetronomeSDK::Models::V1::Contracts::ProductUpdateParams::QuantityRounding, nil] Optional. Only valid for USAGE products. If provided, the quantity will be round
          #
          #   @param tags [Array<String>] If not provided, defaults to product's current tags
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

          class QuantityConversion < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute conversion_factor
            #   The factor to multiply or divide the quantity by.
            #
            #   @return [Float]
            required :conversion_factor, Float

            # @!attribute operation
            #   The operation to perform on the quantity
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::ProductUpdateParams::QuantityConversion::Operation]
            required :operation,
                     enum: -> { MetronomeSDK::V1::Contracts::ProductUpdateParams::QuantityConversion::Operation }

            # @!attribute name
            #   Optional name for this conversion.
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(conversion_factor:, operation:, name: nil)
            #   Optional. Only valid for USAGE products. If provided, the quantity will be
            #   converted using the provided conversion factor and operation. For example, if
            #   the operation is "multiply" and the conversion factor is 100, then the quantity
            #   will be multiplied by 100. This can be used in cases where data is sent in one
            #   unit and priced in another. For example, data could be sent in MB and priced in
            #   GB. In this case, the conversion factor would be 1024 and the operation would be
            #   "divide".
            #
            #   @param conversion_factor [Float] The factor to multiply or divide the quantity by.
            #
            #   @param operation [Symbol, MetronomeSDK::Models::V1::Contracts::ProductUpdateParams::QuantityConversion::Operation] The operation to perform on the quantity
            #
            #   @param name [String] Optional name for this conversion.

            # The operation to perform on the quantity
            #
            # @see MetronomeSDK::Models::V1::Contracts::ProductUpdateParams::QuantityConversion#operation
            module Operation
              extend MetronomeSDK::Internal::Type::Enum

              MULTIPLY = :MULTIPLY
              DIVIDE = :DIVIDE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class QuantityRounding < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute decimal_places
            #
            #   @return [Float]
            required :decimal_places, Float

            # @!attribute rounding_method
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::ProductUpdateParams::QuantityRounding::RoundingMethod]
            required :rounding_method,
                     enum: -> { MetronomeSDK::V1::Contracts::ProductUpdateParams::QuantityRounding::RoundingMethod }

            # @!method initialize(decimal_places:, rounding_method:)
            #   Optional. Only valid for USAGE products. If provided, the quantity will be
            #   rounded using the provided rounding method and decimal places. For example, if
            #   the method is "round up" and the decimal places is 0, then the quantity will be
            #   rounded up to the nearest integer.
            #
            #   @param decimal_places [Float]
            #   @param rounding_method [Symbol, MetronomeSDK::Models::V1::Contracts::ProductUpdateParams::QuantityRounding::RoundingMethod]

            # @see MetronomeSDK::Models::V1::Contracts::ProductUpdateParams::QuantityRounding#rounding_method
            module RoundingMethod
              extend MetronomeSDK::Internal::Type::Enum

              ROUND_UP = :ROUND_UP
              ROUND_DOWN = :ROUND_DOWN
              ROUND_HALF_UP = :ROUND_HALF_UP

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
