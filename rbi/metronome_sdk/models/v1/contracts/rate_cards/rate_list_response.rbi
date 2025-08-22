# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class RateListResponse < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse,
                  MetronomeSDK::Internal::AnyHash
                )
              end

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

            sig { returns(MetronomeSDK::Rate) }
            attr_reader :rate

            sig { params(rate: MetronomeSDK::Rate::OrHash).void }
            attr_writer :rate

            sig { returns(Time) }
            attr_accessor :starting_at

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::BillingFrequency::TaggedSymbol
                )
              )
            end
            attr_reader :billing_frequency

            sig do
              params(
                billing_frequency:
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::BillingFrequency::OrSymbol
              ).void
            end
            attr_writer :billing_frequency

            # A distinct rate on the rate card. You can choose to use this rate rather than
            # list rate when consuming a credit or commit.
            sig { returns(T.nilable(MetronomeSDK::CommitRate)) }
            attr_reader :commit_rate

            sig { params(commit_rate: MetronomeSDK::CommitRate::OrHash).void }
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
                rate: MetronomeSDK::Rate::OrHash,
                starting_at: Time,
                billing_frequency:
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::BillingFrequency::OrSymbol,
                commit_rate: MetronomeSDK::CommitRate::OrHash,
                ending_before: Time,
                pricing_group_values: T::Hash[Symbol, String]
              ).returns(T.attached_class)
            end
            def self.new(
              entitled:,
              product_custom_fields:,
              product_id:,
              product_name:,
              product_tags:,
              rate:,
              starting_at:,
              billing_frequency: nil,
              # A distinct rate on the rate card. You can choose to use this rate rather than
              # list rate when consuming a credit or commit.
              commit_rate: nil,
              ending_before: nil,
              pricing_group_values: nil
            )
            end

            sig do
              override.returns(
                {
                  entitled: T::Boolean,
                  product_custom_fields: T::Hash[Symbol, String],
                  product_id: String,
                  product_name: String,
                  product_tags: T::Array[String],
                  rate: MetronomeSDK::Rate,
                  starting_at: Time,
                  billing_frequency:
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::BillingFrequency::TaggedSymbol,
                  commit_rate: MetronomeSDK::CommitRate,
                  ending_before: Time,
                  pricing_group_values: T::Hash[Symbol, String]
                }
              )
            end
            def to_hash
            end

            module BillingFrequency
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::BillingFrequency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MONTHLY =
                T.let(
                  :MONTHLY,
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::BillingFrequency::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :QUARTERLY,
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::BillingFrequency::TaggedSymbol
                )
              ANNUAL =
                T.let(
                  :ANNUAL,
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::BillingFrequency::TaggedSymbol
                )
              WEEKLY =
                T.let(
                  :WEEKLY,
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::BillingFrequency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::BillingFrequency::TaggedSymbol
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
