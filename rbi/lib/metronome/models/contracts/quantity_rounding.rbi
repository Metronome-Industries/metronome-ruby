# typed: strong

module Metronome
  module Models
    module Contracts
      class QuantityRounding < Metronome::BaseModel
        sig { returns(Float) }
        attr_accessor :decimal_places

        sig { returns(Symbol) }
        attr_accessor :rounding_method

        sig { params(decimal_places: Float, rounding_method: Symbol).void }
        def initialize(decimal_places:, rounding_method:)
        end

        sig { override.returns({decimal_places: Float, rounding_method: Symbol}) }
        def to_hash
        end

        class RoundingMethod < Metronome::Enum
          abstract!

          ROUND_UP = :ROUND_UP
          ROUND_DOWN = :ROUND_DOWN
          ROUND_HALF_UP = :ROUND_HALF_UP

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
