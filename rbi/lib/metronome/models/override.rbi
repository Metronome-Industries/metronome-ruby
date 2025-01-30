# typed: strong

module Metronome
  module Models
    class Override < Metronome::BaseModel
      Shape = T.type_alias do
        {
          id: String,
          starting_at: Time,
          applicable_product_tags: T::Array[String],
          credit_type: Metronome::Models::CreditTypeData,
          ending_before: Time,
          entitled: T::Boolean,
          is_commit_specific: T::Boolean,
          is_prorated: T::Boolean,
          multiplier: Float,
          override_specifiers: T::Array[Metronome::Models::Override::OverrideSpecifier],
          override_tiers: T::Array[Metronome::Models::Override::OverrideTier],
          overwrite_rate: Metronome::Models::Override::OverwriteRate,
          price: Float,
          priority: Float,
          product: Metronome::Models::Override::Product,
          quantity: Float,
          rate_type: Symbol,
          target: Symbol,
          tiers: T::Array[Metronome::Models::Tier],
          type: Symbol,
          value: T::Hash[Symbol, T.anything]
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :starting_at

      sig { returns(T::Array[String]) }
      attr_reader :applicable_product_tags

      sig { params(applicable_product_tags: T::Array[String]).void }
      attr_writer :applicable_product_tags

      sig { returns(T.nilable(Metronome::Models::CreditTypeData)) }
      attr_reader :credit_type

      sig { params(credit_type: Metronome::Models::CreditTypeData).void }
      attr_writer :credit_type

      sig { returns(T.nilable(Time)) }
      attr_reader :ending_before

      sig { params(ending_before: Time).void }
      attr_writer :ending_before

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :entitled

      sig { params(entitled: T::Boolean).void }
      attr_writer :entitled

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_commit_specific

      sig { params(is_commit_specific: T::Boolean).void }
      attr_writer :is_commit_specific

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_prorated

      sig { params(is_prorated: T::Boolean).void }
      attr_writer :is_prorated

      sig { returns(T.nilable(Float)) }
      attr_reader :multiplier

      sig { params(multiplier: Float).void }
      attr_writer :multiplier

      sig { returns(T::Array[Metronome::Models::Override::OverrideSpecifier]) }
      attr_reader :override_specifiers

      sig { params(override_specifiers: T::Array[Metronome::Models::Override::OverrideSpecifier]).void }
      attr_writer :override_specifiers

      sig { returns(T::Array[Metronome::Models::Override::OverrideTier]) }
      attr_reader :override_tiers

      sig { params(override_tiers: T::Array[Metronome::Models::Override::OverrideTier]).void }
      attr_writer :override_tiers

      sig { returns(T.nilable(Metronome::Models::Override::OverwriteRate)) }
      attr_reader :overwrite_rate

      sig { params(overwrite_rate: Metronome::Models::Override::OverwriteRate).void }
      attr_writer :overwrite_rate

      sig { returns(T.nilable(Float)) }
      attr_reader :price

      sig { params(price: Float).void }
      attr_writer :price

      sig { returns(T.nilable(Float)) }
      attr_reader :priority

      sig { params(priority: Float).void }
      attr_writer :priority

      sig { returns(T.nilable(Metronome::Models::Override::Product)) }
      attr_reader :product

      sig { params(product: Metronome::Models::Override::Product).void }
      attr_writer :product

      sig { returns(T.nilable(Float)) }
      attr_reader :quantity

      sig { params(quantity: Float).void }
      attr_writer :quantity

      sig { returns(T.nilable(Symbol)) }
      attr_reader :rate_type

      sig { params(rate_type: Symbol).void }
      attr_writer :rate_type

      sig { returns(T.nilable(Symbol)) }
      attr_reader :target

      sig { params(target: Symbol).void }
      attr_writer :target

      sig { returns(T::Array[Metronome::Models::Tier]) }
      attr_reader :tiers

      sig { params(tiers: T::Array[Metronome::Models::Tier]).void }
      attr_writer :tiers

      sig { returns(T.nilable(Symbol)) }
      attr_reader :type

      sig { params(type: Symbol).void }
      attr_writer :type

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :value

      sig { params(value: T::Hash[Symbol, T.anything]).void }
      attr_writer :value

      sig do
        params(
          id: String,
          starting_at: Time,
          applicable_product_tags: T::Array[String],
          credit_type: Metronome::Models::CreditTypeData,
          ending_before: Time,
          entitled: T::Boolean,
          is_commit_specific: T::Boolean,
          is_prorated: T::Boolean,
          multiplier: Float,
          override_specifiers: T::Array[Metronome::Models::Override::OverrideSpecifier],
          override_tiers: T::Array[Metronome::Models::Override::OverrideTier],
          overwrite_rate: Metronome::Models::Override::OverwriteRate,
          price: Float,
          priority: Float,
          product: Metronome::Models::Override::Product,
          quantity: Float,
          rate_type: Symbol,
          target: Symbol,
          tiers: T::Array[Metronome::Models::Tier],
          type: Symbol,
          value: T::Hash[Symbol, T.anything]
        ).void
      end
      def initialize(
        id:,
        starting_at:,
        applicable_product_tags: nil,
        credit_type: nil,
        ending_before: nil,
        entitled: nil,
        is_commit_specific: nil,
        is_prorated: nil,
        multiplier: nil,
        override_specifiers: nil,
        override_tiers: nil,
        overwrite_rate: nil,
        price: nil,
        priority: nil,
        product: nil,
        quantity: nil,
        rate_type: nil,
        target: nil,
        tiers: nil,
        type: nil,
        value: nil
      ); end

      sig { returns(Metronome::Models::Override::Shape) }
      def to_h; end

      class OverrideSpecifier < Metronome::BaseModel
        Shape = T.type_alias do
          {
            commit_ids: T::Array[String],
            presentation_group_values: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            pricing_group_values: T::Hash[Symbol, String],
            product_id: String,
            product_tags: T::Array[String],
            recurring_commit_ids: T::Array[String],
            recurring_credit_ids: T::Array[String]
          }
        end

        sig { returns(T::Array[String]) }
        attr_reader :commit_ids

        sig { params(commit_ids: T::Array[String]).void }
        attr_writer :commit_ids

        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
        attr_reader :presentation_group_values

        sig { params(presentation_group_values: T.nilable(T::Hash[Symbol, T.nilable(String)])).void }
        attr_writer :presentation_group_values

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :pricing_group_values

        sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
        attr_writer :pricing_group_values

        sig { returns(T.nilable(String)) }
        attr_reader :product_id

        sig { params(product_id: String).void }
        attr_writer :product_id

        sig { returns(T::Array[String]) }
        attr_reader :product_tags

        sig { params(product_tags: T::Array[String]).void }
        attr_writer :product_tags

        sig { returns(T::Array[String]) }
        attr_reader :recurring_commit_ids

        sig { params(recurring_commit_ids: T::Array[String]).void }
        attr_writer :recurring_commit_ids

        sig { returns(T::Array[String]) }
        attr_reader :recurring_credit_ids

        sig { params(recurring_credit_ids: T::Array[String]).void }
        attr_writer :recurring_credit_ids

        sig do
          params(
            commit_ids: T::Array[String],
            presentation_group_values: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            pricing_group_values: T::Hash[Symbol, String],
            product_id: String,
            product_tags: T::Array[String],
            recurring_commit_ids: T::Array[String],
            recurring_credit_ids: T::Array[String]
          ).void
        end
        def initialize(
          commit_ids: nil,
          presentation_group_values: nil,
          pricing_group_values: nil,
          product_id: nil,
          product_tags: nil,
          recurring_commit_ids: nil,
          recurring_credit_ids: nil
        ); end

        sig { returns(Metronome::Models::Override::OverrideSpecifier::Shape) }
        def to_h; end
      end

      class OverrideTier < Metronome::BaseModel
        Shape = T.type_alias { {multiplier: Float, size: Float} }

        sig { returns(Float) }
        attr_accessor :multiplier

        sig { returns(T.nilable(Float)) }
        attr_reader :size

        sig { params(size: Float).void }
        attr_writer :size

        sig { params(multiplier: Float, size: Float).void }
        def initialize(multiplier:, size: nil); end

        sig { returns(Metronome::Models::Override::OverrideTier::Shape) }
        def to_h; end
      end

      class OverwriteRate < Metronome::BaseModel
        Shape = T.type_alias do
          {
            rate_type: Symbol,
            credit_type: Metronome::Models::CreditTypeData,
            custom_rate: T::Hash[Symbol, T.anything],
            is_prorated: T::Boolean,
            price: Float,
            quantity: Float,
            tiers: T::Array[Metronome::Models::Tier]
          }
        end

        sig { returns(Symbol) }
        attr_accessor :rate_type

        sig { returns(T.nilable(Metronome::Models::CreditTypeData)) }
        attr_reader :credit_type

        sig { params(credit_type: Metronome::Models::CreditTypeData).void }
        attr_writer :credit_type

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :custom_rate

        sig { params(custom_rate: T::Hash[Symbol, T.anything]).void }
        attr_writer :custom_rate

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_prorated

        sig { params(is_prorated: T::Boolean).void }
        attr_writer :is_prorated

        sig { returns(T.nilable(Float)) }
        attr_reader :price

        sig { params(price: Float).void }
        attr_writer :price

        sig { returns(T.nilable(Float)) }
        attr_reader :quantity

        sig { params(quantity: Float).void }
        attr_writer :quantity

        sig { returns(T::Array[Metronome::Models::Tier]) }
        attr_reader :tiers

        sig { params(tiers: T::Array[Metronome::Models::Tier]).void }
        attr_writer :tiers

        sig do
          params(
            rate_type: Symbol,
            credit_type: Metronome::Models::CreditTypeData,
            custom_rate: T::Hash[Symbol, T.anything],
            is_prorated: T::Boolean,
            price: Float,
            quantity: Float,
            tiers: T::Array[Metronome::Models::Tier]
          ).void
        end
        def initialize(
          rate_type:,
          credit_type: nil,
          custom_rate: nil,
          is_prorated: nil,
          price: nil,
          quantity: nil,
          tiers: nil
        )
        end

        sig { returns(Metronome::Models::Override::OverwriteRate::Shape) }
        def to_h; end

        class RateType < Metronome::Enum
          abstract!

          FLAT = :FLAT
          PERCENTAGE = :PERCENTAGE
          SUBSCRIPTION = :SUBSCRIPTION
          TIERED = :TIERED
          CUSTOM = :CUSTOM

          sig { returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class Product < Metronome::BaseModel
        Shape = T.type_alias { {id: String, name: String} }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :name

        sig { params(id: String, name: String).void }
        def initialize(id:, name:); end

        sig { returns(Metronome::Models::Override::Product::Shape) }
        def to_h; end
      end

      class RateType < Metronome::Enum
        abstract!

        FLAT = :FLAT
        PERCENTAGE = :PERCENTAGE
        SUBSCRIPTION = :SUBSCRIPTION
        TIERED = :TIERED
        CUSTOM = :CUSTOM

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Target < Metronome::Enum
        abstract!

        COMMIT_RATE = :COMMIT_RATE
        LIST_RATE = :LIST_RATE

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Type < Metronome::Enum
        abstract!

        OVERWRITE = :OVERWRITE
        MULTIPLIER = :MULTIPLIER
        TIERED = :TIERED

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
