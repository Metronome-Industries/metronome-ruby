# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class ProductUpdateParams < Metronome::BaseModel
        # @!attribute product_id
        #   ID of the product to update
        #
        #   @return [String]
        required :product_id, String

        # @!attribute starting_at
        #   Timestamp representing when the update should go into effect. It must be on an hour boundary (e.g. 1:00, not 1:30).
        #
        #   @return [Time]
        required :starting_at, Time

        # @!attribute billable_metric_id
        #   Available for USAGE products only. If not provided, defaults to product's current billable metric.
        #
        #   @return [String]
        optional :billable_metric_id, String

        # @!attribute composite_product_ids
        #   Available for COMPOSITE products only. If not provided, defaults to product's current composite_product_ids.
        #
        #   @return [Array<String>]
        optional :composite_product_ids, Metronome::ArrayOf[String]

        # @!attribute composite_tags
        #   Available for COMPOSITE products only. If not provided, defaults to product's current composite_tags.
        #
        #   @return [Array<String>]
        optional :composite_tags, Metronome::ArrayOf[String]

        # @!attribute exclude_free_usage
        #   Beta feature only available for composite products. If true, products with $0 will not be included when computing composite usage. Defaults to false
        #
        #   @return [Boolean]
        optional :exclude_free_usage, Metronome::BooleanModel

        # @!attribute is_refundable
        #   Defaults to product's current refundability status. This field's availability is dependent on your client's configuration.
        #
        #   @return [Boolean]
        optional :is_refundable, Metronome::BooleanModel

        # @!attribute name
        #   displayed on invoices. If not provided, defaults to product's current name.
        #
        #   @return [String]
        optional :name, String

        # @!attribute netsuite_internal_item_id
        #   If not provided, defaults to product's current netsuite_internal_item_id. This field's availability is dependent on your client's configuration.
        #
        #   @return [String]
        optional :netsuite_internal_item_id, String

        # @!attribute netsuite_overage_item_id
        #   Available for USAGE and COMPOSITE products only. If not provided, defaults to product's current netsuite_overage_item_id. This field's availability is dependent on your client's configuration.
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
        #   If not provided, defaults to product's current tags
        #
        #   @return [Array<String>]
        optional :tags, Metronome::ArrayOf[String]

        # @!parse
        #   # @param product_id [String] ID of the product to update
        #   #
        #   # @param starting_at [String] Timestamp representing when the update should go into effect. It must be on an
        #   #   hour boundary (e.g. 1:00, not 1:30).
        #   #
        #   # @param billable_metric_id [String, nil] Available for USAGE products only. If not provided, defaults to product's
        #   #   current billable metric.
        #   #
        #   # @param composite_product_ids [Array<String>, nil] Available for COMPOSITE products only. If not provided, defaults to product's
        #   #   current composite_product_ids.
        #   #
        #   # @param composite_tags [Array<String>, nil] Available for COMPOSITE products only. If not provided, defaults to product's
        #   #   current composite_tags.
        #   #
        #   # @param exclude_free_usage [Boolean, nil] Beta feature only available for composite products. If true, products with $0
        #   #   will not be included when computing composite usage. Defaults to false
        #   #
        #   # @param is_refundable [Boolean, nil] Defaults to product's current refundability status. This field's availability is
        #   #   dependent on your client's configuration.
        #   #
        #   # @param name [String, nil] displayed on invoices. If not provided, defaults to product's current name.
        #   #
        #   # @param netsuite_internal_item_id [String, nil] If not provided, defaults to product's current netsuite_internal_item_id. This
        #   #   field's availability is dependent on your client's configuration.
        #   #
        #   # @param netsuite_overage_item_id [String, nil] Available for USAGE and COMPOSITE products only. If not provided, defaults to
        #   #   product's current netsuite_overage_item_id. This field's availability is
        #   #   dependent on your client's configuration.
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
        #   # @param tags [Array<String>, nil] If not provided, defaults to product's current tags
        #   #
        #   def initialize(
        #     product_id:,
        #     starting_at:,
        #     billable_metric_id: nil,
        #     composite_product_ids: nil,
        #     composite_tags: nil,
        #     exclude_free_usage: nil,
        #     is_refundable: nil,
        #     name: nil,
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
      end
    end
  end
end
