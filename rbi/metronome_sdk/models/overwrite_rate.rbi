# typed: strong

module MetronomeSDK
  module Models
    class OverwriteRate < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MetronomeSDK::OverwriteRate, MetronomeSDK::Internal::AnyHash)
        end

      sig { returns(MetronomeSDK::OverwriteRate::RateType::TaggedSymbol) }
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

      sig do
        params(
          rate_type: MetronomeSDK::OverwriteRate::RateType::OrSymbol,
          credit_type: MetronomeSDK::CreditTypeData::OrHash,
          custom_rate: T::Hash[Symbol, T.anything],
          is_prorated: T::Boolean,
          price: Float,
          quantity: Float,
          tiers: T::Array[MetronomeSDK::Tier::OrHash]
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
        # Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
        quantity: nil,
        # Only set for TIERED rate_type.
        tiers: nil
      )
      end

      sig do
        override.returns(
          {
            rate_type: MetronomeSDK::OverwriteRate::RateType::TaggedSymbol,
            credit_type: MetronomeSDK::CreditTypeData,
            custom_rate: T::Hash[Symbol, T.anything],
            is_prorated: T::Boolean,
            price: Float,
            quantity: Float,
            tiers: T::Array[MetronomeSDK::Tier]
          }
        )
      end
      def to_hash
      end

      module RateType
        extend MetronomeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, MetronomeSDK::OverwriteRate::RateType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FLAT = T.let(:FLAT, MetronomeSDK::OverwriteRate::RateType::TaggedSymbol)
        PERCENTAGE =
          T.let(
            :PERCENTAGE,
            MetronomeSDK::OverwriteRate::RateType::TaggedSymbol
          )
        SUBSCRIPTION =
          T.let(
            :SUBSCRIPTION,
            MetronomeSDK::OverwriteRate::RateType::TaggedSymbol
          )
        TIERED =
          T.let(:TIERED, MetronomeSDK::OverwriteRate::RateType::TaggedSymbol)
        TIERED_PERCENTAGE =
          T.let(
            :TIERED_PERCENTAGE,
            MetronomeSDK::OverwriteRate::RateType::TaggedSymbol
          )
        CUSTOM =
          T.let(:CUSTOM, MetronomeSDK::OverwriteRate::RateType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[MetronomeSDK::OverwriteRate::RateType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
