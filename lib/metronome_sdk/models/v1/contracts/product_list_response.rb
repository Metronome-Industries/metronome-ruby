# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        # @see MetronomeSDK::Resources::V1::Contracts::Products#list
        class ProductListResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute current
          #
          #   @return [MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current]
          required :current, -> { MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current }

          # @!attribute initial
          #
          #   @return [MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial]
          required :initial, -> { MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial }

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::ProductListResponse::Type]
          required :type, enum: -> { MetronomeSDK::Models::V1::Contracts::ProductListResponse::Type }

          # @!attribute updates
          #
          #   @return [Array<MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update>]
          required :updates,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update] }

          # @!attribute archived_at
          #
          #   @return [Time, nil]
          optional :archived_at, Time, nil?: true

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!method initialize(id:, current:, initial:, type:, updates:, archived_at: nil, custom_fields: nil)
          #   @param id [String]
          #   @param current [MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current]
          #   @param initial [MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial]
          #   @param type [Symbol, MetronomeSDK::Models::V1::Contracts::ProductListResponse::Type]
          #   @param updates [Array<MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update>]
          #   @param archived_at [Time, nil]
          #   @param custom_fields [Hash{Symbol=>String}]

          # @see MetronomeSDK::Models::V1::Contracts::ProductListResponse#current
          class Current < MetronomeSDK::Internal::Type::BaseModel
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

            # @!attribute billable_metric_id
            #
            #   @return [String, nil]
            optional :billable_metric_id, String

            # @!attribute composite_product_ids
            #
            #   @return [Array<String>, nil]
            optional :composite_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute composite_tags
            #
            #   @return [Array<String>, nil]
            optional :composite_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute exclude_free_usage
            #
            #   @return [Boolean, nil]
            optional :exclude_free_usage, MetronomeSDK::Internal::Type::Boolean

            # @!attribute is_refundable
            #   This field's availability is dependent on your client's configuration.
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
            #   @return [MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityConversion, nil]
            optional :quantity_conversion,
                     -> { MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityConversion },
                     nil?: true

            # @!attribute quantity_rounding
            #   Optional. Only valid for USAGE products. If provided, the quantity will be
            #   rounded using the provided rounding method and decimal places. For example, if
            #   the method is "round up" and the decimal places is 0, then the quantity will be
            #   rounded up to the nearest integer.
            #
            #   @return [MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityRounding, nil]
            optional :quantity_rounding,
                     -> { MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityRounding },
                     nil?: true

            # @!attribute starting_at
            #
            #   @return [Time, nil]
            optional :starting_at, Time

            # @!attribute tags
            #
            #   @return [Array<String>, nil]
            optional :tags, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!method initialize(created_at:, created_by:, name:, billable_metric_id: nil, composite_product_ids: nil, composite_tags: nil, exclude_free_usage: nil, is_refundable: nil, netsuite_internal_item_id: nil, netsuite_overage_item_id: nil, presentation_group_key: nil, pricing_group_key: nil, quantity_conversion: nil, quantity_rounding: nil, starting_at: nil, tags: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current} for more
            #   details.
            #
            #   @param created_at [Time]
            #
            #   @param created_by [String]
            #
            #   @param name [String]
            #
            #   @param billable_metric_id [String]
            #
            #   @param composite_product_ids [Array<String>]
            #
            #   @param composite_tags [Array<String>]
            #
            #   @param exclude_free_usage [Boolean]
            #
            #   @param is_refundable [Boolean] This field's availability is dependent on your client's configuration.
            #
            #   @param netsuite_internal_item_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param netsuite_overage_item_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param presentation_group_key [Array<String>] For USAGE products only. Groups usage line items on invoices. The superset of va
            #
            #   @param pricing_group_key [Array<String>] For USAGE products only. If set, pricing for this product will be determined for
            #
            #   @param quantity_conversion [MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityConversion, nil] Optional. Only valid for USAGE products. If provided, the quantity will be conve
            #
            #   @param quantity_rounding [MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityRounding, nil] Optional. Only valid for USAGE products. If provided, the quantity will be round
            #
            #   @param starting_at [Time]
            #
            #   @param tags [Array<String>]

            # @see MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current#quantity_conversion
            class QuantityConversion < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute conversion_factor
              #   The factor to multiply or divide the quantity by.
              #
              #   @return [Float]
              required :conversion_factor, Float

              # @!attribute operation
              #   The operation to perform on the quantity
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityConversion::Operation]
              required :operation,
                       enum: -> { MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityConversion::Operation }

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
              #   @param operation [Symbol, MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityConversion::Operation] The operation to perform on the quantity
              #
              #   @param name [String] Optional name for this conversion.

              # The operation to perform on the quantity
              #
              # @see MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityConversion#operation
              module Operation
                extend MetronomeSDK::Internal::Type::Enum

                MULTIPLY = :MULTIPLY
                DIVIDE = :DIVIDE

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current#quantity_rounding
            class QuantityRounding < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute decimal_places
              #
              #   @return [Float]
              required :decimal_places, Float

              # @!attribute rounding_method
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityRounding::RoundingMethod]
              required :rounding_method,
                       enum: -> { MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityRounding::RoundingMethod }

              # @!method initialize(decimal_places:, rounding_method:)
              #   Optional. Only valid for USAGE products. If provided, the quantity will be
              #   rounded using the provided rounding method and decimal places. For example, if
              #   the method is "round up" and the decimal places is 0, then the quantity will be
              #   rounded up to the nearest integer.
              #
              #   @param decimal_places [Float]
              #   @param rounding_method [Symbol, MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityRounding::RoundingMethod]

              # @see MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityRounding#rounding_method
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

          # @see MetronomeSDK::Models::V1::Contracts::ProductListResponse#initial
          class Initial < MetronomeSDK::Internal::Type::BaseModel
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

            # @!attribute billable_metric_id
            #
            #   @return [String, nil]
            optional :billable_metric_id, String

            # @!attribute composite_product_ids
            #
            #   @return [Array<String>, nil]
            optional :composite_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute composite_tags
            #
            #   @return [Array<String>, nil]
            optional :composite_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute exclude_free_usage
            #
            #   @return [Boolean, nil]
            optional :exclude_free_usage, MetronomeSDK::Internal::Type::Boolean

            # @!attribute is_refundable
            #   This field's availability is dependent on your client's configuration.
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
            #   @return [MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityConversion, nil]
            optional :quantity_conversion,
                     -> { MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityConversion },
                     nil?: true

            # @!attribute quantity_rounding
            #   Optional. Only valid for USAGE products. If provided, the quantity will be
            #   rounded using the provided rounding method and decimal places. For example, if
            #   the method is "round up" and the decimal places is 0, then the quantity will be
            #   rounded up to the nearest integer.
            #
            #   @return [MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityRounding, nil]
            optional :quantity_rounding,
                     -> { MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityRounding },
                     nil?: true

            # @!attribute starting_at
            #
            #   @return [Time, nil]
            optional :starting_at, Time

            # @!attribute tags
            #
            #   @return [Array<String>, nil]
            optional :tags, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!method initialize(created_at:, created_by:, name:, billable_metric_id: nil, composite_product_ids: nil, composite_tags: nil, exclude_free_usage: nil, is_refundable: nil, netsuite_internal_item_id: nil, netsuite_overage_item_id: nil, presentation_group_key: nil, pricing_group_key: nil, quantity_conversion: nil, quantity_rounding: nil, starting_at: nil, tags: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial} for more
            #   details.
            #
            #   @param created_at [Time]
            #
            #   @param created_by [String]
            #
            #   @param name [String]
            #
            #   @param billable_metric_id [String]
            #
            #   @param composite_product_ids [Array<String>]
            #
            #   @param composite_tags [Array<String>]
            #
            #   @param exclude_free_usage [Boolean]
            #
            #   @param is_refundable [Boolean] This field's availability is dependent on your client's configuration.
            #
            #   @param netsuite_internal_item_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param netsuite_overage_item_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param presentation_group_key [Array<String>] For USAGE products only. Groups usage line items on invoices. The superset of va
            #
            #   @param pricing_group_key [Array<String>] For USAGE products only. If set, pricing for this product will be determined for
            #
            #   @param quantity_conversion [MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityConversion, nil] Optional. Only valid for USAGE products. If provided, the quantity will be conve
            #
            #   @param quantity_rounding [MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityRounding, nil] Optional. Only valid for USAGE products. If provided, the quantity will be round
            #
            #   @param starting_at [Time]
            #
            #   @param tags [Array<String>]

            # @see MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial#quantity_conversion
            class QuantityConversion < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute conversion_factor
              #   The factor to multiply or divide the quantity by.
              #
              #   @return [Float]
              required :conversion_factor, Float

              # @!attribute operation
              #   The operation to perform on the quantity
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityConversion::Operation]
              required :operation,
                       enum: -> { MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityConversion::Operation }

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
              #   @param operation [Symbol, MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityConversion::Operation] The operation to perform on the quantity
              #
              #   @param name [String] Optional name for this conversion.

              # The operation to perform on the quantity
              #
              # @see MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityConversion#operation
              module Operation
                extend MetronomeSDK::Internal::Type::Enum

                MULTIPLY = :MULTIPLY
                DIVIDE = :DIVIDE

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial#quantity_rounding
            class QuantityRounding < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute decimal_places
              #
              #   @return [Float]
              required :decimal_places, Float

              # @!attribute rounding_method
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityRounding::RoundingMethod]
              required :rounding_method,
                       enum: -> { MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityRounding::RoundingMethod }

              # @!method initialize(decimal_places:, rounding_method:)
              #   Optional. Only valid for USAGE products. If provided, the quantity will be
              #   rounded using the provided rounding method and decimal places. For example, if
              #   the method is "round up" and the decimal places is 0, then the quantity will be
              #   rounded up to the nearest integer.
              #
              #   @param decimal_places [Float]
              #   @param rounding_method [Symbol, MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityRounding::RoundingMethod]

              # @see MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityRounding#rounding_method
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

          # @see MetronomeSDK::Models::V1::Contracts::ProductListResponse#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            USAGE = :USAGE
            SUBSCRIPTION = :SUBSCRIPTION
            COMPOSITE = :COMPOSITE
            FIXED = :FIXED
            PRO_SERVICE = :PRO_SERVICE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class Update < MetronomeSDK::Internal::Type::BaseModel
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
            #   @return [String, nil]
            optional :billable_metric_id, String

            # @!attribute composite_product_ids
            #
            #   @return [Array<String>, nil]
            optional :composite_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute composite_tags
            #
            #   @return [Array<String>, nil]
            optional :composite_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute exclude_free_usage
            #
            #   @return [Boolean, nil]
            optional :exclude_free_usage, MetronomeSDK::Internal::Type::Boolean

            # @!attribute is_refundable
            #
            #   @return [Boolean, nil]
            optional :is_refundable, MetronomeSDK::Internal::Type::Boolean

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

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
            #   @return [MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityConversion, nil]
            optional :quantity_conversion,
                     -> { MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityConversion },
                     nil?: true

            # @!attribute quantity_rounding
            #   Optional. Only valid for USAGE products. If provided, the quantity will be
            #   rounded using the provided rounding method and decimal places. For example, if
            #   the method is "round up" and the decimal places is 0, then the quantity will be
            #   rounded up to the nearest integer.
            #
            #   @return [MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityRounding, nil]
            optional :quantity_rounding,
                     -> { MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityRounding },
                     nil?: true

            # @!attribute starting_at
            #
            #   @return [Time, nil]
            optional :starting_at, Time

            # @!attribute tags
            #
            #   @return [Array<String>, nil]
            optional :tags, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!method initialize(created_at:, created_by:, billable_metric_id: nil, composite_product_ids: nil, composite_tags: nil, exclude_free_usage: nil, is_refundable: nil, name: nil, netsuite_internal_item_id: nil, netsuite_overage_item_id: nil, presentation_group_key: nil, pricing_group_key: nil, quantity_conversion: nil, quantity_rounding: nil, starting_at: nil, tags: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update} for more
            #   details.
            #
            #   @param created_at [Time]
            #
            #   @param created_by [String]
            #
            #   @param billable_metric_id [String]
            #
            #   @param composite_product_ids [Array<String>]
            #
            #   @param composite_tags [Array<String>]
            #
            #   @param exclude_free_usage [Boolean]
            #
            #   @param is_refundable [Boolean]
            #
            #   @param name [String]
            #
            #   @param netsuite_internal_item_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param netsuite_overage_item_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param presentation_group_key [Array<String>] For USAGE products only. Groups usage line items on invoices. The superset of va
            #
            #   @param pricing_group_key [Array<String>] For USAGE products only. If set, pricing for this product will be determined for
            #
            #   @param quantity_conversion [MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityConversion, nil] Optional. Only valid for USAGE products. If provided, the quantity will be conve
            #
            #   @param quantity_rounding [MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityRounding, nil] Optional. Only valid for USAGE products. If provided, the quantity will be round
            #
            #   @param starting_at [Time]
            #
            #   @param tags [Array<String>]

            # @see MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update#quantity_conversion
            class QuantityConversion < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute conversion_factor
              #   The factor to multiply or divide the quantity by.
              #
              #   @return [Float]
              required :conversion_factor, Float

              # @!attribute operation
              #   The operation to perform on the quantity
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityConversion::Operation]
              required :operation,
                       enum: -> { MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityConversion::Operation }

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
              #   @param operation [Symbol, MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityConversion::Operation] The operation to perform on the quantity
              #
              #   @param name [String] Optional name for this conversion.

              # The operation to perform on the quantity
              #
              # @see MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityConversion#operation
              module Operation
                extend MetronomeSDK::Internal::Type::Enum

                MULTIPLY = :MULTIPLY
                DIVIDE = :DIVIDE

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update#quantity_rounding
            class QuantityRounding < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute decimal_places
              #
              #   @return [Float]
              required :decimal_places, Float

              # @!attribute rounding_method
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityRounding::RoundingMethod]
              required :rounding_method,
                       enum: -> { MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityRounding::RoundingMethod }

              # @!method initialize(decimal_places:, rounding_method:)
              #   Optional. Only valid for USAGE products. If provided, the quantity will be
              #   rounded using the provided rounding method and decimal places. For example, if
              #   the method is "round up" and the decimal places is 0, then the quantity will be
              #   rounded up to the nearest integer.
              #
              #   @param decimal_places [Float]
              #   @param rounding_method [Symbol, MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityRounding::RoundingMethod]

              # @see MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityRounding#rounding_method
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
end
