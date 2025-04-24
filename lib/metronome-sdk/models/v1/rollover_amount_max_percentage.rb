# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class RolloverAmountMaxPercentage < MetronomeSDK::BaseModel
        # @!attribute type
        #   Rollover up to a percentage of the original credit grant amount.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::RolloverAmountMaxPercentage::Type]
        required :type, enum: -> { MetronomeSDK::Models::V1::RolloverAmountMaxPercentage::Type }

        # @!attribute value
        #   The maximum percentage (0-1) of the original credit grant to rollover.
        #
        #   @return [Float]
        required :value, Float

        # @!parse
        #   # @param type [Symbol, MetronomeSDK::Models::V1::RolloverAmountMaxPercentage::Type]
        #   # @param value [Float]
        #   #
        #   def initialize(type:, value:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        # @abstract
        #
        # Rollover up to a percentage of the original credit grant amount.
        #
        # @example
        # ```ruby
        # case type
        # in :MAX_PERCENTAGE
        #   # ...
        # end
        # ```
        class Type < MetronomeSDK::Enum
          MAX_PERCENTAGE = :MAX_PERCENTAGE

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
