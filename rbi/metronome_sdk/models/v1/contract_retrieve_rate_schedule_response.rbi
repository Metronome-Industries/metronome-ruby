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

          sig { returns(MetronomeSDK::Rate) }
          attr_reader :list_rate

          sig { params(list_rate: MetronomeSDK::Rate::OrHash).void }
          attr_writer :list_rate

          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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
          sig { returns(T.nilable(MetronomeSDK::CommitRate)) }
          attr_reader :commit_rate

          sig { params(commit_rate: MetronomeSDK::CommitRate::OrHash).void }
          attr_writer :commit_rate

          sig { returns(T.nilable(Time)) }
          attr_reader :ending_before

          sig { params(ending_before: Time).void }
          attr_writer :ending_before

          sig { returns(T.nilable(MetronomeSDK::Rate)) }
          attr_reader :override_rate

          sig { params(override_rate: MetronomeSDK::Rate::OrHash).void }
          attr_writer :override_rate

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :pricing_group_values

          sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
          attr_writer :pricing_group_values

          sig do
            params(
              entitled: T::Boolean,
              list_rate: MetronomeSDK::Rate::OrHash,
              product_custom_fields: T::Hash[Symbol, String],
              product_id: String,
              product_name: String,
              product_tags: T::Array[String],
              rate_card_id: String,
              starting_at: Time,
              billing_frequency:
                MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::BillingFrequency::OrSymbol,
              commit_rate: MetronomeSDK::CommitRate::OrHash,
              ending_before: Time,
              override_rate: MetronomeSDK::Rate::OrHash,
              pricing_group_values: T::Hash[Symbol, String]
            ).returns(T.attached_class)
          end
          def self.new(
            entitled:,
            list_rate:,
            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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
                list_rate: MetronomeSDK::Rate,
                product_custom_fields: T::Hash[Symbol, String],
                product_id: String,
                product_name: String,
                product_tags: T::Array[String],
                rate_card_id: String,
                starting_at: Time,
                billing_frequency:
                  MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::BillingFrequency::TaggedSymbol,
                commit_rate: MetronomeSDK::CommitRate,
                ending_before: Time,
                override_rate: MetronomeSDK::Rate,
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
        end
      end
    end
  end
end
