# typed: strong

module Metronome
  module Models
    class RolloverAmountMaxAmount < Metronome::BaseModel
      Shape = T.type_alias { {type: Symbol, value: Float} }

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :value

      sig { params(type: Symbol, value: Float).void }
      def initialize(type:, value:); end

      sig { returns(Metronome::Models::RolloverAmountMaxAmount::Shape) }
      def to_h; end

      class Type < Metronome::Enum
        abstract!

        MAX_AMOUNT = :MAX_AMOUNT

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
