# typed: strong

module Metronome
  module Models
    module Contracts
      class QuantityConversion < Metronome::BaseModel
        sig { returns(Float) }
        attr_accessor :conversion_factor

        sig { returns(Symbol) }
        attr_accessor :operation

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { params(conversion_factor: Float, operation: Symbol, name: String).void }
        def initialize(conversion_factor:, operation:, name: nil)
        end

        sig { override.returns({conversion_factor: Float, operation: Symbol, name: String}) }
        def to_hash
        end

        class Operation < Metronome::Enum
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
