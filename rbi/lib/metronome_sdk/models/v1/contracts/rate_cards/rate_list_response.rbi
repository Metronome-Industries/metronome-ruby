# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class RateListResponse < MetronomeSDK::Internal::Type::BaseModel
            sig { returns(T::Boolean) }
            attr_accessor :entitled

            sig { returns(T::Hash[Symbol, String]) }
            attr_accessor :product_custom_fields

            sig { returns(String) }
            attr_accessor :product_id

            sig { returns(String) }
            attr_accessor :product_name

            sig { returns(T::Array[String]) }
            attr_accessor :product_tags

            sig { returns(MetronomeSDK::Models::Rate) }
            attr_reader :rate

            sig { params(rate: T.any(MetronomeSDK::Models::Rate, MetronomeSDK::Internal::AnyHash)).void }
            attr_writer :rate

            sig { returns(Time) }
            attr_accessor :starting_at

            # A distinct rate on the rate card. You can choose to use this rate rather than
            # list rate when consuming a credit or commit.
            sig { returns(T.nilable(MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate)) }
            attr_reader :commit_rate

            sig do
              params(
                commit_rate: T.any(
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate,
                  MetronomeSDK::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :commit_rate

            sig { returns(T.nilable(Time)) }
            attr_reader :ending_before

            sig { params(ending_before: Time).void }
            attr_writer :ending_before

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :pricing_group_values

            sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
            attr_writer :pricing_group_values

            sig do
              params(
                entitled: T::Boolean,
                product_custom_fields: T::Hash[Symbol, String],
                product_id: String,
                product_name: String,
                product_tags: T::Array[String],
                rate: T.any(MetronomeSDK::Models::Rate, MetronomeSDK::Internal::AnyHash),
                starting_at: Time,
                commit_rate: T.any(
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate,
                  MetronomeSDK::Internal::AnyHash
                ),
                ending_before: Time,
                pricing_group_values: T::Hash[Symbol, String]
              )
                .returns(T.attached_class)
            end
            def self.new(
              entitled:,
              product_custom_fields:,
              product_id:,
              product_name:,
              product_tags:,
              rate:,
              starting_at:,
              # A distinct rate on the rate card. You can choose to use this rate rather than
              # list rate when consuming a credit or commit.
              commit_rate: nil,
              ending_before: nil,
              pricing_group_values: nil
            ); end
            sig do
              override
                .returns(
                  {
                    entitled: T::Boolean,
                    product_custom_fields: T::Hash[Symbol, String],
                    product_id: String,
                    product_name: String,
                    product_tags: T::Array[String],
                    rate: MetronomeSDK::Models::Rate,
                    starting_at: Time,
                    commit_rate: MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate,
                    ending_before: Time,
                    pricing_group_values: T::Hash[Symbol, String]
                  }
                )
            end
            def to_hash; end

            class CommitRate < MetronomeSDK::Internal::Type::BaseModel
              sig do
                returns(
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::RateType::TaggedSymbol
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
                  rate_type: MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::RateType::OrSymbol,
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
                      rate_type: MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::RateType::TaggedSymbol,
                      price: Float,
                      tiers: T::Array[MetronomeSDK::Models::Tier]
                    }
                  )
              end
              def to_hash; end

              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias { T.all(Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::RateType) }
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                FLAT =
                  T.let(
                    :FLAT,
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::RateType::TaggedSymbol
                  )
                PERCENTAGE =
                  T.let(
                    :PERCENTAGE,
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::RateType::TaggedSymbol
                  )
                SUBSCRIPTION =
                  T.let(
                    :SUBSCRIPTION,
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::RateType::TaggedSymbol
                  )
                TIERED =
                  T.let(
                    :TIERED,
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::RateType::TaggedSymbol
                  )
                CUSTOM =
                  T.let(
                    :CUSTOM,
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::RateType::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::RateType::TaggedSymbol]
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
