# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      # @example
      # ```ruby
      # product_list_item_state => {
      #   created_at: Time,
      #   created_by: String,
      #   name: String,
      #   billable_metric_id: String,
      #   composite_product_ids: -> { Metronome::ArrayOf[String] === _1 },
      #   **_
      # }
      # ```
      class ProductListItemState < Metronome::BaseModel
        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute created_by
        #
        #   @return [String]
        required :created_by, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute [r] billable_metric_id
        #
        #   @return [String, nil]
        optional :billable_metric_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :billable_metric_id

        # @!attribute [r] composite_product_ids
        #
        #   @return [Array<String>]
        optional :composite_product_ids, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :composite_product_ids

        # @!attribute [r] composite_tags
        #
        #   @return [Array<String>]
        optional :composite_tags, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :composite_tags

        # @!attribute [r] exclude_free_usage
        #
        #   @return [Boolean, nil]
        optional :exclude_free_usage, Metronome::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :exclude_free_usage

        # @!attribute [r] is_refundable
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Boolean, nil]
        optional :is_refundable, Metronome::BooleanModel

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
        #   @return [Array<String>]
        optional :presentation_group_key, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :presentation_group_key

        # @!attribute [r] pricing_group_key
        #   For USAGE products only. If set, pricing for this product will be determined for
        #     each pricing_group_key value, as opposed to the product as a whole. The superset
        #     of values in the pricing group key and presentation group key must be set as one
        #     compound group key on the billable metric.
        #
        #   @return [Array<String>]
        optional :pricing_group_key, Metronome::ArrayOf[String]

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
        #   @return [Metronome::Models::Contracts::QuantityConversion, nil]
        optional :quantity_conversion, -> { Metronome::Models::Contracts::QuantityConversion }, nil?: true

        # @!attribute quantity_rounding
        #   Optional. Only valid for USAGE products. If provided, the quantity will be
        #     rounded using the provided rounding method and decimal places. For example, if
        #     the method is "round up" and the decimal places is 0, then the quantity will be
        #     rounded up to the nearest integer.
        #
        #   @return [Metronome::Models::Contracts::QuantityRounding, nil]
        optional :quantity_rounding, -> { Metronome::Models::Contracts::QuantityRounding }, nil?: true

        # @!attribute [r] starting_at
        #
        #   @return [Time, nil]
        optional :starting_at, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :starting_at

        # @!attribute [r] tags
        #
        #   @return [Array<String>]
        optional :tags, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :tags

        # @!parse
        #   # @param created_at [String]
        #   # @param created_by [String]
        #   # @param name [String]
        #   # @param billable_metric_id [String]
        #   # @param composite_product_ids [Array<String>]
        #   # @param composite_tags [Array<String>]
        #   # @param exclude_free_usage [Boolean]
        #   # @param is_refundable [Boolean]
        #   # @param netsuite_internal_item_id [String]
        #   # @param netsuite_overage_item_id [String]
        #   # @param presentation_group_key [Array<String>]
        #   # @param pricing_group_key [Array<String>]
        #   # @param quantity_conversion [Metronome::Models::Contracts::QuantityConversion, nil]
        #   # @param quantity_rounding [Metronome::Models::Contracts::QuantityRounding, nil]
        #   # @param starting_at [String]
        #   # @param tags [Array<String>]
        #   #
        #   def initialize(
        #     created_at:,
        #     created_by:,
        #     name:,
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
        #     starting_at: nil,
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
