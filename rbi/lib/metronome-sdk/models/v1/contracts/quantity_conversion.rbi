# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class QuantityConversion < MetronomeSDK::BaseModel
          sig { returns(Float) }
          def conversion_factor
          end

          sig { params(_: Float).returns(Float) }
          def conversion_factor=(_)
          end

          sig { returns(Symbol) }
          def operation
          end

          sig { params(_: Symbol).returns(Symbol) }
          def operation=(_)
          end

          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(conversion_factor: Float, operation: Symbol, name: String).void }
          def initialize(conversion_factor:, operation:, name: nil)
          end

          sig { override.returns({conversion_factor: Float, operation: Symbol, name: String}) }
          def to_hash
          end

          class Operation < MetronomeSDK::Enum
            abstract!

            MULTIPLY = :MULTIPLY
            DIVIDE = :DIVIDE

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end
    end
  end
end
