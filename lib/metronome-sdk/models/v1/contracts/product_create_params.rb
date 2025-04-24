# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class ProductCreateParams < MetronomeSDK::BaseModel
          # @!parse
          #   extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

          # @!attribute name
          #   displayed on invoices
          #
          #   @return [String]
          required :name, String

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::ProductCreateParams::Type]
          required :type, enum: -> { MetronomeSDK::Models::V1::Contracts::ProductCreateParams::Type }

          # @!attribute [r] billable_metric_id
          #   Required for USAGE products
          #
          #   @return [String, nil]
          optional :billable_metric_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :billable_metric_id

          # @!attribute [r] composite_product_ids
          #   Required for COMPOSITE products
          #
          #   @return [Array<String>, nil]
          optional :composite_product_ids, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :composite_product_ids

          # @!attribute [r] composite_tags
          #   Required for COMPOSITE products
          #
          #   @return [Array<String>, nil]
          optional :composite_tags, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :composite_tags

          # @!attribute [r] exclude_free_usage
          #   Beta feature only available for composite products. If true, products with $0
          #     will not be included when computing composite usage. Defaults to false
          #
          #   @return [Boolean, nil]
          optional :exclude_free_usage, MetronomeSDK::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :exclude_free_usage

          # @!attribute [r] is_refundable
          #   This field's availability is dependent on your client's configuration. Defaults
          #     to true.
          #
          #   @return [Boolean, nil]
          optional :is_refundable, MetronomeSDK::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :is_refundable

          # @!attribute [r] netsuite_internal_item_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :netsuite_internal_item_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :netsuite_internal_item_id

          # @!attribute [r] netsuite_overage_item_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :netsuite_overage_item_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :netsuite_overage_item_id

          # @!attribute [r] presentation_group_key
          #   For USAGE products only. Groups usage line items on invoices. The superset of
          #     values in the pricing group key and presentation group key must be set as one
          #     compound group key on the billable metric.
          #
          #   @return [Array<String>, nil]
          optional :presentation_group_key, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :presentation_group_key

          # @!attribute [r] pricing_group_key
          #   For USAGE products only. If set, pricing for this product will be determined for
          #     each pricing_group_key value, as opposed to the product as a whole. The superset
          #     of values in the pricing group key and presentation group key must be set as one
          #     compound group key on the billable metric.
          #
          #   @return [Array<String>, nil]
          optional :pricing_group_key, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :pricing_group_key

          # @!attribute quantity_conversion
          #   Optional. Only valid for USAGE products. If provided, the quantity will be
          #     converted using the provided conversion factor and operation. For example, if
          #     the operation is "multiply" and the conversion factor is 100, then the quantity
          #     will be multiplied by 100. This can be used in cases where data is sent in one
          #     unit and priced in another. For example, data could be sent in MB and priced in
          #     GB. In this case, the conversion factor would be 1024 and the operation would be
          #     "divide".
          #
          #   @return [MetronomeSDK::Models::V1::Contracts::QuantityConversion, nil]
          optional :quantity_conversion, -> { MetronomeSDK::Models::V1::Contracts::QuantityConversion }, nil?: true

          # @!attribute quantity_rounding
          #   Optional. Only valid for USAGE products. If provided, the quantity will be
          #     rounded using the provided rounding method and decimal places. For example, if
          #     the method is "round up" and the decimal places is 0, then the quantity will be
          #     rounded up to the nearest integer.
          #
          #   @return [MetronomeSDK::Models::V1::Contracts::QuantityRounding, nil]
          optional :quantity_rounding, -> { MetronomeSDK::Models::V1::Contracts::QuantityRounding }, nil?: true

          # @!attribute [r] tags
          #
          #   @return [Array<String>, nil]
          optional :tags, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :tags

          # @!parse
          #   # @param name [String]
          #   # @param type [Symbol, MetronomeSDK::Models::V1::Contracts::ProductCreateParams::Type]
          #   # @param billable_metric_id [String]
          #   # @param composite_product_ids [Array<String>]
          #   # @param composite_tags [Array<String>]
          #   # @param exclude_free_usage [Boolean]
          #   # @param is_refundable [Boolean]
          #   # @param netsuite_internal_item_id [String]
          #   # @param netsuite_overage_item_id [String]
          #   # @param presentation_group_key [Array<String>]
          #   # @param pricing_group_key [Array<String>]
          #   # @param quantity_conversion [MetronomeSDK::Models::V1::Contracts::QuantityConversion, nil]
          #   # @param quantity_rounding [MetronomeSDK::Models::V1::Contracts::QuantityRounding, nil]
          #   # @param tags [Array<String>]
          #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(
          #     name:,
          #     type:,
          #     billable_metric_id: nil,
          #     composite_product_ids: nil,
          #     composite_tags: nil,
          #     exclude_free_usage: nil,
          #     is_refundable: nil,
          #     netsuite_internal_item_id: nil,
          #     netsuite_overage_item_id: nil,
          #     presentation_group_key: nil,
          #     pricing_group_key: nil,
          #     quantity_conversion: nil,
          #     quantity_rounding: nil,
          #     tags: nil,
          #     request_options: {},
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :FIXED
          #   # ...
          # in :USAGE
          #   # ...
          # in :COMPOSITE
          #   # ...
          # in :SUBSCRIPTION
          #   # ...
          # in :PROFESSIONAL_SERVICE
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Type < MetronomeSDK::Enum
            FIXED = :FIXED
            USAGE = :USAGE
            COMPOSITE = :COMPOSITE
            SUBSCRIPTION = :SUBSCRIPTION
            PROFESSIONAL_SERVICE = :PROFESSIONAL_SERVICE
            PRO_SERVICE = :PRO_SERVICE

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end
      end
    end
  end
end
