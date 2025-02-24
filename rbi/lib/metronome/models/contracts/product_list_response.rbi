# typed: strong

module Metronome
  module Models
    module Contracts
      class ProductListResponse < Metronome::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(Metronome::Models::Contracts::ProductListItemState) }
        def current
        end

        sig do
          params(_: Metronome::Models::Contracts::ProductListItemState).returns(Metronome::Models::Contracts::ProductListItemState)
        end
        def current=(_)
        end

        sig { returns(Metronome::Models::Contracts::ProductListItemState) }
        def initial
        end

        sig do
          params(_: Metronome::Models::Contracts::ProductListItemState).returns(Metronome::Models::Contracts::ProductListItemState)
        end
        def initial=(_)
        end

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig { returns(T::Array[Metronome::Models::Contracts::ProductListResponse::Update]) }
        def updates
        end

        sig do
          params(_: T::Array[Metronome::Models::Contracts::ProductListResponse::Update]).returns(T::Array[Metronome::Models::Contracts::ProductListResponse::Update])
        end
        def updates=(_)
        end

        sig { returns(T.nilable(Time)) }
        def archived_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def archived_at=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def custom_fields
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def custom_fields=(_)
        end

        sig do
          params(
            id: String,
            current: Metronome::Models::Contracts::ProductListItemState,
            initial: Metronome::Models::Contracts::ProductListItemState,
            type: Symbol,
            updates: T::Array[Metronome::Models::Contracts::ProductListResponse::Update],
            archived_at: T.nilable(Time),
            custom_fields: T::Hash[Symbol, String]
          ).void
        end
        def initialize(id:, current:, initial:, type:, updates:, archived_at: nil, custom_fields: nil)
        end

        sig do
          override.returns(
            {
              id: String,
              current: Metronome::Models::Contracts::ProductListItemState,
              initial: Metronome::Models::Contracts::ProductListItemState,
              type: Symbol,
              updates: T::Array[Metronome::Models::Contracts::ProductListResponse::Update],
              archived_at: T.nilable(Time),
              custom_fields: T::Hash[Symbol, String]
            }
          )
        end
        def to_hash
        end

        class Type < Metronome::Enum
          abstract!

          USAGE = :USAGE
          SUBSCRIPTION = :SUBSCRIPTION
          COMPOSITE = :COMPOSITE
          FIXED = :FIXED
          PRO_SERVICE = :PRO_SERVICE

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Update < Metronome::BaseModel
          sig { returns(Time) }
          def created_at
          end

          sig { params(_: Time).returns(Time) }
          def created_at=(_)
          end

          sig { returns(String) }
          def created_by
          end

          sig { params(_: String).returns(String) }
          def created_by=(_)
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

          sig { returns(T.nilable(Metronome::Models::Contracts::QuantityConversion)) }
          def quantity_conversion
          end

          sig do
            params(_: T.nilable(Metronome::Models::Contracts::QuantityConversion)).returns(T.nilable(Metronome::Models::Contracts::QuantityConversion))
          end
          def quantity_conversion=(_)
          end

          sig { returns(T.nilable(Metronome::Models::Contracts::QuantityRounding)) }
          def quantity_rounding
          end

          sig do
            params(_: T.nilable(Metronome::Models::Contracts::QuantityRounding)).returns(T.nilable(Metronome::Models::Contracts::QuantityRounding))
          end
          def quantity_rounding=(_)
          end

          sig { returns(T.nilable(Time)) }
          def starting_at
          end

          sig { params(_: Time).returns(Time) }
          def starting_at=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def tags
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def tags=(_)
          end

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
              quantity_conversion: T.nilable(Metronome::Models::Contracts::QuantityConversion),
              quantity_rounding: T.nilable(Metronome::Models::Contracts::QuantityRounding),
              starting_at: Time,
              tags: T::Array[String]
            ).void
          end
          def initialize(
            created_at:,
            created_by:,
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
                quantity_conversion: T.nilable(Metronome::Models::Contracts::QuantityConversion),
                quantity_rounding: T.nilable(Metronome::Models::Contracts::QuantityRounding),
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
