# typed: strong

module Metronome
  module Models
    module Customers
      class PlanListPriceAdjustmentsResponse < Metronome::BaseModel
        sig { returns(String) }
        def charge_id
        end

        sig { params(_: String).returns(String) }
        def charge_id=(_)
        end

        sig { returns(Symbol) }
        def charge_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def charge_type=(_)
        end

        sig { returns(T::Array[Metronome::Models::Customers::PlanListPriceAdjustmentsResponse::Price]) }
        def prices
        end

        sig do
          params(_: T::Array[Metronome::Models::Customers::PlanListPriceAdjustmentsResponse::Price]).returns(T::Array[Metronome::Models::Customers::PlanListPriceAdjustmentsResponse::Price])
        end
        def prices=(_)
        end

        sig { returns(Float) }
        def start_period
        end

        sig { params(_: Float).returns(Float) }
        def start_period=(_)
        end

        sig { returns(T.nilable(Float)) }
        def quantity
        end

        sig { params(_: Float).returns(Float) }
        def quantity=(_)
        end

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
          def adjustment_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def adjustment_type=(_)
          end

          sig { returns(T.nilable(Float)) }
          def tier
          end

          sig { params(_: Float).returns(Float) }
          def tier=(_)
          end

          sig { returns(T.nilable(Float)) }
          def value
          end

          sig { params(_: Float).returns(Float) }
          def value=(_)
          end

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
