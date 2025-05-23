# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class ProductListResponse < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::Contracts::ProductListResponse,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig do
            returns(
              MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current
            )
          end
          attr_reader :current

          sig do
            params(
              current:
                MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::OrHash
            ).void
          end
          attr_writer :current

          sig do
            returns(
              MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial
            )
          end
          attr_reader :initial

          sig do
            params(
              initial:
                MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::OrHash
            ).void
          end
          attr_writer :initial

          sig do
            returns(
              MetronomeSDK::Models::V1::Contracts::ProductListResponse::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            returns(
              T::Array[
                MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update
              ]
            )
          end
          attr_accessor :updates

          sig { returns(T.nilable(Time)) }
          attr_accessor :archived_at

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :custom_fields

          sig { params(custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :custom_fields

          sig do
            params(
              id: String,
              current:
                MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::OrHash,
              initial:
                MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::OrHash,
              type:
                MetronomeSDK::Models::V1::Contracts::ProductListResponse::Type::OrSymbol,
              updates:
                T::Array[
                  MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::OrHash
                ],
              archived_at: T.nilable(Time),
              custom_fields: T::Hash[Symbol, String]
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            current:,
            initial:,
            type:,
            updates:,
            archived_at: nil,
            custom_fields: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                current:
                  MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current,
                initial:
                  MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial,
                type:
                  MetronomeSDK::Models::V1::Contracts::ProductListResponse::Type::TaggedSymbol,
                updates:
                  T::Array[
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update
                  ],
                archived_at: T.nilable(Time),
                custom_fields: T::Hash[Symbol, String]
              }
            )
          end
          def to_hash
          end

          class Current < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(Time) }
            attr_accessor :created_at

            sig { returns(String) }
            attr_accessor :created_by

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_reader :billable_metric_id

            sig { params(billable_metric_id: String).void }
            attr_writer :billable_metric_id

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :composite_product_ids

            sig { params(composite_product_ids: T::Array[String]).void }
            attr_writer :composite_product_ids

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :composite_tags

            sig { params(composite_tags: T::Array[String]).void }
            attr_writer :composite_tags

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :exclude_free_usage

            sig { params(exclude_free_usage: T::Boolean).void }
            attr_writer :exclude_free_usage

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_refundable

            sig { params(is_refundable: T::Boolean).void }
            attr_writer :is_refundable

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(String)) }
            attr_reader :netsuite_internal_item_id

            sig { params(netsuite_internal_item_id: String).void }
            attr_writer :netsuite_internal_item_id

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(String)) }
            attr_reader :netsuite_overage_item_id

            sig { params(netsuite_overage_item_id: String).void }
            attr_writer :netsuite_overage_item_id

            # For USAGE products only. Groups usage line items on invoices. The superset of
            # values in the pricing group key and presentation group key must be set as one
            # compound group key on the billable metric.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :presentation_group_key

            sig { params(presentation_group_key: T::Array[String]).void }
            attr_writer :presentation_group_key

            # For USAGE products only. If set, pricing for this product will be determined for
            # each pricing_group_key value, as opposed to the product as a whole. The superset
            # of values in the pricing group key and presentation group key must be set as one
            # compound group key on the billable metric.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :pricing_group_key

            sig { params(pricing_group_key: T::Array[String]).void }
            attr_writer :pricing_group_key

            # Optional. Only valid for USAGE products. If provided, the quantity will be
            # converted using the provided conversion factor and operation. For example, if
            # the operation is "multiply" and the conversion factor is 100, then the quantity
            # will be multiplied by 100. This can be used in cases where data is sent in one
            # unit and priced in another. For example, data could be sent in MB and priced in
            # GB. In this case, the conversion factor would be 1024 and the operation would be
            # "divide".
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityConversion
                )
              )
            end
            attr_reader :quantity_conversion

            sig do
              params(
                quantity_conversion:
                  T.nilable(
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityConversion::OrHash
                  )
              ).void
            end
            attr_writer :quantity_conversion

            # Optional. Only valid for USAGE products. If provided, the quantity will be
            # rounded using the provided rounding method and decimal places. For example, if
            # the method is "round up" and the decimal places is 0, then the quantity will be
            # rounded up to the nearest integer.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityRounding
                )
              )
            end
            attr_reader :quantity_rounding

            sig do
              params(
                quantity_rounding:
                  T.nilable(
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityRounding::OrHash
                  )
              ).void
            end
            attr_writer :quantity_rounding

            sig { returns(T.nilable(Time)) }
            attr_reader :starting_at

            sig { params(starting_at: Time).void }
            attr_writer :starting_at

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :tags

            sig { params(tags: T::Array[String]).void }
            attr_writer :tags

            sig do
              params(
                created_at: Time,
                created_by: String,
                name: String,
                billable_metric_id: String,
                composite_product_ids: T::Array[String],
                composite_tags: T::Array[String],
                exclude_free_usage: T::Boolean,
                is_refundable: T::Boolean,
                netsuite_internal_item_id: String,
                netsuite_overage_item_id: String,
                presentation_group_key: T::Array[String],
                pricing_group_key: T::Array[String],
                quantity_conversion:
                  T.nilable(
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityConversion::OrHash
                  ),
                quantity_rounding:
                  T.nilable(
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityRounding::OrHash
                  ),
                starting_at: Time,
                tags: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              created_at:,
              created_by:,
              name:,
              billable_metric_id: nil,
              composite_product_ids: nil,
              composite_tags: nil,
              exclude_free_usage: nil,
              # This field's availability is dependent on your client's configuration.
              is_refundable: nil,
              # This field's availability is dependent on your client's configuration.
              netsuite_internal_item_id: nil,
              # This field's availability is dependent on your client's configuration.
              netsuite_overage_item_id: nil,
              # For USAGE products only. Groups usage line items on invoices. The superset of
              # values in the pricing group key and presentation group key must be set as one
              # compound group key on the billable metric.
              presentation_group_key: nil,
              # For USAGE products only. If set, pricing for this product will be determined for
              # each pricing_group_key value, as opposed to the product as a whole. The superset
              # of values in the pricing group key and presentation group key must be set as one
              # compound group key on the billable metric.
              pricing_group_key: nil,
              # Optional. Only valid for USAGE products. If provided, the quantity will be
              # converted using the provided conversion factor and operation. For example, if
              # the operation is "multiply" and the conversion factor is 100, then the quantity
              # will be multiplied by 100. This can be used in cases where data is sent in one
              # unit and priced in another. For example, data could be sent in MB and priced in
              # GB. In this case, the conversion factor would be 1024 and the operation would be
              # "divide".
              quantity_conversion: nil,
              # Optional. Only valid for USAGE products. If provided, the quantity will be
              # rounded using the provided rounding method and decimal places. For example, if
              # the method is "round up" and the decimal places is 0, then the quantity will be
              # rounded up to the nearest integer.
              quantity_rounding: nil,
              starting_at: nil,
              tags: nil
            )
            end

            sig do
              override.returns(
                {
                  created_at: Time,
                  created_by: String,
                  name: String,
                  billable_metric_id: String,
                  composite_product_ids: T::Array[String],
                  composite_tags: T::Array[String],
                  exclude_free_usage: T::Boolean,
                  is_refundable: T::Boolean,
                  netsuite_internal_item_id: String,
                  netsuite_overage_item_id: String,
                  presentation_group_key: T::Array[String],
                  pricing_group_key: T::Array[String],
                  quantity_conversion:
                    T.nilable(
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityConversion
                    ),
                  quantity_rounding:
                    T.nilable(
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityRounding
                    ),
                  starting_at: Time,
                  tags: T::Array[String]
                }
              )
            end
            def to_hash
            end

            class QuantityConversion < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityConversion,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # The factor to multiply or divide the quantity by.
              sig { returns(Float) }
              attr_accessor :conversion_factor

              # The operation to perform on the quantity
              sig do
                returns(
                  MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityConversion::Operation::TaggedSymbol
                )
              end
              attr_accessor :operation

              # Optional name for this conversion.
              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              # Optional. Only valid for USAGE products. If provided, the quantity will be
              # converted using the provided conversion factor and operation. For example, if
              # the operation is "multiply" and the conversion factor is 100, then the quantity
              # will be multiplied by 100. This can be used in cases where data is sent in one
              # unit and priced in another. For example, data could be sent in MB and priced in
              # GB. In this case, the conversion factor would be 1024 and the operation would be
              # "divide".
              sig do
                params(
                  conversion_factor: Float,
                  operation:
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityConversion::Operation::OrSymbol,
                  name: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The factor to multiply or divide the quantity by.
                conversion_factor:,
                # The operation to perform on the quantity
                operation:,
                # Optional name for this conversion.
                name: nil
              )
              end

              sig do
                override.returns(
                  {
                    conversion_factor: Float,
                    operation:
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityConversion::Operation::TaggedSymbol,
                    name: String
                  }
                )
              end
              def to_hash
              end

              # The operation to perform on the quantity
              module Operation
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityConversion::Operation
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MULTIPLY =
                  T.let(
                    :MULTIPLY,
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityConversion::Operation::TaggedSymbol
                  )
                DIVIDE =
                  T.let(
                    :DIVIDE,
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityConversion::Operation::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityConversion::Operation::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class QuantityRounding < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityRounding,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :decimal_places

              sig do
                returns(
                  MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityRounding::RoundingMethod::TaggedSymbol
                )
              end
              attr_accessor :rounding_method

              # Optional. Only valid for USAGE products. If provided, the quantity will be
              # rounded using the provided rounding method and decimal places. For example, if
              # the method is "round up" and the decimal places is 0, then the quantity will be
              # rounded up to the nearest integer.
              sig do
                params(
                  decimal_places: Float,
                  rounding_method:
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityRounding::RoundingMethod::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(decimal_places:, rounding_method:)
              end

              sig do
                override.returns(
                  {
                    decimal_places: Float,
                    rounding_method:
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityRounding::RoundingMethod::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              module RoundingMethod
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityRounding::RoundingMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ROUND_UP =
                  T.let(
                    :ROUND_UP,
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityRounding::RoundingMethod::TaggedSymbol
                  )
                ROUND_DOWN =
                  T.let(
                    :ROUND_DOWN,
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityRounding::RoundingMethod::TaggedSymbol
                  )
                ROUND_HALF_UP =
                  T.let(
                    :ROUND_HALF_UP,
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityRounding::RoundingMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Current::QuantityRounding::RoundingMethod::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class Initial < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(Time) }
            attr_accessor :created_at

            sig { returns(String) }
            attr_accessor :created_by

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_reader :billable_metric_id

            sig { params(billable_metric_id: String).void }
            attr_writer :billable_metric_id

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :composite_product_ids

            sig { params(composite_product_ids: T::Array[String]).void }
            attr_writer :composite_product_ids

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :composite_tags

            sig { params(composite_tags: T::Array[String]).void }
            attr_writer :composite_tags

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :exclude_free_usage

            sig { params(exclude_free_usage: T::Boolean).void }
            attr_writer :exclude_free_usage

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_refundable

            sig { params(is_refundable: T::Boolean).void }
            attr_writer :is_refundable

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(String)) }
            attr_reader :netsuite_internal_item_id

            sig { params(netsuite_internal_item_id: String).void }
            attr_writer :netsuite_internal_item_id

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(String)) }
            attr_reader :netsuite_overage_item_id

            sig { params(netsuite_overage_item_id: String).void }
            attr_writer :netsuite_overage_item_id

            # For USAGE products only. Groups usage line items on invoices. The superset of
            # values in the pricing group key and presentation group key must be set as one
            # compound group key on the billable metric.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :presentation_group_key

            sig { params(presentation_group_key: T::Array[String]).void }
            attr_writer :presentation_group_key

            # For USAGE products only. If set, pricing for this product will be determined for
            # each pricing_group_key value, as opposed to the product as a whole. The superset
            # of values in the pricing group key and presentation group key must be set as one
            # compound group key on the billable metric.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :pricing_group_key

            sig { params(pricing_group_key: T::Array[String]).void }
            attr_writer :pricing_group_key

            # Optional. Only valid for USAGE products. If provided, the quantity will be
            # converted using the provided conversion factor and operation. For example, if
            # the operation is "multiply" and the conversion factor is 100, then the quantity
            # will be multiplied by 100. This can be used in cases where data is sent in one
            # unit and priced in another. For example, data could be sent in MB and priced in
            # GB. In this case, the conversion factor would be 1024 and the operation would be
            # "divide".
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityConversion
                )
              )
            end
            attr_reader :quantity_conversion

            sig do
              params(
                quantity_conversion:
                  T.nilable(
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityConversion::OrHash
                  )
              ).void
            end
            attr_writer :quantity_conversion

            # Optional. Only valid for USAGE products. If provided, the quantity will be
            # rounded using the provided rounding method and decimal places. For example, if
            # the method is "round up" and the decimal places is 0, then the quantity will be
            # rounded up to the nearest integer.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityRounding
                )
              )
            end
            attr_reader :quantity_rounding

            sig do
              params(
                quantity_rounding:
                  T.nilable(
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityRounding::OrHash
                  )
              ).void
            end
            attr_writer :quantity_rounding

            sig { returns(T.nilable(Time)) }
            attr_reader :starting_at

            sig { params(starting_at: Time).void }
            attr_writer :starting_at

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :tags

            sig { params(tags: T::Array[String]).void }
            attr_writer :tags

            sig do
              params(
                created_at: Time,
                created_by: String,
                name: String,
                billable_metric_id: String,
                composite_product_ids: T::Array[String],
                composite_tags: T::Array[String],
                exclude_free_usage: T::Boolean,
                is_refundable: T::Boolean,
                netsuite_internal_item_id: String,
                netsuite_overage_item_id: String,
                presentation_group_key: T::Array[String],
                pricing_group_key: T::Array[String],
                quantity_conversion:
                  T.nilable(
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityConversion::OrHash
                  ),
                quantity_rounding:
                  T.nilable(
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityRounding::OrHash
                  ),
                starting_at: Time,
                tags: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              created_at:,
              created_by:,
              name:,
              billable_metric_id: nil,
              composite_product_ids: nil,
              composite_tags: nil,
              exclude_free_usage: nil,
              # This field's availability is dependent on your client's configuration.
              is_refundable: nil,
              # This field's availability is dependent on your client's configuration.
              netsuite_internal_item_id: nil,
              # This field's availability is dependent on your client's configuration.
              netsuite_overage_item_id: nil,
              # For USAGE products only. Groups usage line items on invoices. The superset of
              # values in the pricing group key and presentation group key must be set as one
              # compound group key on the billable metric.
              presentation_group_key: nil,
              # For USAGE products only. If set, pricing for this product will be determined for
              # each pricing_group_key value, as opposed to the product as a whole. The superset
              # of values in the pricing group key and presentation group key must be set as one
              # compound group key on the billable metric.
              pricing_group_key: nil,
              # Optional. Only valid for USAGE products. If provided, the quantity will be
              # converted using the provided conversion factor and operation. For example, if
              # the operation is "multiply" and the conversion factor is 100, then the quantity
              # will be multiplied by 100. This can be used in cases where data is sent in one
              # unit and priced in another. For example, data could be sent in MB and priced in
              # GB. In this case, the conversion factor would be 1024 and the operation would be
              # "divide".
              quantity_conversion: nil,
              # Optional. Only valid for USAGE products. If provided, the quantity will be
              # rounded using the provided rounding method and decimal places. For example, if
              # the method is "round up" and the decimal places is 0, then the quantity will be
              # rounded up to the nearest integer.
              quantity_rounding: nil,
              starting_at: nil,
              tags: nil
            )
            end

            sig do
              override.returns(
                {
                  created_at: Time,
                  created_by: String,
                  name: String,
                  billable_metric_id: String,
                  composite_product_ids: T::Array[String],
                  composite_tags: T::Array[String],
                  exclude_free_usage: T::Boolean,
                  is_refundable: T::Boolean,
                  netsuite_internal_item_id: String,
                  netsuite_overage_item_id: String,
                  presentation_group_key: T::Array[String],
                  pricing_group_key: T::Array[String],
                  quantity_conversion:
                    T.nilable(
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityConversion
                    ),
                  quantity_rounding:
                    T.nilable(
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityRounding
                    ),
                  starting_at: Time,
                  tags: T::Array[String]
                }
              )
            end
            def to_hash
            end

            class QuantityConversion < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityConversion,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # The factor to multiply or divide the quantity by.
              sig { returns(Float) }
              attr_accessor :conversion_factor

              # The operation to perform on the quantity
              sig do
                returns(
                  MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityConversion::Operation::TaggedSymbol
                )
              end
              attr_accessor :operation

              # Optional name for this conversion.
              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              # Optional. Only valid for USAGE products. If provided, the quantity will be
              # converted using the provided conversion factor and operation. For example, if
              # the operation is "multiply" and the conversion factor is 100, then the quantity
              # will be multiplied by 100. This can be used in cases where data is sent in one
              # unit and priced in another. For example, data could be sent in MB and priced in
              # GB. In this case, the conversion factor would be 1024 and the operation would be
              # "divide".
              sig do
                params(
                  conversion_factor: Float,
                  operation:
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityConversion::Operation::OrSymbol,
                  name: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The factor to multiply or divide the quantity by.
                conversion_factor:,
                # The operation to perform on the quantity
                operation:,
                # Optional name for this conversion.
                name: nil
              )
              end

              sig do
                override.returns(
                  {
                    conversion_factor: Float,
                    operation:
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityConversion::Operation::TaggedSymbol,
                    name: String
                  }
                )
              end
              def to_hash
              end

              # The operation to perform on the quantity
              module Operation
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityConversion::Operation
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MULTIPLY =
                  T.let(
                    :MULTIPLY,
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityConversion::Operation::TaggedSymbol
                  )
                DIVIDE =
                  T.let(
                    :DIVIDE,
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityConversion::Operation::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityConversion::Operation::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class QuantityRounding < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityRounding,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :decimal_places

              sig do
                returns(
                  MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityRounding::RoundingMethod::TaggedSymbol
                )
              end
              attr_accessor :rounding_method

              # Optional. Only valid for USAGE products. If provided, the quantity will be
              # rounded using the provided rounding method and decimal places. For example, if
              # the method is "round up" and the decimal places is 0, then the quantity will be
              # rounded up to the nearest integer.
              sig do
                params(
                  decimal_places: Float,
                  rounding_method:
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityRounding::RoundingMethod::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(decimal_places:, rounding_method:)
              end

              sig do
                override.returns(
                  {
                    decimal_places: Float,
                    rounding_method:
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityRounding::RoundingMethod::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              module RoundingMethod
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityRounding::RoundingMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ROUND_UP =
                  T.let(
                    :ROUND_UP,
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityRounding::RoundingMethod::TaggedSymbol
                  )
                ROUND_DOWN =
                  T.let(
                    :ROUND_DOWN,
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityRounding::RoundingMethod::TaggedSymbol
                  )
                ROUND_HALF_UP =
                  T.let(
                    :ROUND_HALF_UP,
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityRounding::RoundingMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Initial::QuantityRounding::RoundingMethod::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Models::V1::Contracts::ProductListResponse::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            USAGE =
              T.let(
                :USAGE,
                MetronomeSDK::Models::V1::Contracts::ProductListResponse::Type::TaggedSymbol
              )
            SUBSCRIPTION =
              T.let(
                :SUBSCRIPTION,
                MetronomeSDK::Models::V1::Contracts::ProductListResponse::Type::TaggedSymbol
              )
            COMPOSITE =
              T.let(
                :COMPOSITE,
                MetronomeSDK::Models::V1::Contracts::ProductListResponse::Type::TaggedSymbol
              )
            FIXED =
              T.let(
                :FIXED,
                MetronomeSDK::Models::V1::Contracts::ProductListResponse::Type::TaggedSymbol
              )
            PRO_SERVICE =
              T.let(
                :PRO_SERVICE,
                MetronomeSDK::Models::V1::Contracts::ProductListResponse::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::V1::Contracts::ProductListResponse::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Update < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(Time) }
            attr_accessor :created_at

            sig { returns(String) }
            attr_accessor :created_by

            sig { returns(T.nilable(String)) }
            attr_reader :billable_metric_id

            sig { params(billable_metric_id: String).void }
            attr_writer :billable_metric_id

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :composite_product_ids

            sig { params(composite_product_ids: T::Array[String]).void }
            attr_writer :composite_product_ids

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :composite_tags

            sig { params(composite_tags: T::Array[String]).void }
            attr_writer :composite_tags

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :exclude_free_usage

            sig { params(exclude_free_usage: T::Boolean).void }
            attr_writer :exclude_free_usage

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_refundable

            sig { params(is_refundable: T::Boolean).void }
            attr_writer :is_refundable

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(String)) }
            attr_reader :netsuite_internal_item_id

            sig { params(netsuite_internal_item_id: String).void }
            attr_writer :netsuite_internal_item_id

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(String)) }
            attr_reader :netsuite_overage_item_id

            sig { params(netsuite_overage_item_id: String).void }
            attr_writer :netsuite_overage_item_id

            # For USAGE products only. Groups usage line items on invoices. The superset of
            # values in the pricing group key and presentation group key must be set as one
            # compound group key on the billable metric.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :presentation_group_key

            sig { params(presentation_group_key: T::Array[String]).void }
            attr_writer :presentation_group_key

            # For USAGE products only. If set, pricing for this product will be determined for
            # each pricing_group_key value, as opposed to the product as a whole. The superset
            # of values in the pricing group key and presentation group key must be set as one
            # compound group key on the billable metric.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :pricing_group_key

            sig { params(pricing_group_key: T::Array[String]).void }
            attr_writer :pricing_group_key

            # Optional. Only valid for USAGE products. If provided, the quantity will be
            # converted using the provided conversion factor and operation. For example, if
            # the operation is "multiply" and the conversion factor is 100, then the quantity
            # will be multiplied by 100. This can be used in cases where data is sent in one
            # unit and priced in another. For example, data could be sent in MB and priced in
            # GB. In this case, the conversion factor would be 1024 and the operation would be
            # "divide".
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityConversion
                )
              )
            end
            attr_reader :quantity_conversion

            sig do
              params(
                quantity_conversion:
                  T.nilable(
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityConversion::OrHash
                  )
              ).void
            end
            attr_writer :quantity_conversion

            # Optional. Only valid for USAGE products. If provided, the quantity will be
            # rounded using the provided rounding method and decimal places. For example, if
            # the method is "round up" and the decimal places is 0, then the quantity will be
            # rounded up to the nearest integer.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityRounding
                )
              )
            end
            attr_reader :quantity_rounding

            sig do
              params(
                quantity_rounding:
                  T.nilable(
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityRounding::OrHash
                  )
              ).void
            end
            attr_writer :quantity_rounding

            sig { returns(T.nilable(Time)) }
            attr_reader :starting_at

            sig { params(starting_at: Time).void }
            attr_writer :starting_at

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :tags

            sig { params(tags: T::Array[String]).void }
            attr_writer :tags

            sig do
              params(
                created_at: Time,
                created_by: String,
                billable_metric_id: String,
                composite_product_ids: T::Array[String],
                composite_tags: T::Array[String],
                exclude_free_usage: T::Boolean,
                is_refundable: T::Boolean,
                name: String,
                netsuite_internal_item_id: String,
                netsuite_overage_item_id: String,
                presentation_group_key: T::Array[String],
                pricing_group_key: T::Array[String],
                quantity_conversion:
                  T.nilable(
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityConversion::OrHash
                  ),
                quantity_rounding:
                  T.nilable(
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityRounding::OrHash
                  ),
                starting_at: Time,
                tags: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              created_at:,
              created_by:,
              billable_metric_id: nil,
              composite_product_ids: nil,
              composite_tags: nil,
              exclude_free_usage: nil,
              is_refundable: nil,
              name: nil,
              # This field's availability is dependent on your client's configuration.
              netsuite_internal_item_id: nil,
              # This field's availability is dependent on your client's configuration.
              netsuite_overage_item_id: nil,
              # For USAGE products only. Groups usage line items on invoices. The superset of
              # values in the pricing group key and presentation group key must be set as one
              # compound group key on the billable metric.
              presentation_group_key: nil,
              # For USAGE products only. If set, pricing for this product will be determined for
              # each pricing_group_key value, as opposed to the product as a whole. The superset
              # of values in the pricing group key and presentation group key must be set as one
              # compound group key on the billable metric.
              pricing_group_key: nil,
              # Optional. Only valid for USAGE products. If provided, the quantity will be
              # converted using the provided conversion factor and operation. For example, if
              # the operation is "multiply" and the conversion factor is 100, then the quantity
              # will be multiplied by 100. This can be used in cases where data is sent in one
              # unit and priced in another. For example, data could be sent in MB and priced in
              # GB. In this case, the conversion factor would be 1024 and the operation would be
              # "divide".
              quantity_conversion: nil,
              # Optional. Only valid for USAGE products. If provided, the quantity will be
              # rounded using the provided rounding method and decimal places. For example, if
              # the method is "round up" and the decimal places is 0, then the quantity will be
              # rounded up to the nearest integer.
              quantity_rounding: nil,
              starting_at: nil,
              tags: nil
            )
            end

            sig do
              override.returns(
                {
                  created_at: Time,
                  created_by: String,
                  billable_metric_id: String,
                  composite_product_ids: T::Array[String],
                  composite_tags: T::Array[String],
                  exclude_free_usage: T::Boolean,
                  is_refundable: T::Boolean,
                  name: String,
                  netsuite_internal_item_id: String,
                  netsuite_overage_item_id: String,
                  presentation_group_key: T::Array[String],
                  pricing_group_key: T::Array[String],
                  quantity_conversion:
                    T.nilable(
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityConversion
                    ),
                  quantity_rounding:
                    T.nilable(
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityRounding
                    ),
                  starting_at: Time,
                  tags: T::Array[String]
                }
              )
            end
            def to_hash
            end

            class QuantityConversion < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityConversion,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # The factor to multiply or divide the quantity by.
              sig { returns(Float) }
              attr_accessor :conversion_factor

              # The operation to perform on the quantity
              sig do
                returns(
                  MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityConversion::Operation::TaggedSymbol
                )
              end
              attr_accessor :operation

              # Optional name for this conversion.
              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              # Optional. Only valid for USAGE products. If provided, the quantity will be
              # converted using the provided conversion factor and operation. For example, if
              # the operation is "multiply" and the conversion factor is 100, then the quantity
              # will be multiplied by 100. This can be used in cases where data is sent in one
              # unit and priced in another. For example, data could be sent in MB and priced in
              # GB. In this case, the conversion factor would be 1024 and the operation would be
              # "divide".
              sig do
                params(
                  conversion_factor: Float,
                  operation:
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityConversion::Operation::OrSymbol,
                  name: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The factor to multiply or divide the quantity by.
                conversion_factor:,
                # The operation to perform on the quantity
                operation:,
                # Optional name for this conversion.
                name: nil
              )
              end

              sig do
                override.returns(
                  {
                    conversion_factor: Float,
                    operation:
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityConversion::Operation::TaggedSymbol,
                    name: String
                  }
                )
              end
              def to_hash
              end

              # The operation to perform on the quantity
              module Operation
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityConversion::Operation
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MULTIPLY =
                  T.let(
                    :MULTIPLY,
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityConversion::Operation::TaggedSymbol
                  )
                DIVIDE =
                  T.let(
                    :DIVIDE,
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityConversion::Operation::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityConversion::Operation::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class QuantityRounding < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityRounding,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :decimal_places

              sig do
                returns(
                  MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityRounding::RoundingMethod::TaggedSymbol
                )
              end
              attr_accessor :rounding_method

              # Optional. Only valid for USAGE products. If provided, the quantity will be
              # rounded using the provided rounding method and decimal places. For example, if
              # the method is "round up" and the decimal places is 0, then the quantity will be
              # rounded up to the nearest integer.
              sig do
                params(
                  decimal_places: Float,
                  rounding_method:
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityRounding::RoundingMethod::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(decimal_places:, rounding_method:)
              end

              sig do
                override.returns(
                  {
                    decimal_places: Float,
                    rounding_method:
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityRounding::RoundingMethod::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              module RoundingMethod
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityRounding::RoundingMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ROUND_UP =
                  T.let(
                    :ROUND_UP,
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityRounding::RoundingMethod::TaggedSymbol
                  )
                ROUND_DOWN =
                  T.let(
                    :ROUND_DOWN,
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityRounding::RoundingMethod::TaggedSymbol
                  )
                ROUND_HALF_UP =
                  T.let(
                    :ROUND_HALF_UP,
                    MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityRounding::RoundingMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update::QuantityRounding::RoundingMethod::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end
      end
    end
  end
end
