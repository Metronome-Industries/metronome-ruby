# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class RateAddResponse < MetronomeSDK::BaseModel
            sig { returns(MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data) }
            def data
            end

            sig do
              params(_: MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data)
                .returns(MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data)
            end
            def data=(_)
            end

            sig { params(data: MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data).void }
            def initialize(data:)
            end

            sig { override.returns({data: MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data}) }
            def to_hash
            end

            class Data < MetronomeSDK::BaseModel
              sig { returns(Symbol) }
              def rate_type
              end

              sig { params(_: Symbol).returns(Symbol) }
              def rate_type=(_)
              end

              sig { returns(T.nilable(MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate)) }
              def commit_rate
              end

              sig do
                params(_: MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate)
                  .returns(MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate)
              end
              def commit_rate=(_)
              end

              sig { returns(T.nilable(MetronomeSDK::Models::CreditTypeData)) }
              def credit_type
              end

              sig { params(_: MetronomeSDK::Models::CreditTypeData).returns(MetronomeSDK::Models::CreditTypeData) }
              def credit_type=(_)
              end

              sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
              def custom_rate
              end

              sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
              def custom_rate=(_)
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
                  rate_type: Symbol,
                  commit_rate: MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate,
                  credit_type: MetronomeSDK::Models::CreditTypeData,
                  custom_rate: T::Hash[Symbol, T.anything],
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
                rate_type:,
                commit_rate: nil,
                credit_type: nil,
                custom_rate: nil,
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
                      rate_type: Symbol,
                      commit_rate: MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate,
                      credit_type: MetronomeSDK::Models::CreditTypeData,
                      custom_rate: T::Hash[Symbol, T.anything],
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
                CUSTOM = :CUSTOM
                TIERED = :TIERED

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
