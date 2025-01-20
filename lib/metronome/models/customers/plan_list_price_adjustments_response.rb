# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      # @example
      # ```ruby
      # plan_list_price_adjustments_response => {
      #   charge_id: String,
      #   charge_type: enum: Metronome::Models::Customers::PlanListPriceAdjustmentsResponse::ChargeType,
      #   prices: -> { Metronome::ArrayOf[Metronome::Models::Customers::PlanListPriceAdjustmentsResponse::Price] === _1 },
      #   start_period: Float,
      #   quantity: Float
      # }
      # ```
      class PlanListPriceAdjustmentsResponse < Metronome::BaseModel
        # @!attribute charge_id
        #
        #   @return [String]
        required :charge_id, String

        # @!attribute charge_type
        #
        #   @return [Symbol, Metronome::Models::Customers::PlanListPriceAdjustmentsResponse::ChargeType]
        required :charge_type,
                 enum: -> { Metronome::Models::Customers::PlanListPriceAdjustmentsResponse::ChargeType }

        # @!attribute prices
        #
        #   @return [Array<Metronome::Models::Customers::PlanListPriceAdjustmentsResponse::Price>]
        required :prices,
                 -> {
                   Metronome::ArrayOf[Metronome::Models::Customers::PlanListPriceAdjustmentsResponse::Price]
                 }

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
        #   # @param charge_type [String]
        #   # @param prices [Array<Metronome::Models::Customers::PlanListPriceAdjustmentsResponse::Price>]
        #   # @param start_period [Float]
        #   # @param quantity [Float]
        #   #
        #   def initialize(charge_id:, charge_type:, prices:, start_period:, quantity: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

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
        class ChargeType < Metronome::Enum
          USAGE = :usage
          FIXED = :fixed
          COMPOSITE = :composite
          MINIMUM = :minimum
          SEAT = :seat

          finalize!
        end

        # @example
        # ```ruby
        # price => {
        #   adjustment_type: enum: Metronome::Models::Customers::PlanListPriceAdjustmentsResponse::Price::AdjustmentType,
        #   tier: Float,
        #   value: Float
        # }
        # ```
        class Price < Metronome::BaseModel
          # @!attribute adjustment_type
          #   Determines how the value will be applied.
          #
          #   @return [Symbol, Metronome::Models::Customers::PlanListPriceAdjustmentsResponse::Price::AdjustmentType]
          required :adjustment_type,
                   enum: -> {
                     Metronome::Models::Customers::PlanListPriceAdjustmentsResponse::Price::AdjustmentType
                   }

          # @!attribute [r] tier
          #   Used in pricing tiers.  Indicates at what metric value the price applies.
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
          #   # @param adjustment_type [String] Determines how the value will be applied.
          #   #
          #   # @param tier [Float] Used in pricing tiers. Indicates at what metric value the price applies.
          #   #
          #   # @param value [Float]
          #   #
          #   def initialize(adjustment_type:, tier: nil, value: nil, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

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
          class AdjustmentType < Metronome::Enum
            FIXED = :fixed
            QUANTITY = :quantity
            PERCENTAGE = :percentage
            OVERRIDE = :override

            finalize!
          end
        end
      end
    end
  end
end
