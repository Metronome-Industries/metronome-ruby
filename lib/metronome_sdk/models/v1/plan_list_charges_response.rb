# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Plans#list_charges
      class PlanListChargesResponse < MetronomeSDK::Internal::Type::BaseModel
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
        required :credit_type, -> { MetronomeSDK::CreditTypeData }

        # @!attribute custom_fields
        #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        #
        #   @return [Hash{Symbol=>String}]
        required :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute prices
        #
        #   @return [Array<MetronomeSDK::Models::V1::PlanListChargesResponse::Price>]
        required :prices,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PlanListChargesResponse::Price] }

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
        #   @return [Float, nil]
        optional :quantity, Float

        # @!attribute start_period
        #   Used in price ramps. Indicates how many billing periods pass before the charge
        #   applies.
        #
        #   @return [Float, nil]
        optional :start_period, Float

        # @!attribute tier_reset_frequency
        #   Used in pricing tiers. Indicates how often the tier resets. Default is 1 - the
        #   tier count resets every billing period.
        #
        #   @return [Float, nil]
        optional :tier_reset_frequency, Float

        # @!attribute unit_conversion
        #   Specifies how quantities for usage based charges will be converted.
        #
        #   @return [MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion, nil]
        optional :unit_conversion, -> { MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion }

        # @!method initialize(id:, charge_type:, credit_type:, custom_fields:, name:, prices:, product_id:, product_name:, quantity: nil, start_period: nil, tier_reset_frequency: nil, unit_conversion: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::PlanListChargesResponse} for more details.
        #
        #   @param id [String]
        #
        #   @param charge_type [Symbol, MetronomeSDK::Models::V1::PlanListChargesResponse::ChargeType]
        #
        #   @param credit_type [MetronomeSDK::Models::CreditTypeData]
        #
        #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        #
        #   @param name [String]
        #
        #   @param prices [Array<MetronomeSDK::Models::V1::PlanListChargesResponse::Price>]
        #
        #   @param product_id [String]
        #
        #   @param product_name [String]
        #
        #   @param quantity [Float]
        #
        #   @param start_period [Float] Used in price ramps. Indicates how many billing periods pass before the charge
        #
        #   @param tier_reset_frequency [Float] Used in pricing tiers. Indicates how often the tier resets. Default is 1 - the
        #
        #   @param unit_conversion [MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion] Specifies how quantities for usage based charges will be converted.

        # @see MetronomeSDK::Models::V1::PlanListChargesResponse#charge_type
        module ChargeType
          extend MetronomeSDK::Internal::Type::Enum

          USAGE = :usage
          FIXED = :fixed
          COMPOSITE = :composite
          MINIMUM = :minimum
          SEAT = :seat

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Price < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute tier
          #   Used in pricing tiers. Indicates at what metric value the price applies.
          #
          #   @return [Float]
          required :tier, Float

          # @!attribute value
          #
          #   @return [Float]
          required :value, Float

          # @!attribute collection_interval
          #
          #   @return [Float, nil]
          optional :collection_interval, Float

          # @!attribute collection_schedule
          #
          #   @return [String, nil]
          optional :collection_schedule, String

          # @!attribute quantity
          #
          #   @return [Float, nil]
          optional :quantity, Float

          # @!method initialize(tier:, value:, collection_interval: nil, collection_schedule: nil, quantity: nil)
          #   @param tier [Float] Used in pricing tiers. Indicates at what metric value the price applies.
          #
          #   @param value [Float]
          #
          #   @param collection_interval [Float]
          #
          #   @param collection_schedule [String]
          #
          #   @param quantity [Float]
        end

        # @see MetronomeSDK::Models::V1::PlanListChargesResponse#unit_conversion
        class UnitConversion < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute division_factor
          #   The conversion factor
          #
          #   @return [Float]
          required :division_factor, Float

          # @!attribute rounding_behavior
          #   Whether usage should be rounded down or up to the nearest whole number. If null,
          #   quantity will be rounded to 20 decimal places.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion::RoundingBehavior, nil]
          optional :rounding_behavior,
                   enum: -> { MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion::RoundingBehavior }

          # @!method initialize(division_factor:, rounding_behavior: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion} for more
          #   details.
          #
          #   Specifies how quantities for usage based charges will be converted.
          #
          #   @param division_factor [Float] The conversion factor
          #
          #   @param rounding_behavior [Symbol, MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion::RoundingBehavior] Whether usage should be rounded down or up to the nearest whole number. If null,

          # Whether usage should be rounded down or up to the nearest whole number. If null,
          # quantity will be rounded to 20 decimal places.
          #
          # @see MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion#rounding_behavior
          module RoundingBehavior
            extend MetronomeSDK::Internal::Type::Enum

            FLOOR = :floor
            CEILING = :ceiling

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
