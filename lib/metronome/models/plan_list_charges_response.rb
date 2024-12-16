# frozen_string_literal: true

module Metronome
  module Models
    class PlanListChargesResponse < Metronome::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute charge_type
      #
      #   @return [Symbol, Metronome::Models::PlanListChargesResponse::ChargeType]
      required :charge_type, enum: -> { Metronome::Models::PlanListChargesResponse::ChargeType }

      # @!attribute credit_type
      #
      #   @return [Metronome::Models::CreditTypeData]
      required :credit_type, -> { Metronome::Models::CreditTypeData }

      # @!attribute custom_fields
      #
      #   @return [Hash]
      required :custom_fields, Hash

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute prices
      #
      #   @return [Array<Metronome::Models::PlanListChargesResponse::Price>]
      required :prices, Metronome::ArrayOf.new(-> { Metronome::Models::PlanListChargesResponse::Price })

      # @!attribute product_id
      #
      #   @return [String]
      required :product_id, String

      # @!attribute product_name
      #
      #   @return [String]
      required :product_name, String

      # @!attribute quantity
      #
      #   @return [Float]
      optional :quantity, Float

      # @!attribute start_period
      #   Used in price ramps.  Indicates how many billing periods pass before the charge applies.
      #
      #   @return [Float]
      optional :start_period, Float

      # @!attribute tier_reset_frequency
      #   Used in pricing tiers.  Indicates how often the tier resets. Default is 1 - the tier count resets every billing period.
      #
      #   @return [Float]
      optional :tier_reset_frequency, Float

      # @!attribute unit_conversion
      #   Specifies how quantities for usage based charges will be converted.
      #
      #   @return [Metronome::Models::PlanListChargesResponse::UnitConversion]
      optional :unit_conversion, -> { Metronome::Models::PlanListChargesResponse::UnitConversion }

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param charge_type [String]
      #   #
      #   # @param credit_type [Metronome::Models::CreditTypeData]
      #   #
      #   # @param custom_fields [Hash]
      #   #
      #   # @param name [String]
      #   #
      #   # @param prices [Array<Metronome::Models::PlanListChargesResponse::Price>]
      #   #
      #   # @param product_id [String]
      #   #
      #   # @param product_name [String]
      #   #
      #   # @param quantity [Float, nil]
      #   #
      #   # @param start_period [Float, nil] Used in price ramps. Indicates how many billing periods pass before the charge
      #   #   applies.
      #   #
      #   # @param tier_reset_frequency [Float, nil] Used in pricing tiers. Indicates how often the tier resets. Default is 1 - the
      #   #   tier count resets every billing period.
      #   #
      #   # @param unit_conversion [Metronome::Models::PlanListChargesResponse::UnitConversion, nil] Specifies how quantities for usage based charges will be converted.
      #   #
      #   def initialize(
      #     id:,
      #     charge_type:,
      #     credit_type:,
      #     custom_fields:,
      #     name:,
      #     prices:,
      #     product_id:,
      #     product_name:,
      #     quantity: nil,
      #     start_period: nil,
      #     tier_reset_frequency: nil,
      #     unit_conversion: nil
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void

      class ChargeType < Metronome::Enum
        USAGE = :usage
        FIXED = :fixed
        COMPOSITE = :composite
        MINIMUM = :minimum
        SEAT = :seat
      end

      class Price < Metronome::BaseModel
        # @!attribute tier
        #   Used in pricing tiers.  Indicates at what metric value the price applies.
        #
        #   @return [Float]
        required :tier, Float

        # @!attribute value
        #
        #   @return [Float]
        required :value, Float

        # @!attribute collection_interval
        #
        #   @return [Float]
        optional :collection_interval, Float

        # @!attribute collection_schedule
        #
        #   @return [String]
        optional :collection_schedule, String

        # @!attribute quantity
        #
        #   @return [Float]
        optional :quantity, Float

        # @!parse
        #   # @param tier [Float] Used in pricing tiers. Indicates at what metric value the price applies.
        #   #
        #   # @param value [Float]
        #   #
        #   # @param collection_interval [Float, nil]
        #   #
        #   # @param collection_schedule [String, nil]
        #   #
        #   # @param quantity [Float, nil]
        #   #
        #   def initialize(tier:, value:, collection_interval: nil, collection_schedule: nil, quantity: nil) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

      class UnitConversion < Metronome::BaseModel
        # @!attribute division_factor
        #   The conversion factor
        #
        #   @return [Float]
        required :division_factor, Float

        # @!attribute rounding_behavior
        #   Whether usage should be rounded down or up to the nearest whole number. If null, quantity will be rounded to 20 decimal places.
        #
        #   @return [Symbol, Metronome::Models::PlanListChargesResponse::UnitConversion::RoundingBehavior]
        optional :rounding_behavior,
                 enum: -> { Metronome::Models::PlanListChargesResponse::UnitConversion::RoundingBehavior }

        # @!parse
        #   # Specifies how quantities for usage based charges will be converted.
        #   #
        #   # @param division_factor [Float] The conversion factor
        #   #
        #   # @param rounding_behavior [String, nil] Whether usage should be rounded down or up to the nearest whole number. If null,
        #   #   quantity will be rounded to 20 decimal places.
        #   #
        #   def initialize(division_factor:, rounding_behavior: nil) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # Whether usage should be rounded down or up to the nearest whole number. If null, quantity will be rounded to 20 decimal places.
        class RoundingBehavior < Metronome::Enum
          FLOOR = :floor
          CEILING = :ceiling
        end
      end
    end
  end
end
