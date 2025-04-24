# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class PlanListChargesResponse < MetronomeSDK::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute charge_type
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::PlanListChargesResponse::ChargeType]
        required :charge_type, enum: -> { MetronomeSDK::Models::V1::PlanListChargesResponse::ChargeType }

        # @!attribute credit_type
        #
        #   @return [MetronomeSDK::Models::CreditTypeData]
        required :credit_type, -> { MetronomeSDK::Models::CreditTypeData }

        # @!attribute custom_fields
        #
        #   @return [Hash{Symbol=>String}]
        required :custom_fields, MetronomeSDK::HashOf[String]

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute prices
        #
        #   @return [Array<MetronomeSDK::Models::V1::PlanListChargesResponse::Price>]
        required :prices, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::PlanListChargesResponse::Price] }

        # @!attribute product_id
        #
        #   @return [String]
        required :product_id, String

        # @!attribute product_name
        #
        #   @return [String]
        required :product_name, String

        # @!attribute [r] quantity
        #
        #   @return [Float, nil]
        optional :quantity, Float

        # @!parse
        #   # @return [Float]
        #   attr_writer :quantity

        # @!attribute [r] start_period
        #   Used in price ramps. Indicates how many billing periods pass before the charge
        #     applies.
        #
        #   @return [Float, nil]
        optional :start_period, Float

        # @!parse
        #   # @return [Float]
        #   attr_writer :start_period

        # @!attribute [r] tier_reset_frequency
        #   Used in pricing tiers. Indicates how often the tier resets. Default is 1 - the
        #     tier count resets every billing period.
        #
        #   @return [Float, nil]
        optional :tier_reset_frequency, Float

        # @!parse
        #   # @return [Float]
        #   attr_writer :tier_reset_frequency

        # @!attribute [r] unit_conversion
        #   Specifies how quantities for usage based charges will be converted.
        #
        #   @return [MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion, nil]
        optional :unit_conversion, -> { MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion }

        # @!parse
        #   # @return [MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion]
        #   attr_writer :unit_conversion

        # @!parse
        #   # @param id [String]
        #   # @param charge_type [Symbol, MetronomeSDK::Models::V1::PlanListChargesResponse::ChargeType]
        #   # @param credit_type [MetronomeSDK::Models::CreditTypeData]
        #   # @param custom_fields [Hash{Symbol=>String}]
        #   # @param name [String]
        #   # @param prices [Array<MetronomeSDK::Models::V1::PlanListChargesResponse::Price>]
        #   # @param product_id [String]
        #   # @param product_name [String]
        #   # @param quantity [Float]
        #   # @param start_period [Float]
        #   # @param tier_reset_frequency [Float]
        #   # @param unit_conversion [MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion]
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
        #     unit_conversion: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case charge_type
        # in :usage
        #   # ...
        # in :fixed
        #   # ...
        # in :composite
        #   # ...
        # in :minimum
        #   # ...
        # in :seat
        #   # ...
        # end
        # ```
        class ChargeType < MetronomeSDK::Enum
          USAGE = :usage
          FIXED = :fixed
          COMPOSITE = :composite
          MINIMUM = :minimum
          SEAT = :seat

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        class Price < MetronomeSDK::BaseModel
          # @!attribute tier
          #   Used in pricing tiers. Indicates at what metric value the price applies.
          #
          #   @return [Float]
          required :tier, Float

          # @!attribute value
          #
          #   @return [Float]
          required :value, Float

          # @!attribute [r] collection_interval
          #
          #   @return [Float, nil]
          optional :collection_interval, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :collection_interval

          # @!attribute [r] collection_schedule
          #
          #   @return [String, nil]
          optional :collection_schedule, String

          # @!parse
          #   # @return [String]
          #   attr_writer :collection_schedule

          # @!attribute [r] quantity
          #
          #   @return [Float, nil]
          optional :quantity, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :quantity

          # @!parse
          #   # @param tier [Float]
          #   # @param value [Float]
          #   # @param collection_interval [Float]
          #   # @param collection_schedule [String]
          #   # @param quantity [Float]
          #   #
          #   def initialize(tier:, value:, collection_interval: nil, collection_schedule: nil, quantity: nil, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end

        class UnitConversion < MetronomeSDK::BaseModel
          # @!attribute division_factor
          #   The conversion factor
          #
          #   @return [Float]
          required :division_factor, Float

          # @!attribute [r] rounding_behavior
          #   Whether usage should be rounded down or up to the nearest whole number. If null,
          #     quantity will be rounded to 20 decimal places.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion::RoundingBehavior, nil]
          optional :rounding_behavior,
                   enum: -> { MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion::RoundingBehavior }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion::RoundingBehavior]
          #   attr_writer :rounding_behavior

          # @!parse
          #   # Specifies how quantities for usage based charges will be converted.
          #   #
          #   # @param division_factor [Float]
          #   # @param rounding_behavior [Symbol, MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion::RoundingBehavior]
          #   #
          #   def initialize(division_factor:, rounding_behavior: nil, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # Whether usage should be rounded down or up to the nearest whole number. If null,
          #   quantity will be rounded to 20 decimal places.
          #
          # @example
          # ```ruby
          # case rounding_behavior
          # in :floor
          #   # ...
          # in :ceiling
          #   # ...
          # end
          # ```
          class RoundingBehavior < MetronomeSDK::Enum
            FLOOR = :floor
            CEILING = :ceiling

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
