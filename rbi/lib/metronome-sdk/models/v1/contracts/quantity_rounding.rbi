# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class QuantityRounding < MetronomeSDK::BaseModel
          sig { returns(Float) }
          def decimal_places
          end

          sig { params(_: Float).returns(Float) }
          def decimal_places=(_)
          end

          sig { returns(Symbol) }
          def rounding_method
          end

          sig { params(_: Symbol).returns(Symbol) }
          def rounding_method=(_)
          end

          sig { params(decimal_places: Float, rounding_method: Symbol).void }
          def initialize(decimal_places:, rounding_method:)
          end

          sig { override.returns({decimal_places: Float, rounding_method: Symbol}) }
          def to_hash
          end

          class RoundingMethod < MetronomeSDK::Enum
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
end
