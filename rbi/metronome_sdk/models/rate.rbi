# typed: strong

module MetronomeSDK
  module Models
    class Rate < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MetronomeSDK::Rate, MetronomeSDK::Internal::AnyHash)
        end

      sig { returns(MetronomeSDK::Rate::RateType::TaggedSymbol) }
      attr_accessor :rate_type

      sig { returns(T.nilable(MetronomeSDK::CreditTypeData)) }
      attr_reader :credit_type

      sig { params(credit_type: MetronomeSDK::CreditTypeData::OrHash).void }
      attr_writer :credit_type

      # Only set for CUSTOM rate_type. This field is interpreted by custom rate
      # processors.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :custom_rate

      sig { params(custom_rate: T::Hash[Symbol, T.anything]).void }
      attr_writer :custom_rate

      # Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
      # set to true.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_prorated

      sig { params(is_prorated: T::Boolean).void }
      attr_writer :is_prorated

      # Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
      # this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
      sig { returns(T.nilable(Float)) }
      attr_reader :price

      sig { params(price: Float).void }
      attr_writer :price

      # if pricing groups are used, this will contain the values used to calculate the
      # price
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :pricing_group_values

      sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
      attr_writer :pricing_group_values

      # Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
      sig { returns(T.nilable(Float)) }
      attr_reader :quantity

      sig { params(quantity: Float).void }
      attr_writer :quantity

      # Only set for TIERED rate_type.
      sig { returns(T.nilable(T::Array[MetronomeSDK::Tier])) }
      attr_reader :tiers

      sig { params(tiers: T::Array[MetronomeSDK::Tier::OrHash]).void }
      attr_writer :tiers

      # Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed
      # using list prices rather than the standard rates for this product on the
      # contract.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :use_list_prices

      sig { params(use_list_prices: T::Boolean).void }
      attr_writer :use_list_prices

      sig do
        params(
          rate_type: MetronomeSDK::Rate::RateType::OrSymbol,
          credit_type: MetronomeSDK::CreditTypeData::OrHash,
          custom_rate: T::Hash[Symbol, T.anything],
          is_prorated: T::Boolean,
          price: Float,
          pricing_group_values: T::Hash[Symbol, String],
          quantity: Float,
          tiers: T::Array[MetronomeSDK::Tier::OrHash],
          use_list_prices: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        rate_type:,
        credit_type: nil,
        # Only set for CUSTOM rate_type. This field is interpreted by custom rate
        # processors.
        custom_rate: nil,
        # Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
        # set to true.
        is_prorated: nil,
        # Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
        # this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
        price: nil,
        # if pricing groups are used, this will contain the values used to calculate the
        # price
        pricing_group_values: nil,
        # Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
        quantity: nil,
        # Only set for TIERED rate_type.
        tiers: nil,
        # Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed
        # using list prices rather than the standard rates for this product on the
        # contract.
        use_list_prices: nil
      )
      end

      sig do
        override.returns(
          {
            rate_type: MetronomeSDK::Rate::RateType::TaggedSymbol,
            credit_type: MetronomeSDK::CreditTypeData,
            custom_rate: T::Hash[Symbol, T.anything],
            is_prorated: T::Boolean,
            price: Float,
            pricing_group_values: T::Hash[Symbol, String],
            quantity: Float,
            tiers: T::Array[MetronomeSDK::Tier],
            use_list_prices: T::Boolean
          }
        )
      end
      def to_hash
      end

      module RateType
        extend MetronomeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, MetronomeSDK::Rate::RateType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FLAT = T.let(:FLAT, MetronomeSDK::Rate::RateType::TaggedSymbol)
        PERCENTAGE =
          T.let(:PERCENTAGE, MetronomeSDK::Rate::RateType::TaggedSymbol)
        SUBSCRIPTION =
          T.let(:SUBSCRIPTION, MetronomeSDK::Rate::RateType::TaggedSymbol)
        CUSTOM = T.let(:CUSTOM, MetronomeSDK::Rate::RateType::TaggedSymbol)
        TIERED = T.let(:TIERED, MetronomeSDK::Rate::RateType::TaggedSymbol)

        sig do
          override.returns(T::Array[MetronomeSDK::Rate::RateType::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
