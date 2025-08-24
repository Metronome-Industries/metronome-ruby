# typed: strong

module MetronomeSDK
  module Models
    class OverrideTier < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MetronomeSDK::OverrideTier, MetronomeSDK::Internal::AnyHash)
        end

      sig { returns(Float) }
      attr_accessor :multiplier

      sig { returns(T.nilable(Float)) }
      attr_reader :size

      sig { params(size: Float).void }
      attr_writer :size

      sig { params(multiplier: Float, size: Float).returns(T.attached_class) }
      def self.new(multiplier:, size: nil)
      end

      sig { override.returns({ multiplier: Float, size: Float }) }
      def to_hash
      end
    end
  end
end
