# typed: strong

module MetronomeSDK
  module Models
    class Tier < MetronomeSDK::BaseModel
      sig { returns(Float) }
      def price
      end

      sig { params(_: Float).returns(Float) }
      def price=(_)
      end

      sig { returns(T.nilable(Float)) }
      def size
      end

      sig { params(_: Float).returns(Float) }
      def size=(_)
      end

      sig { params(price: Float, size: Float).void }
      def initialize(price:, size: nil)
      end

      sig { override.returns({price: Float, size: Float}) }
      def to_hash
      end
    end
  end
end
