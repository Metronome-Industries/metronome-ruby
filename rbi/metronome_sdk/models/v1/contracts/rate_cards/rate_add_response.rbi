# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class RateAddResponse < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::OrHash
              ).void
            end
            attr_writer :data

            sig do
              params(
                data:
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::OrHash
              ).returns(T.attached_class)
            end
            def self.new(data:)
            end

            sig do
              override.returns(
                {
                  data:
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data
                }
              )
            end
            def to_hash
            end

            class Data < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::RateType::TaggedSymbol
                )
              end
              attr_accessor :rate_type

              # A distinct rate on the rate card. You can choose to use this rate rather than
              # list rate when consuming a credit or commit.
              sig { returns(T.nilable(MetronomeSDK::CommitRate)) }
              attr_reader :commit_rate

              sig { params(commit_rate: MetronomeSDK::CommitRate::OrHash).void }
              attr_writer :commit_rate

              sig { returns(T.nilable(MetronomeSDK::CreditTypeData)) }
              attr_reader :credit_type

              sig do
                params(credit_type: MetronomeSDK::CreditTypeData::OrHash).void
              end
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
              sig { returns(T.nilable(T::Array[MetronomeSDK::Tier])) }
              attr_reader :tiers

              sig { params(tiers: T::Array[MetronomeSDK::Tier::OrHash]).void }
              attr_writer :tiers

              sig do
                params(
                  rate_type:
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::RateType::OrSymbol,
                  commit_rate: MetronomeSDK::CommitRate::OrHash,
                  credit_type: MetronomeSDK::CreditTypeData::OrHash,
                  custom_rate: T::Hash[Symbol, T.anything],
                  is_prorated: T::Boolean,
                  price: Float,
                  pricing_group_values: T::Hash[Symbol, String],
                  quantity: Float,
                  tiers: T::Array[MetronomeSDK::Tier::OrHash]
                ).returns(T.attached_class)
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
                tiers: nil
              )
              end

              sig do
                override.returns(
                  {
                    rate_type:
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::RateType::TaggedSymbol,
                    commit_rate: MetronomeSDK::CommitRate,
                    credit_type: MetronomeSDK::CreditTypeData,
                    custom_rate: T::Hash[Symbol, T.anything],
                    is_prorated: T::Boolean,
                    price: Float,
                    pricing_group_values: T::Hash[Symbol, String],
                    quantity: Float,
                    tiers: T::Array[MetronomeSDK::Tier]
                  }
                )
              end
              def to_hash
              end

              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::RateType
                    )
                  end
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
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::RateType::TaggedSymbol
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
end
