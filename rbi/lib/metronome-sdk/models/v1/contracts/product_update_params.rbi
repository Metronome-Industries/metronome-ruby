# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class ProductUpdateParams < MetronomeSDK::BaseModel
          extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

          sig { returns(String) }
          def product_id
          end

          sig { params(_: String).returns(String) }
          def product_id=(_)
          end

          sig { returns(Time) }
          def starting_at
          end

          sig { params(_: Time).returns(Time) }
          def starting_at=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: String).returns(String) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def composite_product_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def composite_product_ids=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def composite_tags
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def composite_tags=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def exclude_free_usage
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def exclude_free_usage=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def is_refundable
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_refundable=(_)
          end

          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def netsuite_internal_item_id
          end

          sig { params(_: String).returns(String) }
          def netsuite_internal_item_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def netsuite_overage_item_id
          end

          sig { params(_: String).returns(String) }
          def netsuite_overage_item_id=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def presentation_group_key
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def presentation_group_key=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def pricing_group_key
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def pricing_group_key=(_)
          end

          sig { returns(T.nilable(MetronomeSDK::Models::V1::Contracts::QuantityConversion)) }
          def quantity_conversion
          end

          sig do
            params(_: T.nilable(MetronomeSDK::Models::V1::Contracts::QuantityConversion))
              .returns(T.nilable(MetronomeSDK::Models::V1::Contracts::QuantityConversion))
          end
          def quantity_conversion=(_)
          end

          sig { returns(T.nilable(MetronomeSDK::Models::V1::Contracts::QuantityRounding)) }
          def quantity_rounding
          end

          sig do
            params(_: T.nilable(MetronomeSDK::Models::V1::Contracts::QuantityRounding))
              .returns(T.nilable(MetronomeSDK::Models::V1::Contracts::QuantityRounding))
          end
          def quantity_rounding=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def tags
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def tags=(_)
          end

          sig do
            params(
              product_id: String,
              starting_at: Time,
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
              quantity_conversion: T.nilable(MetronomeSDK::Models::V1::Contracts::QuantityConversion),
              quantity_rounding: T.nilable(MetronomeSDK::Models::V1::Contracts::QuantityRounding),
              tags: T::Array[String],
              request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .void
          end
          def initialize(
            product_id:,
            starting_at:,
            billable_metric_id: nil,
            composite_product_ids: nil,
            composite_tags: nil,
            exclude_free_usage: nil,
            is_refundable: nil,
            name: nil,
            netsuite_internal_item_id: nil,
            netsuite_overage_item_id: nil,
            presentation_group_key: nil,
            pricing_group_key: nil,
            quantity_conversion: nil,
            quantity_rounding: nil,
            tags: nil,
            request_options: {}
          )
          end

          sig do
            override
              .returns(
                {
                  product_id: String,
                  starting_at: Time,
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
                  quantity_conversion: T.nilable(MetronomeSDK::Models::V1::Contracts::QuantityConversion),
                  quantity_rounding: T.nilable(MetronomeSDK::Models::V1::Contracts::QuantityRounding),
                  tags: T::Array[String],
                  request_options: MetronomeSDK::RequestOptions
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
