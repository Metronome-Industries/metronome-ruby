# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class ProductCreateParams < Metronome::BaseModel
        # @!attribute name
        #   displayed on invoices
        #
        #   @return [String]
        required :name, String

        # @!attribute type
        #
        #   @return [Symbol, Metronome::Models::Contracts::ProductCreateParams::Type]
        required :type, enum: -> { Metronome::Models::Contracts::ProductCreateParams::Type }

        # @!attribute billable_metric_id
        #   Required for USAGE products
        #
        #   @return [String]
        optional :billable_metric_id, String

        # @!attribute composite_product_ids
        #   Required for COMPOSITE products
        #
        #   @return [Array<String>]
        optional :composite_product_ids, Metronome::ArrayOf[String]

        # @!attribute composite_tags
        #   Required for COMPOSITE products
        #
        #   @return [Array<String>]
        optional :composite_tags, Metronome::ArrayOf[String]

        # @!attribute exclude_free_usage
        #   Beta feature only available for composite products. If true, products with $0 will not be included when computing composite usage. Defaults to false
        #
        #   @return [Boolean]
        optional :exclude_free_usage, Metronome::BooleanModel

        # @!attribute is_refundable
        #   This field's availability is dependent on your client's configuration. Defaults to true.
        #
        #   @return [Boolean]
        optional :is_refundable, Metronome::BooleanModel

        # @!attribute netsuite_internal_item_id
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [String]
        optional :netsuite_internal_item_id, String

        # @!attribute netsuite_overage_item_id
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [String]
        optional :netsuite_overage_item_id, String

        # @!attribute presentation_group_key
        #   For USAGE products only. Groups usage line items on invoices. The superset of values in the pricing group key and presentation group key must be set as one compound group key on the billable metric.
        #
        #   @return [Array<String>]
        optional :presentation_group_key, Metronome::ArrayOf[String]

        # @!attribute pricing_group_key
        #   For USAGE products only. If set, pricing for this product will be determined for each pricing_group_key value, as opposed to the product as a whole. The superset of values in the pricing group key and presentation group key must be set as one compound group key on the billable metric.
        #
        #   @return [Array<String>]
        optional :pricing_group_key, Metronome::ArrayOf[String]

        # @!attribute quantity_conversion
        #   Optional. Only valid for USAGE products. If provided, the quantity will be converted using the provided conversion factor and operation. For example, if the operation is "multiply" and the conversion factor is 100, then the quantity will be multiplied by 100. This can be used in cases where data is sent in one unit and priced in another.  For example, data could be sent in MB and priced in GB. In this case, the conversion factor would be 1024 and the operation would be "divide".
        #
        #   @return [Metronome::Models::Contracts::QuantityConversion]
        optional :quantity_conversion, -> { Metronome::Models::Contracts::QuantityConversion }

        # @!attribute quantity_rounding
        #   Optional. Only valid for USAGE products. If provided, the quantity will be rounded using the provided rounding method and decimal places. For example, if the method is "round up" and the decimal places is 0, then the quantity will be rounded up to the nearest integer.
        #
        #   @return [Metronome::Models::Contracts::QuantityRounding]
        optional :quantity_rounding, -> { Metronome::Models::Contracts::QuantityRounding }

        # @!attribute tags
        #
        #   @return [Array<String>]
        optional :tags, Metronome::ArrayOf[String]

        # @!parse
        #   # @param name [String] displayed on invoices
        #   #
        #   # @param type [String]
        #   #
        #   # @param billable_metric_id [String, nil] Required for USAGE products
        #   #
        #   # @param composite_product_ids [Array<String>, nil] Required for COMPOSITE products
        #   #
        #   # @param composite_tags [Array<String>, nil] Required for COMPOSITE products
        #   #
        #   # @param exclude_free_usage [Boolean, nil] Beta feature only available for composite products. If true, products with $0
        #   #   will not be included when computing composite usage. Defaults to false
        #   #
        #   # @param is_refundable [Boolean, nil] This field's availability is dependent on your client's configuration. Defaults
        #   #   to true.
        #   #
        #   # @param netsuite_internal_item_id [String, nil] This field's availability is dependent on your client's configuration.
        #   #
        #   # @param netsuite_overage_item_id [String, nil] This field's availability is dependent on your client's configuration.
        #   #
        #   # @param presentation_group_key [Array<String>, nil] For USAGE products only. Groups usage line items on invoices. The superset of
        #   #   values in the pricing group key and presentation group key must be set as one
        #   #   compound group key on the billable metric.
        #   #
        #   # @param pricing_group_key [Array<String>, nil] For USAGE products only. If set, pricing for this product will be determined for
        #   #   each pricing_group_key value, as opposed to the product as a whole. The superset
        #   #   of values in the pricing group key and presentation group key must be set as one
        #   #   compound group key on the billable metric.
        #   #
        #   # @param quantity_conversion [Metronome::Models::Contracts::QuantityConversion, nil] Optional. Only valid for USAGE products. If provided, the quantity will be
        #   #   converted using the provided conversion factor and operation. For example, if
        #   #   the operation is "multiply" and the conversion factor is 100, then the quantity
        #   #   will be multiplied by 100. This can be used in cases where data is sent in one
        #   #   unit and priced in another. For example, data could be sent in MB and priced in
        #   #   GB. In this case, the conversion factor would be 1024 and the operation would be
        #   #   "divide".
        #   #
        #   # @param quantity_rounding [Metronome::Models::Contracts::QuantityRounding, nil] Optional. Only valid for USAGE products. If provided, the quantity will be
        #   #   rounded using the provided rounding method and decimal places. For example, if
        #   #   the method is "round up" and the decimal places is 0, then the quantity will be
        #   #   rounded up to the nearest integer.
        #   #
        #   # @param tags [Array<String>, nil]
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
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
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
        class Type < Metronome::Enum
          FIXED = :FIXED
          USAGE = :USAGE
          COMPOSITE = :COMPOSITE
          SUBSCRIPTION = :SUBSCRIPTION
          PROFESSIONAL_SERVICE = :PROFESSIONAL_SERVICE
          PRO_SERVICE = :PRO_SERVICE

          finalize!
        end
      end
    end
  end
end
