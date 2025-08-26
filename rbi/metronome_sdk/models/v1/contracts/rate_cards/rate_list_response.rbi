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

            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
            sig { returns(T::Hash[Symbol, String]) }
            attr_accessor :product_custom_fields

            sig { returns(String) }
            attr_accessor :product_id

            sig { returns(String) }
            attr_accessor :product_name

            sig { returns(T::Array[String]) }
            attr_accessor :product_tags

            sig do
              returns(
                MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate
              )
            end
            attr_reader :rate

            sig do
              params(
                rate:
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::OrHash
              ).void
            end
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
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate
                )
              )
            end
            attr_reader :commit_rate

            sig do
              params(
                commit_rate:
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::OrHash
              ).void
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
                rate:
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::OrHash,
                starting_at: Time,
                billing_frequency:
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::BillingFrequency::OrSymbol,
                commit_rate:
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::OrHash,
                ending_before: Time,
                pricing_group_values: T::Hash[Symbol, String]
              ).returns(T.attached_class)
            end
            def self.new(
              entitled:,
              # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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
                  rate:
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate,
                  starting_at: Time,
                  billing_frequency:
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::BillingFrequency::TaggedSymbol,
                  commit_rate:
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate,
                  ending_before: Time,
                  pricing_group_values: T::Hash[Symbol, String]
                }
              )
            end
            def to_hash
            end

            class Rate < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::RateType::TaggedSymbol
                )
              end
              attr_accessor :rate_type

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::CreditType
                  )
                )
              end
              attr_reader :credit_type

              sig do
                params(
                  credit_type:
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::CreditType::OrHash
                ).void
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
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::Tier
                    ]
                  )
                )
              end
              attr_reader :tiers

              sig do
                params(
                  tiers:
                    T::Array[
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::Tier::OrHash
                    ]
                ).void
              end
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
                  rate_type:
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::RateType::OrSymbol,
                  credit_type:
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::CreditType::OrHash,
                  custom_rate: T::Hash[Symbol, T.anything],
                  is_prorated: T::Boolean,
                  price: Float,
                  pricing_group_values: T::Hash[Symbol, String],
                  quantity: Float,
                  tiers:
                    T::Array[
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::Tier::OrHash
                    ],
                  use_list_prices: T::Boolean
                ).returns(T.attached_class)
              end
              def self.new(
                rate_type:,
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
              )
              end

              sig do
                override.returns(
                  {
                    rate_type:
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::RateType::TaggedSymbol,
                    credit_type:
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::CreditType,
                    custom_rate: T::Hash[Symbol, T.anything],
                    is_prorated: T::Boolean,
                    price: Float,
                    pricing_group_values: T::Hash[Symbol, String],
                    quantity: Float,
                    tiers:
                      T::Array[
                        MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::Tier
                      ],
                    use_list_prices: T::Boolean
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
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                FLAT =
                  T.let(
                    :FLAT,
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::RateType::TaggedSymbol
                  )
                PERCENTAGE =
                  T.let(
                    :PERCENTAGE,
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::RateType::TaggedSymbol
                  )
                SUBSCRIPTION =
                  T.let(
                    :SUBSCRIPTION,
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::RateType::TaggedSymbol
                  )
                CUSTOM =
                  T.let(
                    :CUSTOM,
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::RateType::TaggedSymbol
                  )
                TIERED =
                  T.let(
                    :TIERED,
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::RateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class CreditType < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::CreditType,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :id

                sig { returns(String) }
                attr_accessor :name

                sig do
                  params(id: String, name: String).returns(T.attached_class)
                end
                def self.new(id:, name:)
                end

                sig { override.returns({ id: String, name: String }) }
                def to_hash
                end
              end

              class Tier < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::Tier,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :price

                sig { returns(T.nilable(Float)) }
                attr_reader :size

                sig { params(size: Float).void }
                attr_writer :size

                sig do
                  params(price: Float, size: Float).returns(T.attached_class)
                end
                def self.new(price:, size: nil)
                end

                sig { override.returns({ price: Float, size: Float }) }
                def to_hash
                end
              end
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

            class CommitRate < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

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
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::Tier
                    ]
                  )
                )
              end
              attr_reader :tiers

              sig do
                params(
                  tiers:
                    T::Array[
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::Tier::OrHash
                    ]
                ).void
              end
              attr_writer :tiers

              # A distinct rate on the rate card. You can choose to use this rate rather than
              # list rate when consuming a credit or commit.
              sig do
                params(
                  rate_type:
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::RateType::OrSymbol,
                  price: Float,
                  tiers:
                    T::Array[
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::Tier::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                rate_type:,
                # Commit rate price. For FLAT rate_type, this must be >=0.
                price: nil,
                # Only set for TIERED rate_type.
                tiers: nil
              )
              end

              sig do
                override.returns(
                  {
                    rate_type:
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::RateType::TaggedSymbol,
                    price: Float,
                    tiers:
                      T::Array[
                        MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::Tier
                      ]
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
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::RateType
                    )
                  end
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
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::RateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class Tier < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::Tier,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :price

                sig { returns(T.nilable(Float)) }
                attr_reader :size

                sig { params(size: Float).void }
                attr_writer :size

                sig do
                  params(price: Float, size: Float).returns(T.attached_class)
                end
                def self.new(price:, size: nil)
                end

                sig { override.returns({ price: Float, size: Float }) }
                def to_hash
                end
              end
            end
          end
        end
      end
    end
  end
end
