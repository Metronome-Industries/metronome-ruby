# typed: strong

module Metronome
  module Models
    module Contracts
      class ProductCreateParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
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

        sig { returns(T.nilable(Metronome::Models::Contracts::QuantityConversion)) }
        def quantity_conversion
        end

        sig do
          params(_: T.nilable(Metronome::Models::Contracts::QuantityConversion))
            .returns(T.nilable(Metronome::Models::Contracts::QuantityConversion))
        end
        def quantity_conversion=(_)
        end

        sig { returns(T.nilable(Metronome::Models::Contracts::QuantityRounding)) }
        def quantity_rounding
        end

        sig do
          params(_: T.nilable(Metronome::Models::Contracts::QuantityRounding))
            .returns(T.nilable(Metronome::Models::Contracts::QuantityRounding))
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
            name: String,
            type: Symbol,
            billable_metric_id: String,
            composite_product_ids: T::Array[String],
            composite_tags: T::Array[String],
            exclude_free_usage: T::Boolean,
            is_refundable: T::Boolean,
            netsuite_internal_item_id: String,
            netsuite_overage_item_id: String,
            presentation_group_key: T::Array[String],
            pricing_group_key: T::Array[String],
            quantity_conversion: T.nilable(Metronome::Models::Contracts::QuantityConversion),
            quantity_rounding: T.nilable(Metronome::Models::Contracts::QuantityRounding),
            tags: T::Array[String],
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(
          name:,
          type:,
          billable_metric_id: nil,
          composite_product_ids: nil,
          composite_tags: nil,
          exclude_free_usage: nil,
          is_refundable: nil,
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
                name: String,
                type: Symbol,
                billable_metric_id: String,
                composite_product_ids: T::Array[String],
                composite_tags: T::Array[String],
                exclude_free_usage: T::Boolean,
                is_refundable: T::Boolean,
                netsuite_internal_item_id: String,
                netsuite_overage_item_id: String,
                presentation_group_key: T::Array[String],
                pricing_group_key: T::Array[String],
                quantity_conversion: T.nilable(Metronome::Models::Contracts::QuantityConversion),
                quantity_rounding: T.nilable(Metronome::Models::Contracts::QuantityRounding),
                tags: T::Array[String],
                request_options: Metronome::RequestOptions
              }
            )
        end
        def to_hash
        end

        class Type < Metronome::Enum
          abstract!

          FIXED = :FIXED
          USAGE = :USAGE
          COMPOSITE = :COMPOSITE
          SUBSCRIPTION = :SUBSCRIPTION
          PROFESSIONAL_SERVICE = :PROFESSIONAL_SERVICE
          PRO_SERVICE = :PRO_SERVICE

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
