# typed: strong

module Metronome
  module Models
    module Customers
      class PlanListPriceAdjustmentsResponse < Metronome::BaseModel
        sig { returns(String) }
        attr_accessor :charge_id

        sig { returns(Symbol) }
        attr_accessor :charge_type

        sig { returns(T::Array[Metronome::Models::Customers::PlanListPriceAdjustmentsResponse::Price]) }
        attr_accessor :prices

        sig { returns(Float) }
        attr_accessor :start_period

        sig { returns(T.nilable(Float)) }
        attr_reader :quantity

        sig { params(quantity: Float).void }
        attr_writer :quantity

        sig do
          params(
            charge_id: String,
            charge_type: Symbol,
            prices: T::Array[Metronome::Models::Customers::PlanListPriceAdjustmentsResponse::Price],
            start_period: Float,
            quantity: Float
          ).void
        end
        def initialize(charge_id:, charge_type:, prices:, start_period:, quantity: nil)
        end

        sig do
          override.returns(
            {
              charge_id: String,
              charge_type: Symbol,
              prices: T::Array[Metronome::Models::Customers::PlanListPriceAdjustmentsResponse::Price],
              start_period: Float,
              quantity: Float
            }
          )
        end
        def to_hash
        end

        class ChargeType < Metronome::Enum
          abstract!

          USAGE = :usage
          FIXED = :fixed
          COMPOSITE = :composite
          MINIMUM = :minimum
          SEAT = :seat

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Price < Metronome::BaseModel
          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          sig { returns(T.nilable(Float)) }
          attr_reader :tier

          sig { params(tier: Float).void }
          attr_writer :tier

          sig { returns(T.nilable(Float)) }
          attr_reader :value

          sig { params(value: Float).void }
          attr_writer :value

          sig { params(adjustment_type: Symbol, tier: Float, value: Float).void }
          def initialize(adjustment_type:, tier: nil, value: nil)
          end

          sig { override.returns({adjustment_type: Symbol, tier: Float, value: Float}) }
          def to_hash
          end

          class AdjustmentType < Metronome::Enum
            abstract!

            FIXED = :fixed
            QUANTITY = :quantity
            PERCENTAGE = :percentage
            OVERRIDE = :override

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end
    end
  end
end
