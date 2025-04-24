# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PlanListChargesResponse < MetronomeSDK::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(Symbol) }
        def charge_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def charge_type=(_)
        end

        sig { returns(MetronomeSDK::Models::CreditTypeData) }
        def credit_type
        end

        sig { params(_: MetronomeSDK::Models::CreditTypeData).returns(MetronomeSDK::Models::CreditTypeData) }
        def credit_type=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def custom_fields
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def custom_fields=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(T::Array[MetronomeSDK::Models::V1::PlanListChargesResponse::Price]) }
        def prices
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V1::PlanListChargesResponse::Price])
            .returns(T::Array[MetronomeSDK::Models::V1::PlanListChargesResponse::Price])
        end
        def prices=(_)
        end

        sig { returns(String) }
        def product_id
        end

        sig { params(_: String).returns(String) }
        def product_id=(_)
        end

        sig { returns(String) }
        def product_name
        end

        sig { params(_: String).returns(String) }
        def product_name=(_)
        end

        sig { returns(T.nilable(Float)) }
        def quantity
        end

        sig { params(_: Float).returns(Float) }
        def quantity=(_)
        end

        sig { returns(T.nilable(Float)) }
        def start_period
        end

        sig { params(_: Float).returns(Float) }
        def start_period=(_)
        end

        sig { returns(T.nilable(Float)) }
        def tier_reset_frequency
        end

        sig { params(_: Float).returns(Float) }
        def tier_reset_frequency=(_)
        end

        sig { returns(T.nilable(MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion)) }
        def unit_conversion
        end

        sig do
          params(_: MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion)
            .returns(MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion)
        end
        def unit_conversion=(_)
        end

        sig do
          params(
            id: String,
            charge_type: Symbol,
            credit_type: MetronomeSDK::Models::CreditTypeData,
            custom_fields: T::Hash[Symbol, String],
            name: String,
            prices: T::Array[MetronomeSDK::Models::V1::PlanListChargesResponse::Price],
            product_id: String,
            product_name: String,
            quantity: Float,
            start_period: Float,
            tier_reset_frequency: Float,
            unit_conversion: MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion
          )
            .void
        end
        def initialize(
          id:,
          charge_type:,
          credit_type:,
          custom_fields:,
          name:,
          prices:,
          product_id:,
          product_name:,
          quantity: nil,
          start_period: nil,
          tier_reset_frequency: nil,
          unit_conversion: nil
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                charge_type: Symbol,
                credit_type: MetronomeSDK::Models::CreditTypeData,
                custom_fields: T::Hash[Symbol, String],
                name: String,
                prices: T::Array[MetronomeSDK::Models::V1::PlanListChargesResponse::Price],
                product_id: String,
                product_name: String,
                quantity: Float,
                start_period: Float,
                tier_reset_frequency: Float,
                unit_conversion: MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion
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
          sig { returns(Float) }
          def tier
          end

          sig { params(_: Float).returns(Float) }
          def tier=(_)
          end

          sig { returns(Float) }
          def value
          end

          sig { params(_: Float).returns(Float) }
          def value=(_)
          end

          sig { returns(T.nilable(Float)) }
          def collection_interval
          end

          sig { params(_: Float).returns(Float) }
          def collection_interval=(_)
          end

          sig { returns(T.nilable(String)) }
          def collection_schedule
          end

          sig { params(_: String).returns(String) }
          def collection_schedule=(_)
          end

          sig { returns(T.nilable(Float)) }
          def quantity
          end

          sig { params(_: Float).returns(Float) }
          def quantity=(_)
          end

          sig do
            params(
              tier: Float,
              value: Float,
              collection_interval: Float,
              collection_schedule: String,
              quantity: Float
            )
              .void
          end
          def initialize(tier:, value:, collection_interval: nil, collection_schedule: nil, quantity: nil)
          end

          sig do
            override
              .returns(
                {
                  tier: Float,
                  value: Float,
                  collection_interval: Float,
                  collection_schedule: String,
                  quantity: Float
                }
              )
          end
          def to_hash
          end
        end

        class UnitConversion < MetronomeSDK::BaseModel
          sig { returns(Float) }
          def division_factor
          end

          sig { params(_: Float).returns(Float) }
          def division_factor=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def rounding_behavior
          end

          sig { params(_: Symbol).returns(Symbol) }
          def rounding_behavior=(_)
          end

          sig { params(division_factor: Float, rounding_behavior: Symbol).void }
          def initialize(division_factor:, rounding_behavior: nil)
          end

          sig { override.returns({division_factor: Float, rounding_behavior: Symbol}) }
          def to_hash
          end

          class RoundingBehavior < MetronomeSDK::Enum
            abstract!

            FLOOR = :floor
            CEILING = :ceiling

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end
    end
  end
end
