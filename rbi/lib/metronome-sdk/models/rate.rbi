# typed: strong

module MetronomeSDK
  module Models
    class Rate < MetronomeSDK::BaseModel
      sig { returns(Symbol) }
      def rate_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def rate_type=(_)
      end

      sig { returns(T.nilable(MetronomeSDK::Models::CreditTypeData)) }
      def credit_type
      end

      sig { params(_: MetronomeSDK::Models::CreditTypeData).returns(MetronomeSDK::Models::CreditTypeData) }
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

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def pricing_group_values
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def pricing_group_values=(_)
      end

      sig { returns(T.nilable(Float)) }
      def quantity
      end

      sig { params(_: Float).returns(Float) }
      def quantity=(_)
      end

      sig { returns(T.nilable(T::Array[MetronomeSDK::Models::Tier])) }
      def tiers
      end

      sig { params(_: T::Array[MetronomeSDK::Models::Tier]).returns(T::Array[MetronomeSDK::Models::Tier]) }
      def tiers=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def use_list_prices
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def use_list_prices=(_)
      end

      sig do
        params(
          rate_type: Symbol,
          credit_type: MetronomeSDK::Models::CreditTypeData,
          custom_rate: T::Hash[Symbol, T.anything],
          is_prorated: T::Boolean,
          price: Float,
          pricing_group_values: T::Hash[Symbol, String],
          quantity: Float,
          tiers: T::Array[MetronomeSDK::Models::Tier],
          use_list_prices: T::Boolean
        )
          .void
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
      )
      end

      sig do
        override
          .returns(
            {
              rate_type: Symbol,
              credit_type: MetronomeSDK::Models::CreditTypeData,
              custom_rate: T::Hash[Symbol, T.anything],
              is_prorated: T::Boolean,
              price: Float,
              pricing_group_values: T::Hash[Symbol, String],
              quantity: Float,
              tiers: T::Array[MetronomeSDK::Models::Tier],
              use_list_prices: T::Boolean
            }
          )
      end
      def to_hash
      end

      class RateType < MetronomeSDK::Enum
        abstract!

        FLAT = :FLAT
        PERCENTAGE = :PERCENTAGE
        SUBSCRIPTION = :SUBSCRIPTION
        CUSTOM = :CUSTOM
        TIERED = :TIERED

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
