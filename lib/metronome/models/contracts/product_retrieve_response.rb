# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      # @example
      #
      # ```ruby
      # product_retrieve_response => {
      #   data: Metronome::Models::Contracts::ProductRetrieveResponse::Data
      # }
      # ```
      class ProductRetrieveResponse < Metronome::BaseModel
        # @!attribute data
        #
        #   @return [Metronome::Models::Contracts::ProductRetrieveResponse::Data]
        required :data, -> { Metronome::Models::Contracts::ProductRetrieveResponse::Data }

        # @!parse
        #   # @param data [Metronome::Models::Contracts::ProductRetrieveResponse::Data]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # data => {
        #   id: String,
        #   current: Metronome::Models::Contracts::ProductListItemState,
        #   initial: Metronome::Models::Contracts::ProductListItemState,
        #   type: Metronome::Models::Contracts::ProductRetrieveResponse::Data::Type,
        #   updates: -> { Metronome::ArrayOf[Metronome::Models::Contracts::ProductRetrieveResponse::Data::Update] === _1 },
        #   **_
        # }
        # ```
        class Data < Metronome::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute current
          #
          #   @return [Metronome::Models::Contracts::ProductListItemState]
          required :current, -> { Metronome::Models::Contracts::ProductListItemState }

          # @!attribute initial
          #
          #   @return [Metronome::Models::Contracts::ProductListItemState]
          required :initial, -> { Metronome::Models::Contracts::ProductListItemState }

          # @!attribute type
          #
          #   @return [Symbol, Metronome::Models::Contracts::ProductRetrieveResponse::Data::Type]
          required :type, enum: -> { Metronome::Models::Contracts::ProductRetrieveResponse::Data::Type }

          # @!attribute updates
          #
          #   @return [Array<Metronome::Models::Contracts::ProductRetrieveResponse::Data::Update>]
          required :updates,
                   Metronome::ArrayOf[-> {
                     Metronome::Models::Contracts::ProductRetrieveResponse::Data::Update
                   }]

          # @!attribute archived_at
          #
          #   @return [Time, nil]
          optional :archived_at, Time

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol => String}]
          optional :custom_fields, Metronome::HashOf[String]

          # @!parse
          #   # @param id [String]
          #   # @param current [Metronome::Models::Contracts::ProductListItemState]
          #   # @param initial [Metronome::Models::Contracts::ProductListItemState]
          #   # @param type [String]
          #   # @param updates [Array<Metronome::Models::Contracts::ProductRetrieveResponse::Data::Update>]
          #   # @param archived_at [String, nil]
          #   # @param custom_fields [Hash{Symbol => String}]
          #   #
          #   def initialize(id:, current:, initial:, type:, updates:, archived_at: nil, custom_fields: nil, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case type
          # in :USAGE
          #   # ...
          # in :SUBSCRIPTION
          #   # ...
          # in :COMPOSITE
          #   # ...
          # in :FIXED
          #   # ...
          # in :PRO_SERVICE
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            USAGE = :USAGE
            SUBSCRIPTION = :SUBSCRIPTION
            COMPOSITE = :COMPOSITE
            FIXED = :FIXED
            PRO_SERVICE = :PRO_SERVICE

            finalize!
          end

          # @example
          #
          # ```ruby
          # update => {
          #   created_at: Time,
          #   created_by: String,
          #   billable_metric_id: String,
          #   composite_product_ids: -> { Metronome::ArrayOf[String] === _1 },
          #   composite_tags: -> { Metronome::ArrayOf[String] === _1 },
          #   **_
          # }
          # ```
          class Update < Metronome::BaseModel
            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute created_by
            #
            #   @return [String]
            required :created_by, String

            # @!attribute billable_metric_id
            #
            #   @return [String]
            optional :billable_metric_id, String

            # @!attribute composite_product_ids
            #
            #   @return [Array<String>]
            optional :composite_product_ids, Metronome::ArrayOf[String]

            # @!attribute composite_tags
            #
            #   @return [Array<String>]
            optional :composite_tags, Metronome::ArrayOf[String]

            # @!attribute exclude_free_usage
            #
            #   @return [Boolean]
            optional :exclude_free_usage, Metronome::BooleanModel

            # @!attribute is_refundable
            #
            #   @return [Boolean]
            optional :is_refundable, Metronome::BooleanModel

            # @!attribute name
            #
            #   @return [String]
            optional :name, String

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
            #   @return [Metronome::Models::Contracts::QuantityConversion, nil]
            optional :quantity_conversion, -> { Metronome::Models::Contracts::QuantityConversion }

            # @!attribute quantity_rounding
            #   Optional. Only valid for USAGE products. If provided, the quantity will be rounded using the provided rounding method and decimal places. For example, if the method is "round up" and the decimal places is 0, then the quantity will be rounded up to the nearest integer.
            #
            #   @return [Metronome::Models::Contracts::QuantityRounding, nil]
            optional :quantity_rounding, -> { Metronome::Models::Contracts::QuantityRounding }

            # @!attribute starting_at
            #
            #   @return [Time]
            optional :starting_at, Time

            # @!attribute tags
            #
            #   @return [Array<String>]
            optional :tags, Metronome::ArrayOf[String]

            # @!parse
            #   # @param created_at [String]
            #   #
            #   # @param created_by [String]
            #   #
            #   # @param billable_metric_id [String]
            #   #
            #   # @param composite_product_ids [Array<String>]
            #   #
            #   # @param composite_tags [Array<String>]
            #   #
            #   # @param exclude_free_usage [Boolean]
            #   #
            #   # @param is_refundable [Boolean]
            #   #
            #   # @param name [String]
            #   #
            #   # @param netsuite_internal_item_id [String] This field's availability is dependent on your client's configuration.
            #   #
            #   # @param netsuite_overage_item_id [String] This field's availability is dependent on your client's configuration.
            #   #
            #   # @param presentation_group_key [Array<String>] For USAGE products only. Groups usage line items on invoices. The superset of
            #   #   values in the pricing group key and presentation group key must be set as one
            #   #   compound group key on the billable metric.
            #   #
            #   # @param pricing_group_key [Array<String>] For USAGE products only. If set, pricing for this product will be determined for
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
            #   # @param starting_at [String]
            #   #
            #   # @param tags [Array<String>]
            #   #
            #   def initialize(
            #     created_at:,
            #     created_by:,
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
  end
end
