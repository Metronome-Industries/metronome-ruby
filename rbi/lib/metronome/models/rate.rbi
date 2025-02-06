# typed: strong

module Metronome
  module Models
    class Rate < Metronome::BaseModel
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

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :pricing_group_values

      sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
      attr_writer :pricing_group_values

      sig { returns(T.nilable(Float)) }
      attr_reader :quantity

      sig { params(quantity: Float).void }
      attr_writer :quantity

      sig { returns(T.nilable(T::Array[Metronome::Models::Tier])) }
      attr_reader :tiers

      sig { params(tiers: T::Array[Metronome::Models::Tier]).void }
      attr_writer :tiers

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :use_list_prices

      sig { params(use_list_prices: T::Boolean).void }
      attr_writer :use_list_prices

      sig do
        params(
          rate_type: Symbol,
          credit_type: Metronome::Models::CreditTypeData,
          custom_rate: T::Hash[Symbol, T.anything],
          is_prorated: T::Boolean,
          price: Float,
          pricing_group_values: T::Hash[Symbol, String],
          quantity: Float,
          tiers: T::Array[Metronome::Models::Tier],
          use_list_prices: T::Boolean
        ).void
      end
      def initialize(
        rate_type:,
        credit_type: nil,
        custom_rate: nil,
        is_prorated: nil,
        price: nil,
        pricing_group_values: nil,
        quantity: nil,
        tiers: nil,
        use_list_prices: nil
      ); end

      sig do
        override.returns(
          {
            rate_type: Symbol,
            credit_type: Metronome::Models::CreditTypeData,
            custom_rate: T::Hash[Symbol, T.anything],
            is_prorated: T::Boolean,
            price: Float,
            pricing_group_values: T::Hash[Symbol, String],
            quantity: Float,
            tiers: T::Array[Metronome::Models::Tier],
            use_list_prices: T::Boolean
          }
        )
      end
      def to_hash; end

      class RateType < Metronome::Enum
        abstract!

        FLAT = :FLAT
        PERCENTAGE = :PERCENTAGE
        SUBSCRIPTION = :SUBSCRIPTION
        CUSTOM = :CUSTOM
        TIERED = :TIERED

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
