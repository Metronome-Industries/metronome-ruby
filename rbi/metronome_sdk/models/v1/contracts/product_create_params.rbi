# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class ProductCreateParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::Contracts::ProductCreateParams,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # displayed on invoices
          sig { returns(String) }
          attr_accessor :name

          sig do
            returns(
              MetronomeSDK::V1::Contracts::ProductCreateParams::Type::OrSymbol
            )
          end
          attr_accessor :type

          # Required for USAGE products
          sig { returns(T.nilable(String)) }
          attr_reader :billable_metric_id

          sig { params(billable_metric_id: String).void }
          attr_writer :billable_metric_id

          # Required for COMPOSITE products
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :composite_product_ids

          sig { params(composite_product_ids: T::Array[String]).void }
          attr_writer :composite_product_ids

          # Required for COMPOSITE products
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :composite_tags

          sig { params(composite_tags: T::Array[String]).void }
          attr_writer :composite_tags

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :custom_fields

          sig { params(custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :custom_fields

          # Beta feature only available for composite products. If true, products with $0
          # will not be included when computing composite usage. Defaults to false
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :exclude_free_usage

          sig { params(exclude_free_usage: T::Boolean).void }
          attr_writer :exclude_free_usage

          # This field's availability is dependent on your client's configuration. Defaults
          # to true.
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
            returns(T.nilable(MetronomeSDK::V1::Contracts::QuantityConversion))
          end
          attr_reader :quantity_conversion

          sig do
            params(
              quantity_conversion:
                T.nilable(
                  MetronomeSDK::V1::Contracts::QuantityConversion::OrHash
                )
            ).void
          end
          attr_writer :quantity_conversion

          # Optional. Only valid for USAGE products. If provided, the quantity will be
          # rounded using the provided rounding method and decimal places. For example, if
          # the method is "round up" and the decimal places is 0, then the quantity will be
          # rounded up to the nearest integer.
          sig do
            returns(T.nilable(MetronomeSDK::V1::Contracts::QuantityRounding))
          end
          attr_reader :quantity_rounding

          sig do
            params(
              quantity_rounding:
                T.nilable(MetronomeSDK::V1::Contracts::QuantityRounding::OrHash)
            ).void
          end
          attr_writer :quantity_rounding

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :tags

          sig { params(tags: T::Array[String]).void }
          attr_writer :tags

          sig do
            params(
              name: String,
              type:
                MetronomeSDK::V1::Contracts::ProductCreateParams::Type::OrSymbol,
              billable_metric_id: String,
              composite_product_ids: T::Array[String],
              composite_tags: T::Array[String],
              custom_fields: T::Hash[Symbol, String],
              exclude_free_usage: T::Boolean,
              is_refundable: T::Boolean,
              netsuite_internal_item_id: String,
              netsuite_overage_item_id: String,
              presentation_group_key: T::Array[String],
              pricing_group_key: T::Array[String],
              quantity_conversion:
                T.nilable(
                  MetronomeSDK::V1::Contracts::QuantityConversion::OrHash
                ),
              quantity_rounding:
                T.nilable(
                  MetronomeSDK::V1::Contracts::QuantityRounding::OrHash
                ),
              tags: T::Array[String],
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # displayed on invoices
            name:,
            type:,
            # Required for USAGE products
            billable_metric_id: nil,
            # Required for COMPOSITE products
            composite_product_ids: nil,
            # Required for COMPOSITE products
            composite_tags: nil,
            custom_fields: nil,
            # Beta feature only available for composite products. If true, products with $0
            # will not be included when computing composite usage. Defaults to false
            exclude_free_usage: nil,
            # This field's availability is dependent on your client's configuration. Defaults
            # to true.
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
            tags: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                name: String,
                type:
                  MetronomeSDK::V1::Contracts::ProductCreateParams::Type::OrSymbol,
                billable_metric_id: String,
                composite_product_ids: T::Array[String],
                composite_tags: T::Array[String],
                custom_fields: T::Hash[Symbol, String],
                exclude_free_usage: T::Boolean,
                is_refundable: T::Boolean,
                netsuite_internal_item_id: String,
                netsuite_overage_item_id: String,
                presentation_group_key: T::Array[String],
                pricing_group_key: T::Array[String],
                quantity_conversion:
                  T.nilable(MetronomeSDK::V1::Contracts::QuantityConversion),
                quantity_rounding:
                  T.nilable(MetronomeSDK::V1::Contracts::QuantityRounding),
                tags: T::Array[String],
                request_options: MetronomeSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::Contracts::ProductCreateParams::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FIXED =
              T.let(
                :FIXED,
                MetronomeSDK::V1::Contracts::ProductCreateParams::Type::TaggedSymbol
              )
            USAGE =
              T.let(
                :USAGE,
                MetronomeSDK::V1::Contracts::ProductCreateParams::Type::TaggedSymbol
              )
            COMPOSITE =
              T.let(
                :COMPOSITE,
                MetronomeSDK::V1::Contracts::ProductCreateParams::Type::TaggedSymbol
              )
            SUBSCRIPTION =
              T.let(
                :SUBSCRIPTION,
                MetronomeSDK::V1::Contracts::ProductCreateParams::Type::TaggedSymbol
              )
            PROFESSIONAL_SERVICE =
              T.let(
                :PROFESSIONAL_SERVICE,
                MetronomeSDK::V1::Contracts::ProductCreateParams::Type::TaggedSymbol
              )
            PRO_SERVICE =
              T.let(
                :PRO_SERVICE,
                MetronomeSDK::V1::Contracts::ProductCreateParams::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::Contracts::ProductCreateParams::Type::TaggedSymbol
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
