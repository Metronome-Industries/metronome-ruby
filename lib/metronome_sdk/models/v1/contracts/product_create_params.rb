# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        # @see MetronomeSDK::Resources::V1::Contracts::Products#create
        class ProductCreateParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute name
          #   displayed on invoices
          #
          #   @return [String]
          required :name, String

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::ProductCreateParams::Type]
          required :type, enum: -> { MetronomeSDK::V1::Contracts::ProductCreateParams::Type }

          # @!attribute billable_metric_id
          #   Required for USAGE products
          #
          #   @return [String, nil]
          optional :billable_metric_id, String

          # @!attribute composite_product_ids
          #   Required for COMPOSITE products
          #
          #   @return [Array<String>, nil]
          optional :composite_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute composite_tags
          #   Required for COMPOSITE products
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
          #   This field's availability is dependent on your client's configuration. Defaults
          #   to true.
          #
          #   @return [Boolean, nil]
          optional :is_refundable, MetronomeSDK::Internal::Type::Boolean

          # @!attribute netsuite_internal_item_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :netsuite_internal_item_id, String

          # @!attribute netsuite_overage_item_id
          #   This field's availability is dependent on your client's configuration.
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
          #   @return [MetronomeSDK::Models::V1::Contracts::QuantityConversion, nil]
          optional :quantity_conversion, -> { MetronomeSDK::V1::Contracts::QuantityConversion }, nil?: true

          # @!attribute quantity_rounding
          #   Optional. Only valid for USAGE products. If provided, the quantity will be
          #   rounded using the provided rounding method and decimal places. For example, if
          #   the method is "round up" and the decimal places is 0, then the quantity will be
          #   rounded up to the nearest integer.
          #
          #   @return [MetronomeSDK::Models::V1::Contracts::QuantityRounding, nil]
          optional :quantity_rounding, -> { MetronomeSDK::V1::Contracts::QuantityRounding }, nil?: true

          # @!attribute tags
          #
          #   @return [Array<String>, nil]
          optional :tags, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(name:, type:, billable_metric_id: nil, composite_product_ids: nil, composite_tags: nil, exclude_free_usage: nil, is_refundable: nil, netsuite_internal_item_id: nil, netsuite_overage_item_id: nil, presentation_group_key: nil, pricing_group_key: nil, quantity_conversion: nil, quantity_rounding: nil, tags: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Contracts::ProductCreateParams} for more details.
          #
          #   @param name [String] displayed on invoices
          #
          #   @param type [Symbol, MetronomeSDK::Models::V1::Contracts::ProductCreateParams::Type]
          #
          #   @param billable_metric_id [String] Required for USAGE products
          #
          #   @param composite_product_ids [Array<String>] Required for COMPOSITE products
          #
          #   @param composite_tags [Array<String>] Required for COMPOSITE products
          #
          #   @param exclude_free_usage [Boolean] Beta feature only available for composite products. If true, products with $0 wi
          #
          #   @param is_refundable [Boolean] This field's availability is dependent on your client's configuration. Defaults
          #
          #   @param netsuite_internal_item_id [String] This field's availability is dependent on your client's configuration.
          #
          #   @param netsuite_overage_item_id [String] This field's availability is dependent on your client's configuration.
          #
          #   @param presentation_group_key [Array<String>] For USAGE products only. Groups usage line items on invoices. The superset of va
          #
          #   @param pricing_group_key [Array<String>] For USAGE products only. If set, pricing for this product will be determined for
          #
          #   @param quantity_conversion [MetronomeSDK::Models::V1::Contracts::QuantityConversion, nil] Optional. Only valid for USAGE products. If provided, the quantity will be conve
          #
          #   @param quantity_rounding [MetronomeSDK::Models::V1::Contracts::QuantityRounding, nil] Optional. Only valid for USAGE products. If provided, the quantity will be round
          #
          #   @param tags [Array<String>]
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            FIXED = :FIXED
            USAGE = :USAGE
            COMPOSITE = :COMPOSITE
            SUBSCRIPTION = :SUBSCRIPTION
            PROFESSIONAL_SERVICE = :PROFESSIONAL_SERVICE
            PRO_SERVICE = :PRO_SERVICE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
