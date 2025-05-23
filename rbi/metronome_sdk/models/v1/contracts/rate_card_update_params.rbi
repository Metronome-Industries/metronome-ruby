# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class RateCardUpdateParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::Contracts::RateCardUpdateParams,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # ID of the rate card to update
          sig { returns(String) }
          attr_accessor :rate_card_id

          # Reference this alias when creating a contract. If the same alias is assigned to
          # multiple rate cards, it will reference the rate card to which it was most
          # recently assigned. It is not exposed to end customers.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V1::Contracts::RateCardUpdateParams::Alias
                ]
              )
            )
          end
          attr_reader :aliases

          sig do
            params(
              aliases:
                T::Array[
                  MetronomeSDK::V1::Contracts::RateCardUpdateParams::Alias::OrHash
                ]
            ).void
          end
          attr_writer :aliases

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # Used only in UI/API. It is not exposed to end customers.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(
              rate_card_id: String,
              aliases:
                T::Array[
                  MetronomeSDK::V1::Contracts::RateCardUpdateParams::Alias::OrHash
                ],
              description: String,
              name: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # ID of the rate card to update
            rate_card_id:,
            # Reference this alias when creating a contract. If the same alias is assigned to
            # multiple rate cards, it will reference the rate card to which it was most
            # recently assigned. It is not exposed to end customers.
            aliases: nil,
            description: nil,
            # Used only in UI/API. It is not exposed to end customers.
            name: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                rate_card_id: String,
                aliases:
                  T::Array[
                    MetronomeSDK::V1::Contracts::RateCardUpdateParams::Alias
                  ],
                description: String,
                name: String,
                request_options: MetronomeSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Alias < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::Contracts::RateCardUpdateParams::Alias,
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
        end
      end
    end
  end
end
