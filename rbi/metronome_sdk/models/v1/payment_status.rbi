# typed: strong

module MetronomeSDK
  module Models
    module V1
      module PaymentStatus
        extend MetronomeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, MetronomeSDK::V1::PaymentStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING = T.let(:pending, MetronomeSDK::V1::PaymentStatus::TaggedSymbol)
        REQUIRES_INTERVENTION =
          T.let(
            :requires_intervention,
            MetronomeSDK::V1::PaymentStatus::TaggedSymbol
          )
        PAID = T.let(:paid, MetronomeSDK::V1::PaymentStatus::TaggedSymbol)
        CANCELED =
          T.let(:canceled, MetronomeSDK::V1::PaymentStatus::TaggedSymbol)

        sig do
          override.returns(
            T::Array[MetronomeSDK::V1::PaymentStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
