# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class ProductListItemState < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

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
                  MetronomeSDK::V1::Contracts::QuantityConversion::OrHash
                ),
              quantity_rounding:
                T.nilable(
                  MetronomeSDK::V1::Contracts::QuantityRounding::OrHash
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
                  T.nilable(MetronomeSDK::V1::Contracts::QuantityConversion),
                quantity_rounding:
                  T.nilable(MetronomeSDK::V1::Contracts::QuantityRounding),
                starting_at: Time,
                tags: T::Array[String]
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
