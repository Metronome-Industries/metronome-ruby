# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class RateAddManyParams < MetronomeSDK::BaseModel
            extend MetronomeSDK::RequestParameters::Converter
            include MetronomeSDK::RequestParameters

            sig { returns(String) }
            def rate_card_id
            end

            sig { params(_: String).returns(String) }
            def rate_card_id=(_)
            end

            sig { returns(T::Array[MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate]) }
            def rates
            end

            sig do
              params(_: T::Array[MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate])
                .returns(T::Array[MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate])
            end
            def rates=(_)
            end

            sig do
              params(
                rate_card_id: String,
                rates: T::Array[MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate],
                request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
              )
                .void
            end
            def initialize(rate_card_id:, rates:, request_options: {})
            end

            sig do
              override
                .returns(
                  {
                    rate_card_id: String,
                    rates: T::Array[MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate],
                    request_options: MetronomeSDK::RequestOptions
                  }
                )
            end
            def to_hash
            end

            class Rate < MetronomeSDK::BaseModel
              sig { returns(T::Boolean) }
              def entitled
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def entitled=(_)
              end

              sig { returns(String) }
              def product_id
              end

              sig { params(_: String).returns(String) }
              def product_id=(_)
              end

              sig { returns(Symbol) }
              def rate_type
              end

              sig { params(_: Symbol).returns(Symbol) }
              def rate_type=(_)
              end

              sig { returns(Time) }
              def starting_at
              end

              sig { params(_: Time).returns(Time) }
              def starting_at=(_)
              end

              sig { returns(T.nilable(MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate::CommitRate)) }
              def commit_rate
              end

              sig do
                params(_: MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate::CommitRate)
                  .returns(MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate::CommitRate)
              end
              def commit_rate=(_)
              end

              sig { returns(T.nilable(String)) }
              def credit_type_id
              end

              sig { params(_: String).returns(String) }
              def credit_type_id=(_)
              end

              sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
              def custom_rate
              end

              sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
              def custom_rate=(_)
              end

              sig { returns(T.nilable(Time)) }
              def ending_before
              end

              sig { params(_: Time).returns(Time) }
              def ending_before=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def is_prorated
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def is_prorated=(_)
              end

              sig { returns(T.nilable(Float)) }
              def price
              end

              sig { params(_: Float).returns(Float) }
              def price=(_)
              end

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              def pricing_group_values
              end

              sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
              def pricing_group_values=(_)
              end

              sig { returns(T.nilable(Float)) }
              def quantity
              end

              sig { params(_: Float).returns(Float) }
              def quantity=(_)
              end

              sig { returns(T.nilable(T::Array[MetronomeSDK::Models::Tier])) }
              def tiers
              end

              sig { params(_: T::Array[MetronomeSDK::Models::Tier]).returns(T::Array[MetronomeSDK::Models::Tier]) }
              def tiers=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def use_list_prices
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def use_list_prices=(_)
              end

              sig do
                params(
                  entitled: T::Boolean,
                  product_id: String,
                  rate_type: Symbol,
                  starting_at: Time,
                  commit_rate: MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate::CommitRate,
                  credit_type_id: String,
                  custom_rate: T::Hash[Symbol, T.anything],
                  ending_before: Time,
                  is_prorated: T::Boolean,
                  price: Float,
                  pricing_group_values: T::Hash[Symbol, String],
                  quantity: Float,
                  tiers: T::Array[MetronomeSDK::Models::Tier],
                  use_list_prices: T::Boolean
                )
                  .void
              end
              def initialize(
                entitled:,
                product_id:,
                rate_type:,
                starting_at:,
                commit_rate: nil,
                credit_type_id: nil,
                custom_rate: nil,
                ending_before: nil,
                is_prorated: nil,
                price: nil,
                pricing_group_values: nil,
                quantity: nil,
                tiers: nil,
                use_list_prices: nil
              )
              end

              sig do
                override
                  .returns(
                    {
                      entitled: T::Boolean,
                      product_id: String,
                      rate_type: Symbol,
                      starting_at: Time,
                      commit_rate: MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate::CommitRate,
                      credit_type_id: String,
                      custom_rate: T::Hash[Symbol, T.anything],
                      ending_before: Time,
                      is_prorated: T::Boolean,
                      price: Float,
                      pricing_group_values: T::Hash[Symbol, String],
                      quantity: Float,
                      tiers: T::Array[MetronomeSDK::Models::Tier],
                      use_list_prices: T::Boolean
                    }
                  )
              end
              def to_hash
              end

              class RateType < MetronomeSDK::Enum
                abstract!

                FLAT = :FLAT
                PERCENTAGE = :PERCENTAGE
                SUBSCRIPTION = :SUBSCRIPTION
                TIERED = :TIERED
                CUSTOM = :CUSTOM

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end

              class CommitRate < MetronomeSDK::BaseModel
                sig { returns(Symbol) }
                def rate_type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def rate_type=(_)
                end

                sig { returns(T.nilable(Float)) }
                def price
                end

                sig { params(_: Float).returns(Float) }
                def price=(_)
                end

                sig { returns(T.nilable(T::Array[MetronomeSDK::Models::Tier])) }
                def tiers
                end

                sig { params(_: T::Array[MetronomeSDK::Models::Tier]).returns(T::Array[MetronomeSDK::Models::Tier]) }
                def tiers=(_)
                end

                sig { params(rate_type: Symbol, price: Float, tiers: T::Array[MetronomeSDK::Models::Tier]).void }
                def initialize(rate_type:, price: nil, tiers: nil)
                end

                sig { override.returns({rate_type: Symbol, price: Float, tiers: T::Array[MetronomeSDK::Models::Tier]}) }
                def to_hash
                end

                class RateType < MetronomeSDK::Enum
                  abstract!

                  FLAT = :FLAT
                  PERCENTAGE = :PERCENTAGE
                  SUBSCRIPTION = :SUBSCRIPTION
                  TIERED = :TIERED
                  CUSTOM = :CUSTOM

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
  end
end
