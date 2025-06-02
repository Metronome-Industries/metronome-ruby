# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class QuantityConversion < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::Contracts::QuantityConversion,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # The factor to multiply or divide the quantity by.
          sig { returns(Float) }
          attr_accessor :conversion_factor

          # The operation to perform on the quantity
          sig do
            returns(
              MetronomeSDK::V1::Contracts::QuantityConversion::Operation::OrSymbol
            )
          end
          attr_accessor :operation

          # Optional name for this conversion.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Optional. Only valid for USAGE products. If provided, the quantity will be
          # converted using the provided conversion factor and operation. For example, if
          # the operation is "multiply" and the conversion factor is 100, then the quantity
          # will be multiplied by 100. This can be used in cases where data is sent in one
          # unit and priced in another. For example, data could be sent in MB and priced in
          # GB. In this case, the conversion factor would be 1024 and the operation would be
          # "divide".
          sig do
            params(
              conversion_factor: Float,
              operation:
                MetronomeSDK::V1::Contracts::QuantityConversion::Operation::OrSymbol,
              name: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The factor to multiply or divide the quantity by.
            conversion_factor:,
            # The operation to perform on the quantity
            operation:,
            # Optional name for this conversion.
            name: nil
          )
          end

          sig do
            override.returns(
              {
                conversion_factor: Float,
                operation:
                  MetronomeSDK::V1::Contracts::QuantityConversion::Operation::OrSymbol,
                name: String
              }
            )
          end
          def to_hash
          end

          # The operation to perform on the quantity
          module Operation
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::Contracts::QuantityConversion::Operation
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MULTIPLY =
              T.let(
                :MULTIPLY,
                MetronomeSDK::V1::Contracts::QuantityConversion::Operation::TaggedSymbol
              )
            DIVIDE =
              T.let(
                :DIVIDE,
                MetronomeSDK::V1::Contracts::QuantityConversion::Operation::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::Contracts::QuantityConversion::Operation::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
