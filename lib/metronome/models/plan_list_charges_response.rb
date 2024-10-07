# frozen_string_literal: true

module Metronome
  module Models
    class PlanListChargesResponse < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] charge_type
      #   @return [Symbol, Metronome::Models::PlanListChargesResponse::ChargeType]
      required :charge_type, enum: -> { Metronome::Models::PlanListChargesResponse::ChargeType }

      # @!attribute [rw] credit_type
      #   @return [Metronome::Models::CreditTypeData]
      required :credit_type, -> { Metronome::Models::CreditTypeData }

      # @!attribute [rw] custom_fields
      #   @return [Hash]
      required :custom_fields, Hash

      # @!attribute [rw] name_
      #   @return [String]
      required :name_, String

      # @!attribute [rw] prices
      #   @return [Array<Metronome::Models::PlanListChargesResponse::Price>]
      required :prices, Metronome::ArrayOf.new(-> { Metronome::Models::PlanListChargesResponse::Price })

      # @!attribute [rw] product_id
      #   @return [String]
      required :product_id, String

      # @!attribute [rw] product_name
      #   @return [String]
      required :product_name, String

      # @!attribute [rw] quantity
      #   @return [Float]
      optional :quantity, Float

      # @!attribute [rw] start_period
      #   Used in price ramps.  Indicates how many billing periods pass before the charge applies.
      #   @return [Float]
      optional :start_period, Float

      # @!attribute [rw] tier_reset_frequency
      #   Used in pricing tiers.  Indicates how often the tier resets. Default is 1 - the tier count resets every billing period.
      #   @return [Float]
      optional :tier_reset_frequency, Float

      # @!attribute [rw] unit_conversion
      #   Specifies how quantities for usage based charges will be converted.
      #   @return [Metronome::Models::PlanListChargesResponse::UnitConversion]
      optional :unit_conversion, -> { Metronome::Models::PlanListChargesResponse::UnitConversion }

      class ChargeType < Metronome::Enum
        USAGE = :usage
        FIXED = :fixed
        COMPOSITE = :composite
        MINIMUM = :minimum
        SEAT = :seat
      end

      class Price < BaseModel
        # @!attribute [rw] tier
        #   Used in pricing tiers.  Indicates at what metric value the price applies.
        #   @return [Float]
        required :tier, Float

        # @!attribute [rw] value
        #   @return [Float]
        required :value, Float

        # @!attribute [rw] collection_interval
        #   @return [Float]
        optional :collection_interval, Float

        # @!attribute [rw] collection_schedule
        #   @return [String]
        optional :collection_schedule, String

        # @!attribute [rw] quantity
        #   @return [Float]
        optional :quantity, Float
      end

      class UnitConversion < BaseModel
        # @!attribute [rw] division_factor
        #   The conversion factor
        #   @return [Float]
        required :division_factor, Float

        # @!attribute [rw] rounding_behavior
        #   Whether usage should be rounded down or up to the nearest whole number. If null, quantity will be rounded to 20 decimal places.
        #   @return [Symbol, Metronome::Models::PlanListChargesResponse::UnitConversion::RoundingBehavior]
        optional :rounding_behavior,
                 enum: -> { Metronome::Models::PlanListChargesResponse::UnitConversion::RoundingBehavior }

        # Whether usage should be rounded down or up to the nearest whole number. If null, quantity will be rounded to 20 decimal places.
        class RoundingBehavior < Metronome::Enum
          FLOOR = :floor
          CEILING = :ceiling
        end
      end
    end
  end
end
