# typed: strong

module Metronome
  module Models
    module Contracts
      class ProductListResponse < Metronome::BaseModel
        Shape = T.type_alias do
          {
            id: String,
            current: Metronome::Models::Contracts::ProductListItemState,
            initial: Metronome::Models::Contracts::ProductListItemState,
            type: Symbol,
            updates: T::Array[Metronome::Models::Contracts::ProductListResponse::Update],
            archived_at: T.nilable(Time),
            custom_fields: T::Hash[Symbol, String]
          }
        end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Metronome::Models::Contracts::ProductListItemState) }
        attr_accessor :current

        sig { returns(Metronome::Models::Contracts::ProductListItemState) }
        attr_accessor :initial

        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(T::Array[Metronome::Models::Contracts::ProductListResponse::Update]) }
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
            current: Metronome::Models::Contracts::ProductListItemState,
            initial: Metronome::Models::Contracts::ProductListItemState,
            type: Symbol,
            updates: T::Array[Metronome::Models::Contracts::ProductListResponse::Update],
            archived_at: T.nilable(Time),
            custom_fields: T::Hash[Symbol, String]
          ).void
        end
        def initialize(id:, current:, initial:, type:, updates:, archived_at: nil, custom_fields: nil); end

        sig { returns(Metronome::Models::Contracts::ProductListResponse::Shape) }
        def to_h; end

        class Type < Metronome::Enum
          abstract!

          USAGE = :USAGE
          SUBSCRIPTION = :SUBSCRIPTION
          COMPOSITE = :COMPOSITE
          FIXED = :FIXED
          PRO_SERVICE = :PRO_SERVICE

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class Update < Metronome::BaseModel
          Shape = T.type_alias do
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

          sig { returns(T.nilable(String)) }
          attr_reader :netsuite_internal_item_id

          sig { params(netsuite_internal_item_id: String).void }
          attr_writer :netsuite_internal_item_id

          sig { returns(T.nilable(String)) }
          attr_reader :netsuite_overage_item_id

          sig { params(netsuite_overage_item_id: String).void }
          attr_writer :netsuite_overage_item_id

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :presentation_group_key

          sig { params(presentation_group_key: T::Array[String]).void }
          attr_writer :presentation_group_key

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :pricing_group_key

          sig { params(pricing_group_key: T::Array[String]).void }
          attr_writer :pricing_group_key

          sig { returns(T.nilable(Metronome::Models::Contracts::QuantityConversion)) }
          attr_accessor :quantity_conversion

          sig { returns(T.nilable(Metronome::Models::Contracts::QuantityRounding)) }
          attr_accessor :quantity_rounding

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
          ); end

          sig { returns(Metronome::Models::Contracts::ProductListResponse::Update::Shape) }
          def to_h; end
        end
      end
    end
  end
end
