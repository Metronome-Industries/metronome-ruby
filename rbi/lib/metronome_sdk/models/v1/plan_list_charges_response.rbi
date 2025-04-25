# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PlanListChargesResponse < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(MetronomeSDK::Models::V1::PlanListChargesResponse::ChargeType::TaggedSymbol) }
        attr_accessor :charge_type

        sig { returns(MetronomeSDK::Models::CreditTypeData) }
        attr_reader :credit_type

        sig { params(credit_type: T.any(MetronomeSDK::Models::CreditTypeData, MetronomeSDK::Internal::AnyHash)).void }
        attr_writer :credit_type

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :custom_fields

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T::Array[MetronomeSDK::Models::V1::PlanListChargesResponse::Price]) }
        attr_accessor :prices

        sig { returns(String) }
        attr_accessor :product_id

        sig { returns(String) }
        attr_accessor :product_name

        sig { returns(T.nilable(Float)) }
        attr_reader :quantity

        sig { params(quantity: Float).void }
        attr_writer :quantity

        # Used in price ramps. Indicates how many billing periods pass before the charge
        # applies.
        sig { returns(T.nilable(Float)) }
        attr_reader :start_period

        sig { params(start_period: Float).void }
        attr_writer :start_period

        # Used in pricing tiers. Indicates how often the tier resets. Default is 1 - the
        # tier count resets every billing period.
        sig { returns(T.nilable(Float)) }
        attr_reader :tier_reset_frequency

        sig { params(tier_reset_frequency: Float).void }
        attr_writer :tier_reset_frequency

        # Specifies how quantities for usage based charges will be converted.
        sig { returns(T.nilable(MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion)) }
        attr_reader :unit_conversion

        sig do
          params(
            unit_conversion: T.any(MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion, MetronomeSDK::Internal::AnyHash)
          )
            .void
        end
        attr_writer :unit_conversion

        sig do
          params(
            id: String,
            charge_type: MetronomeSDK::Models::V1::PlanListChargesResponse::ChargeType::OrSymbol,
            credit_type: T.any(MetronomeSDK::Models::CreditTypeData, MetronomeSDK::Internal::AnyHash),
            custom_fields: T::Hash[Symbol, String],
            name: String,
            prices: T::Array[T.any(MetronomeSDK::Models::V1::PlanListChargesResponse::Price, MetronomeSDK::Internal::AnyHash)],
            product_id: String,
            product_name: String,
            quantity: Float,
            start_period: Float,
            tier_reset_frequency: Float,
            unit_conversion: T.any(MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion, MetronomeSDK::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          id:,
          charge_type:,
          credit_type:,
          custom_fields:,
          name:,
          prices:,
          product_id:,
          product_name:,
          quantity: nil,
          # Used in price ramps. Indicates how many billing periods pass before the charge
          # applies.
          start_period: nil,
          # Used in pricing tiers. Indicates how often the tier resets. Default is 1 - the
          # tier count resets every billing period.
          tier_reset_frequency: nil,
          # Specifies how quantities for usage based charges will be converted.
          unit_conversion: nil
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                charge_type: MetronomeSDK::Models::V1::PlanListChargesResponse::ChargeType::TaggedSymbol,
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
        def to_hash; end

        module ChargeType
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, MetronomeSDK::Models::V1::PlanListChargesResponse::ChargeType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE = T.let(:usage, MetronomeSDK::Models::V1::PlanListChargesResponse::ChargeType::TaggedSymbol)
          FIXED = T.let(:fixed, MetronomeSDK::Models::V1::PlanListChargesResponse::ChargeType::TaggedSymbol)
          COMPOSITE =
            T.let(:composite, MetronomeSDK::Models::V1::PlanListChargesResponse::ChargeType::TaggedSymbol)
          MINIMUM = T.let(:minimum, MetronomeSDK::Models::V1::PlanListChargesResponse::ChargeType::TaggedSymbol)
          SEAT = T.let(:seat, MetronomeSDK::Models::V1::PlanListChargesResponse::ChargeType::TaggedSymbol)

          sig { override.returns(T::Array[MetronomeSDK::Models::V1::PlanListChargesResponse::ChargeType::TaggedSymbol]) }
          def self.values; end
        end

        class Price < MetronomeSDK::Internal::Type::BaseModel
          # Used in pricing tiers. Indicates at what metric value the price applies.
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
            )
              .returns(T.attached_class)
          end
          def self.new(
            # Used in pricing tiers. Indicates at what metric value the price applies.
            tier:,
            value:,
            collection_interval: nil,
            collection_schedule: nil,
            quantity: nil
          ); end
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
          def to_hash; end
        end

        class UnitConversion < MetronomeSDK::Internal::Type::BaseModel
          # The conversion factor
          sig { returns(Float) }
          attr_accessor :division_factor

          # Whether usage should be rounded down or up to the nearest whole number. If null,
          # quantity will be rounded to 20 decimal places.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion::RoundingBehavior::TaggedSymbol
              )
            )
          end
          attr_reader :rounding_behavior

          sig do
            params(
              rounding_behavior: MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion::RoundingBehavior::OrSymbol
            )
              .void
          end
          attr_writer :rounding_behavior

          # Specifies how quantities for usage based charges will be converted.
          sig do
            params(
              division_factor: Float,
              rounding_behavior: MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion::RoundingBehavior::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            # The conversion factor
            division_factor:,
            # Whether usage should be rounded down or up to the nearest whole number. If null,
            # quantity will be rounded to 20 decimal places.
            rounding_behavior: nil
          ); end
          sig do
            override
              .returns(
                {
                  division_factor: Float,
                  rounding_behavior: MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion::RoundingBehavior::TaggedSymbol
                }
              )
          end
          def to_hash; end

          # Whether usage should be rounded down or up to the nearest whole number. If null,
          # quantity will be rounded to 20 decimal places.
          module RoundingBehavior
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion::RoundingBehavior) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FLOOR =
              T.let(
                :floor,
                MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion::RoundingBehavior::TaggedSymbol
              )
            CEILING =
              T.let(
                :ceiling,
                MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion::RoundingBehavior::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion::RoundingBehavior::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end
      end
    end
  end
end
