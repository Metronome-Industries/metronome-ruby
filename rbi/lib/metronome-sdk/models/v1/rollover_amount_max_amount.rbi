# typed: strong

module MetronomeSDK
  module Models
    module V1
      class RolloverAmountMaxAmount < MetronomeSDK::BaseModel
        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig { returns(Float) }
        def value
        end

        sig { params(_: Float).returns(Float) }
        def value=(_)
        end

        sig { params(type: Symbol, value: Float).void }
        def initialize(type:, value:)
        end

        sig { override.returns({type: Symbol, value: Float}) }
        def to_hash
        end

        class Type < MetronomeSDK::Enum
          abstract!

          MAX_AMOUNT = :MAX_AMOUNT

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
