# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class QuantityRounding < MetronomeSDK::BaseModel
          # @!attribute decimal_places
          #
          #   @return [Float]
          required :decimal_places, Float

          # @!attribute rounding_method
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::QuantityRounding::RoundingMethod]
          required :rounding_method,
                   enum: -> { MetronomeSDK::Models::V1::Contracts::QuantityRounding::RoundingMethod }

          # @!parse
          #   # Optional. Only valid for USAGE products. If provided, the quantity will be
          #   #   rounded using the provided rounding method and decimal places. For example, if
          #   #   the method is "round up" and the decimal places is 0, then the quantity will be
          #   #   rounded up to the nearest integer.
          #   #
          #   # @param decimal_places [Float]
          #   # @param rounding_method [Symbol, MetronomeSDK::Models::V1::Contracts::QuantityRounding::RoundingMethod]
          #   #
          #   def initialize(decimal_places:, rounding_method:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case rounding_method
          # in :ROUND_UP
          #   # ...
          # in :ROUND_DOWN
          #   # ...
          # in :ROUND_HALF_UP
          #   # ...
          # end
          # ```
          class RoundingMethod < MetronomeSDK::Enum
            ROUND_UP = :ROUND_UP
            ROUND_DOWN = :ROUND_DOWN
            ROUND_HALF_UP = :ROUND_HALF_UP

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end
      end
    end
  end
end
