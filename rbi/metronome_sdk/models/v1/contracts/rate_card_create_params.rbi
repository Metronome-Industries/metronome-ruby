# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class RateCardCreateParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

          # Used only in UI/API. It is not exposed to end customers.
          sig { returns(String) }
          attr_accessor :name

          # Reference this alias when creating a contract. If the same alias is assigned to
          # multiple rate cards, it will reference the rate card to which it was most
          # recently assigned. It is not exposed to end customers.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V1::Contracts::RateCardCreateParams::Alias
                ]
              )
            )
          end
          attr_reader :aliases

          sig do
            params(
              aliases:
                T::Array[
                  MetronomeSDK::V1::Contracts::RateCardCreateParams::Alias::OrHash
                ]
            ).void
          end
          attr_writer :aliases

          # Required when using custom pricing units in rates.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V1::Contracts::RateCardCreateParams::CreditTypeConversion
                ]
              )
            )
          end
          attr_reader :credit_type_conversions

          sig do
            params(
              credit_type_conversions:
                T::Array[
                  MetronomeSDK::V1::Contracts::RateCardCreateParams::CreditTypeConversion::OrHash
                ]
            ).void
          end
          attr_writer :credit_type_conversions

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :custom_fields

          sig { params(custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :custom_fields

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # The Metronome ID of the credit type to associate with the rate card, defaults to
          # USD (cents) if not passed.
          sig { returns(T.nilable(String)) }
          attr_reader :fiat_credit_type_id

          sig { params(fiat_credit_type_id: String).void }
          attr_writer :fiat_credit_type_id

          sig do
            params(
              name: String,
              aliases:
                T::Array[
                  MetronomeSDK::V1::Contracts::RateCardCreateParams::Alias::OrHash
                ],
              credit_type_conversions:
                T::Array[
                  MetronomeSDK::V1::Contracts::RateCardCreateParams::CreditTypeConversion::OrHash
                ],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              fiat_credit_type_id: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Used only in UI/API. It is not exposed to end customers.
            name:,
            # Reference this alias when creating a contract. If the same alias is assigned to
            # multiple rate cards, it will reference the rate card to which it was most
            # recently assigned. It is not exposed to end customers.
            aliases: nil,
            # Required when using custom pricing units in rates.
            credit_type_conversions: nil,
            custom_fields: nil,
            description: nil,
            # The Metronome ID of the credit type to associate with the rate card, defaults to
            # USD (cents) if not passed.
            fiat_credit_type_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                name: String,
                aliases:
                  T::Array[
                    MetronomeSDK::V1::Contracts::RateCardCreateParams::Alias
                  ],
                credit_type_conversions:
                  T::Array[
                    MetronomeSDK::V1::Contracts::RateCardCreateParams::CreditTypeConversion
                  ],
                custom_fields: T::Hash[Symbol, String],
                description: String,
                fiat_credit_type_id: String,
                request_options: MetronomeSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Alias < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(T.self_type, MetronomeSDK::Internal::AnyHash)
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
                T.any(T.self_type, MetronomeSDK::Internal::AnyHash)
              end

            sig { returns(String) }
            attr_accessor :custom_credit_type_id

            sig { returns(Float) }
            attr_accessor :fiat_per_custom_credit

            sig do
              params(
                custom_credit_type_id: String,
                fiat_per_custom_credit: Float
              ).returns(T.attached_class)
            end
            def self.new(custom_credit_type_id:, fiat_per_custom_credit:)
            end

            sig do
              override.returns(
                { custom_credit_type_id: String, fiat_per_custom_credit: Float }
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
