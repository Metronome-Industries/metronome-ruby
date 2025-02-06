# typed: strong

module Metronome
  module Models
    module Contracts
      class RateCardListResponse < Metronome::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :created_by

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(T::Array[Metronome::Models::Contracts::RateCardListResponse::Alias])) }
        attr_reader :aliases

        sig { params(aliases: T::Array[Metronome::Models::Contracts::RateCardListResponse::Alias]).void }
        attr_writer :aliases

        sig do
          returns(T.nilable(T::Array[Metronome::Models::Contracts::RateCardListResponse::CreditTypeConversion]))
        end
        attr_reader :credit_type_conversions

        sig do
          params(
            credit_type_conversions: T::Array[Metronome::Models::Contracts::RateCardListResponse::CreditTypeConversion]
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

        sig { returns(T.nilable(Metronome::Models::CreditTypeData)) }
        attr_reader :fiat_credit_type

        sig { params(fiat_credit_type: Metronome::Models::CreditTypeData).void }
        attr_writer :fiat_credit_type

        sig do
          params(
            id: String,
            created_at: Time,
            created_by: String,
            name: String,
            aliases: T::Array[Metronome::Models::Contracts::RateCardListResponse::Alias],
            credit_type_conversions: T::Array[Metronome::Models::Contracts::RateCardListResponse::CreditTypeConversion],
            custom_fields: T::Hash[Symbol, String],
            description: String,
            fiat_credit_type: Metronome::Models::CreditTypeData
          ).void
        end
        def initialize(
          id:,
          created_at:,
          created_by:,
          name:,
          aliases: nil,
          credit_type_conversions: nil,
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
              aliases: T::Array[Metronome::Models::Contracts::RateCardListResponse::Alias],
              credit_type_conversions: T::Array[Metronome::Models::Contracts::RateCardListResponse::CreditTypeConversion],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              fiat_credit_type: Metronome::Models::CreditTypeData
            }
          )
        end
        def to_hash
        end

        class Alias < Metronome::BaseModel
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

          sig { params(name: String, ending_before: Time, starting_at: Time).void }
          def initialize(name:, ending_before: nil, starting_at: nil)
          end

          sig { override.returns({name: String, ending_before: Time, starting_at: Time}) }
          def to_hash
          end
        end

        class CreditTypeConversion < Metronome::BaseModel
          sig { returns(Metronome::Models::CreditTypeData) }
          attr_accessor :custom_credit_type

          sig { returns(String) }
          attr_accessor :fiat_per_custom_credit

          sig do
            params(custom_credit_type: Metronome::Models::CreditTypeData, fiat_per_custom_credit: String).void
          end
          def initialize(custom_credit_type:, fiat_per_custom_credit:)
          end

          sig do
            override.returns(
              {
                custom_credit_type: Metronome::Models::CreditTypeData,
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
