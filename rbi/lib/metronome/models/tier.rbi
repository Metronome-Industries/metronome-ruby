# typed: strong

module Metronome
  module Models
    class Tier < Metronome::BaseModel
      Shape = T.type_alias { {price: Float, size: Float} }

      sig { returns(Float) }
      attr_accessor :price

      sig { returns(T.nilable(Float)) }
      attr_reader :size

      sig { params(size: Float).void }
      attr_writer :size

      sig { params(price: Float, size: Float).void }
      def initialize(price:, size: nil); end

      sig { returns(Metronome::Models::Tier::Shape) }
      def to_h; end
    end
  end
end
