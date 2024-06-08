# frozen_string_literal: true

module Metronome
  module Models
    class PlanListChargesResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::PlanListChargesResponse::Data>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::PlanListChargesResponse::Data })

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String

      class Data < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] charge_type
        #   @return [Symbol]
        required :charge_type, Metronome::Enum.new(:usage, :fixed, :composite, :minimum, :seat)

        # @!attribute [rw] credit_type
        #   @return [Metronome::Models::CreditType]
        required :credit_type, -> { Metronome::Models::CreditType }

        # @!attribute [rw] custom_fields
        #   @return [Hash]
        required :custom_fields, Hash

        # @!attribute [rw] name_
        #   @return [String]
        required :name_, String

        # @!attribute [rw] prices
        #   @return [Array<Metronome::Models::PlanListChargesResponse::Data::Price>]
        required :prices, Metronome::ArrayOf.new(-> { Metronome::Models::PlanListChargesResponse::Data::Price })

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

        # @!attribute [rw] unit_conversion
        #   Specifies how quantities for usage based charges will be converted.
        #   @return [Metronome::Models::PlanListChargesResponse::Data::UnitConversion]
        optional :unit_conversion, -> { Metronome::Models::PlanListChargesResponse::Data::UnitConversion }

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
          #   @return [Symbol]
          optional :rounding_behavior, Metronome::Enum.new(:floor, :ceiling)
        end
      end
    end
  end
end
