# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class ProductRetrieveResponse < Metronome::BaseModel
        # @!attribute data
        #   @return [Metronome::Models::Contracts::ProductRetrieveResponse::Data]
        required :data, -> { Metronome::Models::Contracts::ProductRetrieveResponse::Data }

        class Data < Metronome::BaseModel
          # @!attribute id
          #   @return [String]
          required :id, String

          # @!attribute current
          #   @return [Metronome::Models::Contracts::ProductListItemState]
          required :current, -> { Metronome::Models::Contracts::ProductListItemState }

          # @!attribute initial
          #   @return [Metronome::Models::Contracts::ProductListItemState]
          required :initial, -> { Metronome::Models::Contracts::ProductListItemState }

          # @!attribute type
          #   @return [Symbol, Metronome::Models::Contracts::ProductRetrieveResponse::Data::Type]
          required :type, enum: -> { Metronome::Models::Contracts::ProductRetrieveResponse::Data::Type }

          # @!attribute updates
          #   @return [Array<Metronome::Models::Contracts::ProductRetrieveResponse::Data::Update>]
          required :updates,
                   Metronome::ArrayOf.new(
                     -> {
                       Metronome::Models::Contracts::ProductRetrieveResponse::Data::Update
                     }
                   )

          # @!attribute archived_at
          #   @return [Time]
          optional :archived_at, Time

          # @!attribute custom_fields
          #   @return [Hash]
          optional :custom_fields, Hash

          class Type < Metronome::Enum
            USAGE = :USAGE
            SUBSCRIPTION = :SUBSCRIPTION
            COMPOSITE = :COMPOSITE
            FIXED = :FIXED
            PRO_SERVICE = :PRO_SERVICE
          end

          class Update < Metronome::BaseModel
            # @!attribute created_at
            #   @return [Time]
            required :created_at, Time

            # @!attribute created_by
            #   @return [String]
            required :created_by, String

            # @!attribute billable_metric_id
            #   @return [String]
            optional :billable_metric_id, String

            # @!attribute composite_product_ids
            #   @return [Array<String>]
            optional :composite_product_ids, Metronome::ArrayOf.new(String)

            # @!attribute composite_tags
            #   @return [Array<String>]
            optional :composite_tags, Metronome::ArrayOf.new(String)

            # @!attribute exclude_free_usage
            #   @return [Boolean]
            optional :exclude_free_usage, Metronome::BooleanModel

            # @!attribute is_refundable
            #   @return [Boolean]
            optional :is_refundable, Metronome::BooleanModel

            # @!attribute name
            #   @return [String]
            optional :name, String

            # @!attribute netsuite_internal_item_id
            #   This field's availability is dependent on your client's configuration.
            #   @return [String]
            optional :netsuite_internal_item_id, String

            # @!attribute netsuite_overage_item_id
            #   This field's availability is dependent on your client's configuration.
            #   @return [String]
            optional :netsuite_overage_item_id, String

            # @!attribute presentation_group_key
            #   For USAGE products only. Groups usage line items on invoices. The superset of values in the pricing group key and presentation group key must be set as one compound group key on the billable metric.
            #   @return [Array<String>]
            optional :presentation_group_key, Metronome::ArrayOf.new(String)

            # @!attribute pricing_group_key
            #   For USAGE products only. If set, pricing for this product will be determined for each pricing_group_key value, as opposed to the product as a whole. The superset of values in the pricing group key and presentation group key must be set as one compound group key on the billable metric.
            #   @return [Array<String>]
            optional :pricing_group_key, Metronome::ArrayOf.new(String)

            # @!attribute quantity_conversion
            #   Optional. Only valid for USAGE products. If provided, the quantity will be converted using the provided conversion factor and operation. For example, if the operation is "multiply" and the conversion factor is 100, then the quantity will be multiplied by 100. This can be used in cases where data is sent in one unit and priced in another.  For example, data could be sent in MB and priced in GB. In this case, the conversion factor would be 1024 and the operation would be "divide".
            #   @return [Metronome::Models::Contracts::QuantityConversion]
            optional :quantity_conversion, -> { Metronome::Models::Contracts::QuantityConversion }

            # @!attribute quantity_rounding
            #   Optional. Only valid for USAGE products. If provided, the quantity will be rounded using the provided rounding method and decimal places. For example, if the method is "round up" and the decimal places is 0, then the quantity will be rounded up to the nearest integer.
            #   @return [Metronome::Models::Contracts::QuantityRounding]
            optional :quantity_rounding, -> { Metronome::Models::Contracts::QuantityRounding }

            # @!attribute starting_at
            #   @return [Time]
            optional :starting_at, Time

            # @!attribute tags
            #   @return [Array<String>]
            optional :tags, Metronome::ArrayOf.new(String)

            # @!parse
            #   # Create a new instance of Update from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :created_at
            #   #   @option data [String] :created_by
            #   #   @option data [String, nil] :billable_metric_id
            #   #   @option data [Array<String>, nil] :composite_product_ids
            #   #   @option data [Array<String>, nil] :composite_tags
            #   #   @option data [Hash, nil] :exclude_free_usage
            #   #   @option data [Hash, nil] :is_refundable
            #   #   @option data [String, nil] :name
            #   #   @option data [String, nil] :netsuite_internal_item_id This field's availability is dependent on your client's configuration.
            #   #   @option data [String, nil] :netsuite_overage_item_id This field's availability is dependent on your client's configuration.
            #   #   @option data [Array<String>, nil] :presentation_group_key For USAGE products only. Groups usage line items on invoices. The superset of
            #   #     values in the pricing group key and presentation group key must be set as one
            #   #     compound group key on the billable metric.
            #   #   @option data [Array<String>, nil] :pricing_group_key For USAGE products only. If set, pricing for this product will be determined for
            #   #     each pricing_group_key value, as opposed to the product as a whole. The superset
            #   #     of values in the pricing group key and presentation group key must be set as one
            #   #     compound group key on the billable metric.
            #   #   @option data [Object, nil] :quantity_conversion Optional. Only valid for USAGE products. If provided, the quantity will be
            #   #     converted using the provided conversion factor and operation. For example, if
            #   #     the operation is "multiply" and the conversion factor is 100, then the quantity
            #   #     will be multiplied by 100. This can be used in cases where data is sent in one
            #   #     unit and priced in another. For example, data could be sent in MB and priced in
            #   #     GB. In this case, the conversion factor would be 1024 and the operation would be
            #   #     "divide".
            #   #   @option data [Object, nil] :quantity_rounding Optional. Only valid for USAGE products. If provided, the quantity will be
            #   #     rounded using the provided rounding method and decimal places. For example, if
            #   #     the method is "round up" and the decimal places is 0, then the quantity will be
            #   #     rounded up to the nearest integer.
            #   #   @option data [String, nil] :starting_at
            #   #   @option data [Array<String>, nil] :tags
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of Data from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :id
          #   #   @option data [Object] :current
          #   #   @option data [Object] :initial
          #   #   @option data [String] :type
          #   #   @option data [Array<Object>] :updates
          #   #   @option data [String, nil] :archived_at
          #   #   @option data [Hash, nil] :custom_fields
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of ProductRetrieveResponse from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Object] :data
        #   def initialize(data = {}) = super
      end
    end
  end
end
