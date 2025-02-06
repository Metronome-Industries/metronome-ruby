# typed: strong

module Metronome
  module Models
    class PlanListChargesResponse < Metronome::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Symbol) }
      attr_accessor :charge_type

      sig { returns(Metronome::Models::CreditTypeData) }
      attr_accessor :credit_type

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :custom_fields

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T::Array[Metronome::Models::PlanListChargesResponse::Price]) }
      attr_accessor :prices

      sig { returns(String) }
      attr_accessor :product_id

      sig { returns(String) }
      attr_accessor :product_name

      sig { returns(T.nilable(Float)) }
      attr_reader :quantity

      sig { params(quantity: Float).void }
      attr_writer :quantity

      sig { returns(T.nilable(Float)) }
      attr_reader :start_period

      sig { params(start_period: Float).void }
      attr_writer :start_period

      sig { returns(T.nilable(Float)) }
      attr_reader :tier_reset_frequency

      sig { params(tier_reset_frequency: Float).void }
      attr_writer :tier_reset_frequency

      sig { returns(T.nilable(Metronome::Models::PlanListChargesResponse::UnitConversion)) }
      attr_reader :unit_conversion

      sig { params(unit_conversion: Metronome::Models::PlanListChargesResponse::UnitConversion).void }
      attr_writer :unit_conversion

      sig do
        params(
          id: String,
          charge_type: Symbol,
          credit_type: Metronome::Models::CreditTypeData,
          custom_fields: T::Hash[Symbol, String],
          name: String,
          prices: T::Array[Metronome::Models::PlanListChargesResponse::Price],
          product_id: String,
          product_name: String,
          quantity: Float,
          start_period: Float,
          tier_reset_frequency: Float,
          unit_conversion: Metronome::Models::PlanListChargesResponse::UnitConversion
        ).void
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
        override.returns(
          {
            id: String,
            charge_type: Symbol,
            credit_type: Metronome::Models::CreditTypeData,
            custom_fields: T::Hash[Symbol, String],
            name: String,
            prices: T::Array[Metronome::Models::PlanListChargesResponse::Price],
            product_id: String,
            product_name: String,
            quantity: Float,
            start_period: Float,
            tier_reset_frequency: Float,
            unit_conversion: Metronome::Models::PlanListChargesResponse::UnitConversion
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
        sig { returns(Float) }
        attr_accessor :tier

        sig { returns(Float) }
        attr_accessor :value

        sig { returns(T.nilable(Float)) }
        attr_reader :collection_interval

        sig { params(collection_interval: Float).void }
        attr_writer :collection_interval

        sig { returns(T.nilable(String)) }
        attr_reader :collection_schedule

        sig { params(collection_schedule: String).void }
        attr_writer :collection_schedule

        sig { returns(T.nilable(Float)) }
        attr_reader :quantity

        sig { params(quantity: Float).void }
        attr_writer :quantity

        sig do
          params(
            tier: Float,
            value: Float,
            collection_interval: Float,
            collection_schedule: String,
            quantity: Float
          ).void
        end
        def initialize(tier:, value:, collection_interval: nil, collection_schedule: nil, quantity: nil)
        end

        sig do
          override.returns(
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

      class UnitConversion < Metronome::BaseModel
        sig { returns(Float) }
        attr_accessor :division_factor

        sig { returns(T.nilable(Symbol)) }
        attr_reader :rounding_behavior

        sig { params(rounding_behavior: Symbol).void }
        attr_writer :rounding_behavior

        sig { params(division_factor: Float, rounding_behavior: Symbol).void }
        def initialize(division_factor:, rounding_behavior: nil)
        end

        sig { override.returns({division_factor: Float, rounding_behavior: Symbol}) }
        def to_hash
        end

        class RoundingBehavior < Metronome::Enum
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
