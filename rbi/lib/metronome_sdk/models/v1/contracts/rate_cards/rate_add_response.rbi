# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class RateAddResponse < MetronomeSDK::Internal::Type::BaseModel
            sig { returns(MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data) }
            attr_reader :data

            sig do
              params(
                data: T.any(
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data,
                  MetronomeSDK::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :data

            sig do
              params(
                data: T.any(
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data,
                  MetronomeSDK::Internal::AnyHash
                )
              )
                .returns(T.attached_class)
            end
            def self.new(data:); end

            sig { override.returns({data: MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data}) }
            def to_hash; end

            class Data < MetronomeSDK::Internal::Type::BaseModel
              sig { returns(MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::RateType::TaggedSymbol) }
              attr_accessor :rate_type

              # A distinct rate on the rate card. You can choose to use this rate rather than
              # list rate when consuming a credit or commit.
              sig { returns(T.nilable(MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate)) }
              attr_reader :commit_rate

              sig do
                params(
                  commit_rate: T.any(
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate,
                    MetronomeSDK::Internal::AnyHash
                  )
                )
                  .void
              end
              attr_writer :commit_rate

              sig { returns(T.nilable(MetronomeSDK::Models::CreditTypeData)) }
              attr_reader :credit_type

              sig { params(credit_type: T.any(MetronomeSDK::Models::CreditTypeData, MetronomeSDK::Internal::AnyHash)).void }
              attr_writer :credit_type

              # Only set for CUSTOM rate_type. This field is interpreted by custom rate
              # processors.
              sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
              attr_reader :custom_rate

              sig { params(custom_rate: T::Hash[Symbol, T.anything]).void }
              attr_writer :custom_rate

              # Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              # set to true.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_prorated

              sig { params(is_prorated: T::Boolean).void }
              attr_writer :is_prorated

              # Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
              # this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
              sig { returns(T.nilable(Float)) }
              attr_reader :price

              sig { params(price: Float).void }
              attr_writer :price

              # if pricing groups are used, this will contain the values used to calculate the
              # price
              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :pricing_group_values

              sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
              attr_writer :pricing_group_values

              # Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              sig { returns(T.nilable(Float)) }
              attr_reader :quantity

              sig { params(quantity: Float).void }
              attr_writer :quantity

              # Only set for TIERED rate_type.
              sig { returns(T.nilable(T::Array[MetronomeSDK::Models::Tier])) }
              attr_reader :tiers

              sig { params(tiers: T::Array[T.any(MetronomeSDK::Models::Tier, MetronomeSDK::Internal::AnyHash)]).void }
              attr_writer :tiers

              # Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed
              # using list prices rather than the standard rates for this product on the
              # contract.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :use_list_prices

              sig { params(use_list_prices: T::Boolean).void }
              attr_writer :use_list_prices

              sig do
                params(
                  rate_type: MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::RateType::OrSymbol,
                  commit_rate: T.any(
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate,
                    MetronomeSDK::Internal::AnyHash
                  ),
                  credit_type: T.any(MetronomeSDK::Models::CreditTypeData, MetronomeSDK::Internal::AnyHash),
                  custom_rate: T::Hash[Symbol, T.anything],
                  is_prorated: T::Boolean,
                  price: Float,
                  pricing_group_values: T::Hash[Symbol, String],
                  quantity: Float,
                  tiers: T::Array[T.any(MetronomeSDK::Models::Tier, MetronomeSDK::Internal::AnyHash)],
                  use_list_prices: T::Boolean
                )
                  .returns(T.attached_class)
              end
              def self.new(
                rate_type:,
                # A distinct rate on the rate card. You can choose to use this rate rather than
                # list rate when consuming a credit or commit.
                commit_rate: nil,
                credit_type: nil,
                # Only set for CUSTOM rate_type. This field is interpreted by custom rate
                # processors.
                custom_rate: nil,
                # Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
                # set to true.
                is_prorated: nil,
                # Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
                # this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
                price: nil,
                # if pricing groups are used, this will contain the values used to calculate the
                # price
                pricing_group_values: nil,
                # Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
                quantity: nil,
                # Only set for TIERED rate_type.
                tiers: nil,
                # Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed
                # using list prices rather than the standard rates for this product on the
                # contract.
                use_list_prices: nil
              ); end
              sig do
                override
                  .returns(
                    {
                      rate_type: MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::RateType::TaggedSymbol,
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
              def to_hash; end

              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias { T.all(Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::RateType) }
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                FLAT =
                  T.let(
                    :FLAT,
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::RateType::TaggedSymbol
                  )
                PERCENTAGE =
                  T.let(
                    :PERCENTAGE,
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::RateType::TaggedSymbol
                  )
                SUBSCRIPTION =
                  T.let(
                    :SUBSCRIPTION,
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::RateType::TaggedSymbol
                  )
                CUSTOM =
                  T.let(
                    :CUSTOM,
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::RateType::TaggedSymbol
                  )
                TIERED =
                  T.let(
                    :TIERED,
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::RateType::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::RateType::TaggedSymbol]
                    )
                end
                def self.values; end
              end

              class CommitRate < MetronomeSDK::Internal::Type::BaseModel
                sig do
                  returns(
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate::RateType::TaggedSymbol
                  )
                end
                attr_accessor :rate_type

                # Commit rate price. For FLAT rate_type, this must be >=0.
                sig { returns(T.nilable(Float)) }
                attr_reader :price

                sig { params(price: Float).void }
                attr_writer :price

                # Only set for TIERED rate_type.
                sig { returns(T.nilable(T::Array[MetronomeSDK::Models::Tier])) }
                attr_reader :tiers

                sig { params(tiers: T::Array[T.any(MetronomeSDK::Models::Tier, MetronomeSDK::Internal::AnyHash)]).void }
                attr_writer :tiers

                # A distinct rate on the rate card. You can choose to use this rate rather than
                # list rate when consuming a credit or commit.
                sig do
                  params(
                    rate_type: MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate::RateType::OrSymbol,
                    price: Float,
                    tiers: T::Array[T.any(MetronomeSDK::Models::Tier, MetronomeSDK::Internal::AnyHash)]
                  )
                    .returns(T.attached_class)
                end
                def self.new(
                  rate_type:,
                  # Commit rate price. For FLAT rate_type, this must be >=0.
                  price: nil,
                  # Only set for TIERED rate_type.
                  tiers: nil
                ); end
                sig do
                  override
                    .returns(
                      {
                        rate_type: MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate::RateType::TaggedSymbol,
                        price: Float,
                        tiers: T::Array[MetronomeSDK::Models::Tier]
                      }
                    )
                end
                def to_hash; end

                module RateType
                  extend MetronomeSDK::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias { T.all(Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate::RateType) }
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  FLAT =
                    T.let(
                      :FLAT,
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate::RateType::TaggedSymbol
                    )
                  PERCENTAGE =
                    T.let(
                      :PERCENTAGE,
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate::RateType::TaggedSymbol
                    )
                  SUBSCRIPTION =
                    T.let(
                      :SUBSCRIPTION,
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate::RateType::TaggedSymbol
                    )
                  TIERED =
                    T.let(
                      :TIERED,
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate::RateType::TaggedSymbol
                    )
                  CUSTOM =
                    T.let(
                      :CUSTOM,
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate::RateType::TaggedSymbol
                    )

                  sig do
                    override
                      .returns(
                        T::Array[MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate::RateType::TaggedSymbol]
                      )
                  end
                  def self.values; end
                end
              end
            end
          end
        end
      end
    end
  end
end
