# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Plans#list_price_adjustments
        class PlanListPriceAdjustmentsResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute charge_id
          #
          #   @return [String]
          required :charge_id, String

          # @!attribute charge_type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::ChargeType]
          required :charge_type,
                   enum: -> { MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::ChargeType }

          # @!attribute prices
          #
          #   @return [Array<MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price>]
          required :prices,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price] }

          # @!attribute start_period
          #
          #   @return [Float]
          required :start_period, Float

          # @!attribute quantity
          #
          #   @return [Float, nil]
          optional :quantity, Float

          # @!method initialize(charge_id:, charge_type:, prices:, start_period:, quantity: nil)
          #   @param charge_id [String]
          #   @param charge_type [Symbol, MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::ChargeType]
          #   @param prices [Array<MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price>]
          #   @param start_period [Float]
          #   @param quantity [Float]

          # @see MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse#charge_type
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
            # @!attribute adjustment_type
            #   Determines how the value will be applied.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price::AdjustmentType]
            required :adjustment_type,
                     enum: -> { MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price::AdjustmentType }

            # @!attribute quantity
            #
            #   @return [Float, nil]
            optional :quantity, Float

            # @!attribute tier
            #   Used in pricing tiers. Indicates at what metric value the price applies.
            #
            #   @return [Float, nil]
            optional :tier, Float

            # @!attribute value
            #
            #   @return [Float, nil]
            optional :value, Float

            # @!method initialize(adjustment_type:, quantity: nil, tier: nil, value: nil)
            #   @param adjustment_type [Symbol, MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price::AdjustmentType] Determines how the value will be applied.
            #
            #   @param quantity [Float]
            #
            #   @param tier [Float] Used in pricing tiers. Indicates at what metric value the price applies.
            #
            #   @param value [Float]

            # Determines how the value will be applied.
            #
            # @see MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price#adjustment_type
            module AdjustmentType
              extend MetronomeSDK::Internal::Type::Enum

              FIXED = :fixed
              QUANTITY = :quantity
              PERCENTAGE = :percentage
              OVERRIDE = :override

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
