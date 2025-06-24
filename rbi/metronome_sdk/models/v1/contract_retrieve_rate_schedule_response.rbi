# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractRetrieveRateScheduleResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data
            ]
          )
        end
        attr_accessor :data

        sig { returns(T.nilable(String)) }
        attr_accessor :next_page

        sig do
          params(
            data:
              T::Array[
                MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OrHash
              ],
            next_page: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(data:, next_page: nil)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data
                ],
              next_page: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :entitled

          sig do
            returns(
              MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate
            )
          end
          attr_reader :list_rate

          sig do
            params(
              list_rate:
                MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::OrHash
            ).void
          end
          attr_writer :list_rate

          sig { returns(T::Hash[Symbol, String]) }
          attr_accessor :product_custom_fields

          sig { returns(String) }
          attr_accessor :product_id

          sig { returns(String) }
          attr_accessor :product_name

          sig { returns(T::Array[String]) }
          attr_accessor :product_tags

          sig { returns(String) }
          attr_accessor :rate_card_id

          sig { returns(Time) }
          attr_accessor :starting_at

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::BillingFrequency::TaggedSymbol
              )
            )
          end
          attr_reader :billing_frequency

          sig do
            params(
              billing_frequency:
                MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::BillingFrequency::OrSymbol
            ).void
          end
          attr_writer :billing_frequency

          # A distinct rate on the rate card. You can choose to use this rate rather than
          # list rate when consuming a credit or commit.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate
              )
            )
          end
          attr_reader :commit_rate

          sig do
            params(
              commit_rate:
                MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate::OrHash
            ).void
          end
          attr_writer :commit_rate

          sig { returns(T.nilable(Time)) }
          attr_reader :ending_before

          sig { params(ending_before: Time).void }
          attr_writer :ending_before

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate
              )
            )
          end
          attr_reader :override_rate

          sig do
            params(
              override_rate:
                MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::OrHash
            ).void
          end
          attr_writer :override_rate

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :pricing_group_values

          sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
          attr_writer :pricing_group_values

          sig do
            params(
              entitled: T::Boolean,
              list_rate:
                MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::OrHash,
              product_custom_fields: T::Hash[Symbol, String],
              product_id: String,
              product_name: String,
              product_tags: T::Array[String],
              rate_card_id: String,
              starting_at: Time,
              billing_frequency:
                MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::BillingFrequency::OrSymbol,
              commit_rate:
                MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate::OrHash,
              ending_before: Time,
              override_rate:
                MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::OrHash,
              pricing_group_values: T::Hash[Symbol, String]
            ).returns(T.attached_class)
          end
          def self.new(
            entitled:,
            list_rate:,
            product_custom_fields:,
            product_id:,
            product_name:,
            product_tags:,
            rate_card_id:,
            starting_at:,
            billing_frequency: nil,
            # A distinct rate on the rate card. You can choose to use this rate rather than
            # list rate when consuming a credit or commit.
            commit_rate: nil,
            ending_before: nil,
            override_rate: nil,
            pricing_group_values: nil
          )
          end

          sig do
            override.returns(
              {
                entitled: T::Boolean,
                list_rate:
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate,
                product_custom_fields: T::Hash[Symbol, String],
                product_id: String,
                product_name: String,
                product_tags: T::Array[String],
                rate_card_id: String,
                starting_at: Time,
                billing_frequency:
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::BillingFrequency::TaggedSymbol,
                commit_rate:
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate,
                ending_before: Time,
                override_rate:
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate,
                pricing_group_values: T::Hash[Symbol, String]
              }
            )
          end
          def to_hash
          end

          class ListRate < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::RateType::TaggedSymbol
              )
            end
            attr_accessor :rate_type

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::CreditType
                )
              )
            end
            attr_reader :credit_type

            sig do
              params(
                credit_type:
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::CreditType::OrHash
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
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::Tier
                  ]
                )
              )
            end
            attr_reader :tiers

            sig do
              params(
                tiers:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::Tier::OrHash
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
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::RateType::OrSymbol,
                credit_type:
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::CreditType::OrHash,
                custom_rate: T::Hash[Symbol, T.anything],
                is_prorated: T::Boolean,
                price: Float,
                pricing_group_values: T::Hash[Symbol, String],
                quantity: Float,
                tiers:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::Tier::OrHash
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
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::RateType::TaggedSymbol,
                  credit_type:
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::CreditType,
                  custom_rate: T::Hash[Symbol, T.anything],
                  is_prorated: T::Boolean,
                  price: Float,
                  pricing_group_values: T::Hash[Symbol, String],
                  quantity: Float,
                  tiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::Tier
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
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::RateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FLAT =
                T.let(
                  :FLAT,
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::RateType::TaggedSymbol
                )
              PERCENTAGE =
                T.let(
                  :PERCENTAGE,
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::RateType::TaggedSymbol
                )
              SUBSCRIPTION =
                T.let(
                  :SUBSCRIPTION,
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::RateType::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :CUSTOM,
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::RateType::TaggedSymbol
                )
              TIERED =
                T.let(
                  :TIERED,
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::RateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::RateType::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::CreditType,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(String) }
              attr_accessor :name

              sig { params(id: String, name: String).returns(T.attached_class) }
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
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::ListRate::Tier,
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
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::BillingFrequency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MONTHLY =
              T.let(
                :MONTHLY,
                MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::BillingFrequency::TaggedSymbol
              )
            QUARTERLY =
              T.let(
                :QUARTERLY,
                MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::BillingFrequency::TaggedSymbol
              )
            ANNUAL =
              T.let(
                :ANNUAL,
                MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::BillingFrequency::TaggedSymbol
              )
            WEEKLY =
              T.let(
                :WEEKLY,
                MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::BillingFrequency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::BillingFrequency::TaggedSymbol
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
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate::RateType::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate::Tier
                  ]
                )
              )
            end
            attr_reader :tiers

            sig do
              params(
                tiers:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate::Tier::OrHash
                  ]
              ).void
            end
            attr_writer :tiers

            # A distinct rate on the rate card. You can choose to use this rate rather than
            # list rate when consuming a credit or commit.
            sig do
              params(
                rate_type:
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate::RateType::OrSymbol,
                price: Float,
                tiers:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate::Tier::OrHash
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
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate::RateType::TaggedSymbol,
                  price: Float,
                  tiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate::Tier
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
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate::RateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FLAT =
                T.let(
                  :FLAT,
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate::RateType::TaggedSymbol
                )
              PERCENTAGE =
                T.let(
                  :PERCENTAGE,
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate::RateType::TaggedSymbol
                )
              SUBSCRIPTION =
                T.let(
                  :SUBSCRIPTION,
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate::RateType::TaggedSymbol
                )
              TIERED =
                T.let(
                  :TIERED,
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate::RateType::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :CUSTOM,
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate::RateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate::RateType::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate::Tier,
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

          class OverrideRate < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::RateType::TaggedSymbol
              )
            end
            attr_accessor :rate_type

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::CreditType
                )
              )
            end
            attr_reader :credit_type

            sig do
              params(
                credit_type:
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::CreditType::OrHash
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
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::Tier
                  ]
                )
              )
            end
            attr_reader :tiers

            sig do
              params(
                tiers:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::Tier::OrHash
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
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::RateType::OrSymbol,
                credit_type:
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::CreditType::OrHash,
                custom_rate: T::Hash[Symbol, T.anything],
                is_prorated: T::Boolean,
                price: Float,
                pricing_group_values: T::Hash[Symbol, String],
                quantity: Float,
                tiers:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::Tier::OrHash
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
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::RateType::TaggedSymbol,
                  credit_type:
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::CreditType,
                  custom_rate: T::Hash[Symbol, T.anything],
                  is_prorated: T::Boolean,
                  price: Float,
                  pricing_group_values: T::Hash[Symbol, String],
                  quantity: Float,
                  tiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::Tier
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
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::RateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FLAT =
                T.let(
                  :FLAT,
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::RateType::TaggedSymbol
                )
              PERCENTAGE =
                T.let(
                  :PERCENTAGE,
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::RateType::TaggedSymbol
                )
              SUBSCRIPTION =
                T.let(
                  :SUBSCRIPTION,
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::RateType::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :CUSTOM,
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::RateType::TaggedSymbol
                )
              TIERED =
                T.let(
                  :TIERED,
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::RateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::RateType::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::CreditType,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(String) }
              attr_accessor :name

              sig { params(id: String, name: String).returns(T.attached_class) }
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
                    MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::OverrideRate::Tier,
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
