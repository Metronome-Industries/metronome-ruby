# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class RateAddManyParams < MetronomeSDK::Internal::Type::BaseModel
            extend MetronomeSDK::Internal::Type::RequestParameters::Converter
            include MetronomeSDK::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :rate_card_id

            sig do
              returns(
                T::Array[
                  MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate
                ]
              )
            end
            attr_accessor :rates

            sig do
              params(
                rate_card_id: String,
                rates:
                  T::Array[
                    MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::OrHash
                  ],
                request_options: MetronomeSDK::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(rate_card_id:, rates:, request_options: {})
            end

            sig do
              override.returns(
                {
                  rate_card_id: String,
                  rates:
                    T::Array[
                      MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate
                    ],
                  request_options: MetronomeSDK::RequestOptions
                }
              )
            end
            def to_hash
            end

            class Rate < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(T::Boolean) }
              attr_accessor :entitled

              # ID of the product to add a rate for
              sig { returns(String) }
              attr_accessor :product_id

              sig do
                returns(
                  MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::RateType::OrSymbol
                )
              end
              attr_accessor :rate_type

              # inclusive effective date
              sig { returns(Time) }
              attr_accessor :starting_at

              # Optional. Frequency to bill subscriptions with. Required for subscription type
              # products with Flat rate.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::BillingFrequency::OrSymbol
                  )
                )
              end
              attr_reader :billing_frequency

              sig do
                params(
                  billing_frequency:
                    MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::BillingFrequency::OrSymbol
                ).void
              end
              attr_writer :billing_frequency

              # A distinct rate on the rate card. You can choose to use this rate rather than
              # list rate when consuming a credit or commit.
              sig { returns(T.nilable(MetronomeSDK::CommitRate)) }
              attr_reader :commit_rate

              sig { params(commit_rate: MetronomeSDK::CommitRate::OrHash).void }
              attr_writer :commit_rate

              # "The Metronome ID of the credit type to associate with price, defaults to USD
              # (cents) if not passed. Used by all rate_types except type PERCENTAGE. PERCENTAGE
              # rates use the credit type of associated rates."
              sig { returns(T.nilable(String)) }
              attr_reader :credit_type_id

              sig { params(credit_type_id: String).void }
              attr_writer :credit_type_id

              # Only set for CUSTOM rate_type. This field is interpreted by custom rate
              # processors.
              sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
              attr_reader :custom_rate

              sig { params(custom_rate: T::Hash[Symbol, T.anything]).void }
              attr_writer :custom_rate

              # exclusive end date
              sig { returns(T.nilable(Time)) }
              attr_reader :ending_before

              sig { params(ending_before: Time).void }
              attr_writer :ending_before

              # Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              # set to true.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_prorated

              sig { params(is_prorated: T::Boolean).void }
              attr_writer :is_prorated

              # Default price. For FLAT and SUBSCRIPTION rate_type, this must be >=0. For
              # PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this
              # must be >=0 and <=1.
              sig { returns(T.nilable(Float)) }
              attr_reader :price

              sig { params(price: Float).void }
              attr_writer :price

              # Optional. List of pricing group key value pairs which will be used to calculate
              # the price.
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
                  entitled: T::Boolean,
                  product_id: String,
                  rate_type:
                    MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::RateType::OrSymbol,
                  starting_at: Time,
                  billing_frequency:
                    MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::BillingFrequency::OrSymbol,
                  commit_rate: MetronomeSDK::CommitRate::OrHash,
                  credit_type_id: String,
                  custom_rate: T::Hash[Symbol, T.anything],
                  ending_before: Time,
                  is_prorated: T::Boolean,
                  price: Float,
                  pricing_group_values: T::Hash[Symbol, String],
                  quantity: Float,
                  tiers: T::Array[MetronomeSDK::Tier::OrHash]
                ).returns(T.attached_class)
              end
              def self.new(
                entitled:,
                # ID of the product to add a rate for
                product_id:,
                rate_type:,
                # inclusive effective date
                starting_at:,
                # Optional. Frequency to bill subscriptions with. Required for subscription type
                # products with Flat rate.
                billing_frequency: nil,
                # A distinct rate on the rate card. You can choose to use this rate rather than
                # list rate when consuming a credit or commit.
                commit_rate: nil,
                # "The Metronome ID of the credit type to associate with price, defaults to USD
                # (cents) if not passed. Used by all rate_types except type PERCENTAGE. PERCENTAGE
                # rates use the credit type of associated rates."
                credit_type_id: nil,
                # Only set for CUSTOM rate_type. This field is interpreted by custom rate
                # processors.
                custom_rate: nil,
                # exclusive end date
                ending_before: nil,
                # Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
                # set to true.
                is_prorated: nil,
                # Default price. For FLAT and SUBSCRIPTION rate_type, this must be >=0. For
                # PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this
                # must be >=0 and <=1.
                price: nil,
                # Optional. List of pricing group key value pairs which will be used to calculate
                # the price.
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
                    entitled: T::Boolean,
                    product_id: String,
                    rate_type:
                      MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::RateType::OrSymbol,
                    starting_at: Time,
                    billing_frequency:
                      MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::BillingFrequency::OrSymbol,
                    commit_rate: MetronomeSDK::CommitRate,
                    credit_type_id: String,
                    custom_rate: T::Hash[Symbol, T.anything],
                    ending_before: Time,
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
                      MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                FLAT =
                  T.let(
                    :FLAT,
                    MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::RateType::TaggedSymbol
                  )
                PERCENTAGE =
                  T.let(
                    :PERCENTAGE,
                    MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::RateType::TaggedSymbol
                  )
                SUBSCRIPTION =
                  T.let(
                    :SUBSCRIPTION,
                    MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::RateType::TaggedSymbol
                  )
                TIERED =
                  T.let(
                    :TIERED,
                    MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::RateType::TaggedSymbol
                  )
                CUSTOM =
                  T.let(
                    :CUSTOM,
                    MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::RateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Optional. Frequency to bill subscriptions with. Required for subscription type
              # products with Flat rate.
              module BillingFrequency
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::BillingFrequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::BillingFrequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::BillingFrequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::BillingFrequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::BillingFrequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::BillingFrequency::TaggedSymbol
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
