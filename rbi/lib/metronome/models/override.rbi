# typed: strong

module Metronome
  module Models
    class Override < Metronome::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Time) }
      def starting_at
      end

      sig { params(_: Time).returns(Time) }
      def starting_at=(_)
      end

      sig { returns(T.nilable(T::Array[String])) }
      def applicable_product_tags
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def applicable_product_tags=(_)
      end

      sig { returns(T.nilable(Metronome::Models::CreditTypeData)) }
      def credit_type
      end

      sig { params(_: Metronome::Models::CreditTypeData).returns(Metronome::Models::CreditTypeData) }
      def credit_type=(_)
      end

      sig { returns(T.nilable(Time)) }
      def ending_before
      end

      sig { params(_: Time).returns(Time) }
      def ending_before=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def entitled
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def entitled=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def is_commit_specific
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def is_commit_specific=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def is_prorated
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def is_prorated=(_)
      end

      sig { returns(T.nilable(Float)) }
      def multiplier
      end

      sig { params(_: Float).returns(Float) }
      def multiplier=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::Override::OverrideSpecifier])) }
      def override_specifiers
      end

      sig do
        params(_: T::Array[Metronome::Models::Override::OverrideSpecifier]).returns(T::Array[Metronome::Models::Override::OverrideSpecifier])
      end
      def override_specifiers=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::Override::OverrideTier])) }
      def override_tiers
      end

      sig do
        params(_: T::Array[Metronome::Models::Override::OverrideTier]).returns(T::Array[Metronome::Models::Override::OverrideTier])
      end
      def override_tiers=(_)
      end

      sig { returns(T.nilable(Metronome::Models::Override::OverwriteRate)) }
      def overwrite_rate
      end

      sig do
        params(_: Metronome::Models::Override::OverwriteRate).returns(Metronome::Models::Override::OverwriteRate)
      end
      def overwrite_rate=(_)
      end

      sig { returns(T.nilable(Float)) }
      def price
      end

      sig { params(_: Float).returns(Float) }
      def price=(_)
      end

      sig { returns(T.nilable(Float)) }
      def priority
      end

      sig { params(_: Float).returns(Float) }
      def priority=(_)
      end

      sig { returns(T.nilable(Metronome::Models::Override::Product)) }
      def product
      end

      sig { params(_: Metronome::Models::Override::Product).returns(Metronome::Models::Override::Product) }
      def product=(_)
      end

      sig { returns(T.nilable(Float)) }
      def quantity
      end

      sig { params(_: Float).returns(Float) }
      def quantity=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def rate_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def rate_type=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def target
      end

      sig { params(_: Symbol).returns(Symbol) }
      def target=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::Tier])) }
      def tiers
      end

      sig { params(_: T::Array[Metronome::Models::Tier]).returns(T::Array[Metronome::Models::Tier]) }
      def tiers=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      def value
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def value=(_)
      end

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
      )
      end

      sig do
        override.returns(
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
        )
      end
      def to_hash
      end

      class OverrideSpecifier < Metronome::BaseModel
        sig { returns(T.nilable(T::Array[String])) }
        def commit_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def commit_ids=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
        def presentation_group_values
        end

        sig { params(_: T::Hash[Symbol, T.nilable(String)]).returns(T::Hash[Symbol, T.nilable(String)]) }
        def presentation_group_values=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def pricing_group_values
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def pricing_group_values=(_)
        end

        sig { returns(T.nilable(String)) }
        def product_id
        end

        sig { params(_: String).returns(String) }
        def product_id=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def product_tags
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def product_tags=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def recurring_commit_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def recurring_commit_ids=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def recurring_credit_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def recurring_credit_ids=(_)
        end

        sig do
          params(
            commit_ids: T::Array[String],
            presentation_group_values: T::Hash[Symbol, T.nilable(String)],
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
        )
        end

        sig do
          override.returns(
            {
              commit_ids: T::Array[String],
              presentation_group_values: T::Hash[Symbol, T.nilable(String)],
              pricing_group_values: T::Hash[Symbol, String],
              product_id: String,
              product_tags: T::Array[String],
              recurring_commit_ids: T::Array[String],
              recurring_credit_ids: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end

      class OverrideTier < Metronome::BaseModel
        sig { returns(Float) }
        def multiplier
        end

        sig { params(_: Float).returns(Float) }
        def multiplier=(_)
        end

        sig { returns(T.nilable(Float)) }
        def size
        end

        sig { params(_: Float).returns(Float) }
        def size=(_)
        end

        sig { params(multiplier: Float, size: Float).void }
        def initialize(multiplier:, size: nil)
        end

        sig { override.returns({multiplier: Float, size: Float}) }
        def to_hash
        end
      end

      class OverwriteRate < Metronome::BaseModel
        sig { returns(Symbol) }
        def rate_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def rate_type=(_)
        end

        sig { returns(T.nilable(Metronome::Models::CreditTypeData)) }
        def credit_type
        end

        sig { params(_: Metronome::Models::CreditTypeData).returns(Metronome::Models::CreditTypeData) }
        def credit_type=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        def custom_rate
        end

        sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
        def custom_rate=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def is_prorated
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def is_prorated=(_)
        end

        sig { returns(T.nilable(Float)) }
        def price
        end

        sig { params(_: Float).returns(Float) }
        def price=(_)
        end

        sig { returns(T.nilable(Float)) }
        def quantity
        end

        sig { params(_: Float).returns(Float) }
        def quantity=(_)
        end

        sig { returns(T.nilable(T::Array[Metronome::Models::Tier])) }
        def tiers
        end

        sig { params(_: T::Array[Metronome::Models::Tier]).returns(T::Array[Metronome::Models::Tier]) }
        def tiers=(_)
        end

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

        sig do
          override.returns(
            {
              rate_type: Symbol,
              credit_type: Metronome::Models::CreditTypeData,
              custom_rate: T::Hash[Symbol, T.anything],
              is_prorated: T::Boolean,
              price: Float,
              quantity: Float,
              tiers: T::Array[Metronome::Models::Tier]
            }
          )
        end
        def to_hash
        end

        class RateType < Metronome::Enum
          abstract!

          FLAT = :FLAT
          PERCENTAGE = :PERCENTAGE
          SUBSCRIPTION = :SUBSCRIPTION
          TIERED = :TIERED
          CUSTOM = :CUSTOM

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Product < Metronome::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { params(id: String, name: String).void }
        def initialize(id:, name:)
        end

        sig { override.returns({id: String, name: String}) }
        def to_hash
        end
      end

      class RateType < Metronome::Enum
        abstract!

        FLAT = :FLAT
        PERCENTAGE = :PERCENTAGE
        SUBSCRIPTION = :SUBSCRIPTION
        TIERED = :TIERED
        CUSTOM = :CUSTOM

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Target < Metronome::Enum
        abstract!

        COMMIT_RATE = :COMMIT_RATE
        LIST_RATE = :LIST_RATE

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Metronome::Enum
        abstract!

        OVERWRITE = :OVERWRITE
        MULTIPLIER = :MULTIPLIER
        TIERED = :TIERED

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
