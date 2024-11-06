# frozen_string_literal: true

module Metronome
  module Models
    class PlanListPriceAdjustmentsResponse < Metronome::BaseModel
      # @!attribute [rw] charge_id
      #   @return [String]
      required :charge_id, String

      # @!attribute [rw] charge_type
      #   @return [Symbol, Metronome::Models::PlanListPriceAdjustmentsResponse::ChargeType]
      required :charge_type, enum: -> { Metronome::Models::PlanListPriceAdjustmentsResponse::ChargeType }

      # @!attribute [rw] prices
      #   @return [Array<Metronome::Models::PlanListPriceAdjustmentsResponse::Price>]
      required :prices,
               Metronome::ArrayOf.new(-> { Metronome::Models::PlanListPriceAdjustmentsResponse::Price })

      # @!attribute [rw] start_period
      #   @return [Float]
      required :start_period, Float

      # @!attribute [rw] quantity
      #   @return [Float]
      optional :quantity, Float

      class ChargeType < Metronome::Enum
        USAGE = :usage
        FIXED = :fixed
        COMPOSITE = :composite
        MINIMUM = :minimum
        SEAT = :seat
      end

      class Price < Metronome::BaseModel
        # @!attribute [rw] adjustment_type
        #   Determines how the value will be applied.
        #   @return [Symbol, Metronome::Models::PlanListPriceAdjustmentsResponse::Price::AdjustmentType]
        required :adjustment_type,
                 enum: -> { Metronome::Models::PlanListPriceAdjustmentsResponse::Price::AdjustmentType }

        # @!attribute [rw] tier
        #   Used in pricing tiers.  Indicates at what metric value the price applies.
        #   @return [Float]
        optional :tier, Float

        # @!attribute [rw] value
        #   @return [Float]
        optional :value, Float

        # Determines how the value will be applied.
        class AdjustmentType < Metronome::Enum
          FIXED = :fixed
          QUANTITY = :quantity
          PERCENTAGE = :percentage
          OVERRIDE = :override
        end

        # @!parse
        #   # Create a new instance of Price from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :adjustment_type Determines how the value will be applied.
        #   #   @option data [Float, nil] :tier Used in pricing tiers. Indicates at what metric value the price applies.
        #   #   @option data [Float, nil] :value
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of PlanListPriceAdjustmentsResponse from a Hash of raw
      #   #   data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :charge_id
      #   #   @option data [String] :charge_type
      #   #   @option data [Array<Object>] :prices
      #   #   @option data [Float] :start_period
      #   #   @option data [Float, nil] :quantity
      #   def initialize(data = {}) = super
    end
  end
end
