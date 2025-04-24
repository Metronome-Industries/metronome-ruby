# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        class PlanListPriceAdjustmentsResponse < MetronomeSDK::BaseModel
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
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price] }

          # @!attribute start_period
          #
          #   @return [Float]
          required :start_period, Float

          # @!attribute [r] quantity
          #
          #   @return [Float, nil]
          optional :quantity, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :quantity

          # @!parse
          #   # @param charge_id [String]
          #   # @param charge_type [Symbol, MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::ChargeType]
          #   # @param prices [Array<MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price>]
          #   # @param start_period [Float]
          #   # @param quantity [Float]
          #   #
          #   def initialize(charge_id:, charge_type:, prices:, start_period:, quantity: nil, **) = super

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
            # @!attribute adjustment_type
            #   Determines how the value will be applied.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price::AdjustmentType]
            required :adjustment_type,
                     enum: -> { MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price::AdjustmentType }

            # @!attribute [r] tier
            #   Used in pricing tiers. Indicates at what metric value the price applies.
            #
            #   @return [Float, nil]
            optional :tier, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :tier

            # @!attribute [r] value
            #
            #   @return [Float, nil]
            optional :value, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :value

            # @!parse
            #   # @param adjustment_type [Symbol, MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price::AdjustmentType]
            #   # @param tier [Float]
            #   # @param value [Float]
            #   #
            #   def initialize(adjustment_type:, tier: nil, value: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            # @abstract
            #
            # Determines how the value will be applied.
            #
            # @example
            # ```ruby
            # case adjustment_type
            # in :fixed
            #   # ...
            # in :quantity
            #   # ...
            # in :percentage
            #   # ...
            # in :override
            #   # ...
            # end
            # ```
            class AdjustmentType < MetronomeSDK::Enum
              FIXED = :fixed
              QUANTITY = :quantity
              PERCENTAGE = :percentage
              OVERRIDE = :override

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
end
