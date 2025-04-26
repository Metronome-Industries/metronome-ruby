# typed: strong

module MetronomeSDK
  module Models
    class Tier < MetronomeSDK::Internal::Type::BaseModel
      sig { returns(Float) }
      attr_accessor :price

      sig { returns(T.nilable(Float)) }
      attr_reader :size

      sig { params(size: Float).void }
      attr_writer :size

      sig { params(price: Float, size: Float).returns(T.attached_class) }
      def self.new(price:, size: nil); end

      sig { override.returns({price: Float, size: Float}) }
      def to_hash; end
    end
  end
end
