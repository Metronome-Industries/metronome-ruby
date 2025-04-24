# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class PlanListPriceAdjustmentsResponse < MetronomeSDK::BaseModel
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

          sig { returns(T::Array[MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price]) }
          def prices
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price])
              .returns(T::Array[MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price])
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
              prices: T::Array[MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price],
              start_period: Float,
              quantity: Float
            )
              .void
          end
          def initialize(charge_id:, charge_type:, prices:, start_period:, quantity: nil)
          end

          sig do
            override
              .returns(
                {
                  charge_id: String,
                  charge_type: Symbol,
                  prices: T::Array[MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price],
                  start_period: Float,
                  quantity: Float
                }
              )
          end
          def to_hash
          end

          class ChargeType < MetronomeSDK::Enum
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

          class Price < MetronomeSDK::BaseModel
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

            class AdjustmentType < MetronomeSDK::Enum
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
end
