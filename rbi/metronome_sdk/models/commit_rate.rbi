# typed: strong

module MetronomeSDK
  module Models
    class CommitRate < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MetronomeSDK::CommitRate, MetronomeSDK::Internal::AnyHash)
        end

      sig { returns(MetronomeSDK::CommitRate::RateType::OrSymbol) }
      attr_accessor :rate_type

      # Commit rate price. For FLAT rate_type, this must be >=0.
      sig { returns(T.nilable(Float)) }
      attr_reader :price

      sig { params(price: Float).void }
      attr_writer :price

      # Only set for TIERED rate_type.
      sig { returns(T.nilable(T::Array[MetronomeSDK::Tier])) }
      attr_reader :tiers

      sig { params(tiers: T::Array[MetronomeSDK::Tier::OrHash]).void }
      attr_writer :tiers

      # A distinct rate on the rate card. You can choose to use this rate rather than
      # list rate when consuming a credit or commit.
      sig do
        params(
          rate_type: MetronomeSDK::CommitRate::RateType::OrSymbol,
          price: Float,
          tiers: T::Array[MetronomeSDK::Tier::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        rate_type:,
        # Commit rate price. For FLAT rate_type, this must be >=0.
        price: nil,
        # Only set for TIERED rate_type.
        tiers: nil
      )
      end

      sig do
        override.returns(
          {
            rate_type: MetronomeSDK::CommitRate::RateType::OrSymbol,
            price: Float,
            tiers: T::Array[MetronomeSDK::Tier]
          }
        )
      end
      def to_hash
      end

      module RateType
        extend MetronomeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, MetronomeSDK::CommitRate::RateType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FLAT = T.let(:FLAT, MetronomeSDK::CommitRate::RateType::TaggedSymbol)
        PERCENTAGE =
          T.let(:PERCENTAGE, MetronomeSDK::CommitRate::RateType::TaggedSymbol)
        SUBSCRIPTION =
          T.let(:SUBSCRIPTION, MetronomeSDK::CommitRate::RateType::TaggedSymbol)
        TIERED =
          T.let(:TIERED, MetronomeSDK::CommitRate::RateType::TaggedSymbol)
        TIERED_PERCENTAGE =
          T.let(
            :TIERED_PERCENTAGE,
            MetronomeSDK::CommitRate::RateType::TaggedSymbol
          )
        CUSTOM =
          T.let(:CUSTOM, MetronomeSDK::CommitRate::RateType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[MetronomeSDK::CommitRate::RateType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
