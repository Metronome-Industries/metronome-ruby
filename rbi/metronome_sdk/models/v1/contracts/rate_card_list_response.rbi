# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class RateCardListResponse < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::Contracts::RateCardListResponse,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(String) }
          attr_accessor :created_by

          sig { returns(String) }
          attr_accessor :name

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V1::Contracts::RateCardListResponse::Alias
                ]
              )
            )
          end
          attr_reader :aliases

          sig do
            params(
              aliases:
                T::Array[
                  MetronomeSDK::Models::V1::Contracts::RateCardListResponse::Alias::OrHash
                ]
            ).void
          end
          attr_writer :aliases

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V1::Contracts::RateCardListResponse::CreditTypeConversion
                ]
              )
            )
          end
          attr_reader :credit_type_conversions

          sig do
            params(
              credit_type_conversions:
                T::Array[
                  MetronomeSDK::Models::V1::Contracts::RateCardListResponse::CreditTypeConversion::OrHash
                ]
            ).void
          end
          attr_writer :credit_type_conversions

          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :custom_fields

          sig { params(custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :custom_fields

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          sig { returns(T.nilable(MetronomeSDK::CreditTypeData)) }
          attr_reader :fiat_credit_type

          sig do
            params(fiat_credit_type: MetronomeSDK::CreditTypeData::OrHash).void
          end
          attr_writer :fiat_credit_type

          sig do
            params(
              id: String,
              created_at: Time,
              created_by: String,
              name: String,
              aliases:
                T::Array[
                  MetronomeSDK::Models::V1::Contracts::RateCardListResponse::Alias::OrHash
                ],
              credit_type_conversions:
                T::Array[
                  MetronomeSDK::Models::V1::Contracts::RateCardListResponse::CreditTypeConversion::OrHash
                ],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              fiat_credit_type: MetronomeSDK::CreditTypeData::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            created_at:,
            created_by:,
            name:,
            aliases: nil,
            credit_type_conversions: nil,
            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
            custom_fields: nil,
            description: nil,
            fiat_credit_type: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                created_by: String,
                name: String,
                aliases:
                  T::Array[
                    MetronomeSDK::Models::V1::Contracts::RateCardListResponse::Alias
                  ],
                credit_type_conversions:
                  T::Array[
                    MetronomeSDK::Models::V1::Contracts::RateCardListResponse::CreditTypeConversion
                  ],
                custom_fields: T::Hash[Symbol, String],
                description: String,
                fiat_credit_type: MetronomeSDK::CreditTypeData
              }
            )
          end
          def to_hash
          end

          class Alias < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::Contracts::RateCardListResponse::Alias,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(Time)) }
            attr_reader :ending_before

            sig { params(ending_before: Time).void }
            attr_writer :ending_before

            sig { returns(T.nilable(Time)) }
            attr_reader :starting_at

            sig { params(starting_at: Time).void }
            attr_writer :starting_at

            sig do
              params(
                name: String,
                ending_before: Time,
                starting_at: Time
              ).returns(T.attached_class)
            end
            def self.new(name:, ending_before: nil, starting_at: nil)
            end

            sig do
              override.returns(
                { name: String, ending_before: Time, starting_at: Time }
              )
            end
            def to_hash
            end
          end

          class CreditTypeConversion < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::Contracts::RateCardListResponse::CreditTypeConversion,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(MetronomeSDK::CreditTypeData) }
            attr_reader :custom_credit_type

            sig do
              params(
                custom_credit_type: MetronomeSDK::CreditTypeData::OrHash
              ).void
            end
            attr_writer :custom_credit_type

            sig { returns(String) }
            attr_accessor :fiat_per_custom_credit

            sig do
              params(
                custom_credit_type: MetronomeSDK::CreditTypeData::OrHash,
                fiat_per_custom_credit: String
              ).returns(T.attached_class)
            end
            def self.new(custom_credit_type:, fiat_per_custom_credit:)
            end

            sig do
              override.returns(
                {
                  custom_credit_type: MetronomeSDK::CreditTypeData,
                  fiat_per_custom_credit: String
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
