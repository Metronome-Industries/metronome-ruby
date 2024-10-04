# frozen_string_literal: true

module Metronome
  module Models
    class ProductListResponse < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] current
      #   @return [Metronome::Models::ProductListItemState]
      required :current, -> { Metronome::Models::ProductListItemState }

      # @!attribute [rw] initial
      #   @return [Metronome::Models::ProductListItemState]
      required :initial, -> { Metronome::Models::ProductListItemState }

      # @!attribute [rw] type
      #   @return [Symbol, Metronome::Models::ProductListResponse::Type]
      required :type, enum: -> { Metronome::Models::ProductListResponse::Type }

      # @!attribute [rw] updates
      #   @return [Array<Metronome::Models::ProductListResponse::Update>]
      required :updates, Metronome::ArrayOf.new(-> { Metronome::Models::ProductListResponse::Update })

      # @!attribute [rw] archived_at
      #   @return [DateTime]
      optional :archived_at, DateTime

      # @!attribute [rw] custom_fields
      #   @return [Hash]
      optional :custom_fields, Hash

      class Type < Metronome::Enum
        USAGE = :USAGE
        SUBSCRIPTION = :SUBSCRIPTION
        COMPOSITE = :COMPOSITE
        FIXED = :FIXED
        PRO_SERVICE = :PRO_SERVICE
      end

      class Update < BaseModel
        # @!attribute [rw] created_at
        #   @return [DateTime]
        required :created_at, DateTime

        # @!attribute [rw] created_by
        #   @return [String]
        required :created_by, String

        # @!attribute [rw] billable_metric_id
        #   @return [String]
        optional :billable_metric_id, String

        # @!attribute [rw] composite_product_ids
        #   @return [Array<String>]
        optional :composite_product_ids, Metronome::ArrayOf.new(String)

        # @!attribute [rw] composite_tags
        #   @return [Array<String>]
        optional :composite_tags, Metronome::ArrayOf.new(String)

        # @!attribute [rw] exclude_free_usage
        #   @return [Boolean]
        optional :exclude_free_usage, Metronome::BooleanModel

        # @!attribute [rw] is_refundable
        #   @return [Boolean]
        optional :is_refundable, Metronome::BooleanModel

        # @!attribute [rw] name_
        #   @return [String]
        optional :name_, String

        # @!attribute [rw] netsuite_internal_item_id
        #   This field's availability is dependent on your client's configuration.
        #   @return [String]
        optional :netsuite_internal_item_id, String

        # @!attribute [rw] netsuite_overage_item_id
        #   This field's availability is dependent on your client's configuration.
        #   @return [String]
        optional :netsuite_overage_item_id, String

        # @!attribute [rw] presentation_group_key
        #   For USAGE products only. Groups usage line items on invoices.
        #   @return [Array<String>]
        optional :presentation_group_key, Metronome::ArrayOf.new(String)

        # @!attribute [rw] pricing_group_key
        #   For USAGE products only. If set, pricing for this product will be determined for each pricing_group_key value, as opposed to the product as a whole.
        #   @return [Array<String>]
        optional :pricing_group_key, Metronome::ArrayOf.new(String)

        # @!attribute [rw] quantity_conversion
        #   Optional. Only valid for USAGE products. If provided, the quantity will be converted using the provided conversion factor and operation. For example, if the operation is "multiply" and the conversion factor is 100, then the quantity will be multiplied by 100. This can be used in cases where data is sent in one unit and priced in another.  For example, data could be sent in MB and priced in GB. In this case, the conversion factor would be 1024 and the operation would be "divide".
        #   @return [Metronome::Models::QuantityConversion]
        optional :quantity_conversion, -> { Metronome::Models::QuantityConversion }

        # @!attribute [rw] quantity_rounding
        #   Optional. Only valid for USAGE products. If provided, the quantity will be rounded using the provided rounding method and decimal places. For example, if the method is "round up" and the decimal places is 0, then the quantity will be rounded up to the nearest integer.
        #   @return [Metronome::Models::QuantityRounding]
        optional :quantity_rounding, -> { Metronome::Models::QuantityRounding }

        # @!attribute [rw] starting_at
        #   @return [DateTime]
        optional :starting_at, DateTime

        # @!attribute [rw] tags
        #   @return [Array<String>]
        optional :tags, Metronome::ArrayOf.new(String)
      end
    end
  end
end
