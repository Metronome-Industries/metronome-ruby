# frozen_string_literal: true

module Metronome
  module Models
    class PlanListPriceAdjustmentsResponse < BaseModel
      # @!attribute [rw] charge_id
      #   @return [String]
      required :charge_id, String

      # @!attribute [rw] charge_type
      #   @return [Symbol]
      required :charge_type, Metronome::Enum.new(:usage, :fixed, :composite, :minimum, :seat)

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

      class Price < BaseModel
        # @!attribute [rw] adjustment_type
        #   Determines how the value will be applied.
        #   @return [Symbol]
        required :adjustment_type, Metronome::Enum.new(:fixed, :quantity, :percentage, :override)

        # @!attribute [rw] tier
        #   Used in pricing tiers.  Indicates at what metric value the price applies.
        #   @return [Float]
        optional :tier, Float

        # @!attribute [rw] value
        #   @return [Float]
        optional :value, Float
      end
    end
  end
end
