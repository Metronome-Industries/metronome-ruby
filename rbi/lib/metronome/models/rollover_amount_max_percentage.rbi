# typed: strong

module Metronome
  module Models
    class RolloverAmountMaxPercentage < Metronome::BaseModel
      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :value

      sig { params(type: Symbol, value: Float).void }
      def initialize(type:, value:)
      end

      sig { override.returns({type: Symbol, value: Float}) }
      def to_hash
      end

      class Type < Metronome::Enum
        abstract!

        MAX_PERCENTAGE = :MAX_PERCENTAGE

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
