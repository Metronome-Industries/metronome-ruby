# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class QuantityConversion < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute conversion_factor
          #   The factor to multiply or divide the quantity by.
          #
          #   @return [Float]
          required :conversion_factor, Float

          # @!attribute operation
          #   The operation to perform on the quantity
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::QuantityConversion::Operation]
          required :operation, enum: -> { MetronomeSDK::Models::V1::Contracts::QuantityConversion::Operation }

          # @!attribute name
          #   Optional name for this conversion.
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(conversion_factor:, operation:, name: nil)
          #   Optional. Only valid for USAGE products. If provided, the quantity will be
          #   converted using the provided conversion factor and operation. For example, if
          #   the operation is "multiply" and the conversion factor is 100, then the quantity
          #   will be multiplied by 100. This can be used in cases where data is sent in one
          #   unit and priced in another. For example, data could be sent in MB and priced in
          #   GB. In this case, the conversion factor would be 1024 and the operation would be
          #   "divide".
          #
          #   @param conversion_factor [Float] The factor to multiply or divide the quantity by.
          #
          #   @param operation [Symbol, MetronomeSDK::Models::V1::Contracts::QuantityConversion::Operation] The operation to perform on the quantity
          #
          #   @param name [String] Optional name for this conversion.

          # The operation to perform on the quantity
          #
          # @see MetronomeSDK::Models::V1::Contracts::QuantityConversion#operation
          module Operation
            extend MetronomeSDK::Internal::Type::Enum

            MULTIPLY = :MULTIPLY
            DIVIDE = :DIVIDE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
