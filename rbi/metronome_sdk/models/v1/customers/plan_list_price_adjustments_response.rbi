# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class PlanListPriceAdjustmentsResponse < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :charge_id

          sig do
            returns(
              MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::ChargeType::TaggedSymbol
            )
          end
          attr_accessor :charge_type

          sig do
            returns(
              T::Array[
                MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price
              ]
            )
          end
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
              charge_type:
                MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::ChargeType::OrSymbol,
              prices:
                T::Array[
                  MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price::OrHash
                ],
              start_period: Float,
              quantity: Float
            ).returns(T.attached_class)
          end
          def self.new(
            charge_id:,
            charge_type:,
            prices:,
            start_period:,
            quantity: nil
          )
          end

          sig do
            override.returns(
              {
                charge_id: String,
                charge_type:
                  MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::ChargeType::TaggedSymbol,
                prices:
                  T::Array[
                    MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price
                  ],
                start_period: Float,
                quantity: Float
              }
            )
          end
          def to_hash
          end

          module ChargeType
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::ChargeType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            USAGE =
              T.let(
                :usage,
                MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::ChargeType::TaggedSymbol
              )
            FIXED =
              T.let(
                :fixed,
                MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::ChargeType::TaggedSymbol
              )
            COMPOSITE =
              T.let(
                :composite,
                MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::ChargeType::TaggedSymbol
              )
            MINIMUM =
              T.let(
                :minimum,
                MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::ChargeType::TaggedSymbol
              )
            SEAT =
              T.let(
                :seat,
                MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::ChargeType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::ChargeType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Price < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Determines how the value will be applied.
            sig do
              returns(
                MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price::AdjustmentType::TaggedSymbol
              )
            end
            attr_accessor :adjustment_type

            # Used in pricing tiers. Indicates at what metric value the price applies.
            sig { returns(T.nilable(Float)) }
            attr_reader :tier

            sig { params(tier: Float).void }
            attr_writer :tier

            sig { returns(T.nilable(Float)) }
            attr_reader :value

            sig { params(value: Float).void }
            attr_writer :value

            sig do
              params(
                adjustment_type:
                  MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price::AdjustmentType::OrSymbol,
                tier: Float,
                value: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # Determines how the value will be applied.
              adjustment_type:,
              # Used in pricing tiers. Indicates at what metric value the price applies.
              tier: nil,
              value: nil
            )
            end

            sig do
              override.returns(
                {
                  adjustment_type:
                    MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price::AdjustmentType::TaggedSymbol,
                  tier: Float,
                  value: Float
                }
              )
            end
            def to_hash
            end

            # Determines how the value will be applied.
            module AdjustmentType
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price::AdjustmentType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FIXED =
                T.let(
                  :fixed,
                  MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price::AdjustmentType::TaggedSymbol
                )
              QUANTITY =
                T.let(
                  :quantity,
                  MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price::AdjustmentType::TaggedSymbol
                )
              PERCENTAGE =
                T.let(
                  :percentage,
                  MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price::AdjustmentType::TaggedSymbol
                )
              OVERRIDE =
                T.let(
                  :override,
                  MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price::AdjustmentType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price::AdjustmentType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
