# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class RolloverAmountMaxAmount < MetronomeSDK::BaseModel
        # @!attribute type
        #   Rollover up to a fixed amount of the original credit grant amount.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::RolloverAmountMaxAmount::Type]
        required :type, enum: -> { MetronomeSDK::Models::V1::RolloverAmountMaxAmount::Type }

        # @!attribute value
        #   The maximum amount to rollover.
        #
        #   @return [Float]
        required :value, Float

        # @!parse
        #   # @param type [Symbol, MetronomeSDK::Models::V1::RolloverAmountMaxAmount::Type]
        #   # @param value [Float]
        #   #
        #   def initialize(type:, value:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        # @abstract
        #
        # Rollover up to a fixed amount of the original credit grant amount.
        #
        # @example
        # ```ruby
        # case type
        # in :MAX_AMOUNT
        #   # ...
        # end
        # ```
        class Type < MetronomeSDK::Enum
          MAX_AMOUNT = :MAX_AMOUNT

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
