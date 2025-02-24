# typed: strong

module Metronome
  module Models
    module Contracts
      class RateCardCreateParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(T.nilable(T::Array[Metronome::Models::Contracts::RateCardCreateParams::Alias])) }
        def aliases
        end

        sig do
          params(_: T::Array[Metronome::Models::Contracts::RateCardCreateParams::Alias])
            .returns(T::Array[Metronome::Models::Contracts::RateCardCreateParams::Alias])
        end
        def aliases=(_)
        end

        sig { returns(T.nilable(T::Array[Metronome::Models::Contracts::RateCardCreateParams::CreditTypeConversion])) }
        def credit_type_conversions
        end

        sig do
          params(_: T::Array[Metronome::Models::Contracts::RateCardCreateParams::CreditTypeConversion])
            .returns(T::Array[Metronome::Models::Contracts::RateCardCreateParams::CreditTypeConversion])
        end
        def credit_type_conversions=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def custom_fields
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def custom_fields=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        sig { returns(T.nilable(String)) }
        def fiat_credit_type_id
        end

        sig { params(_: String).returns(String) }
        def fiat_credit_type_id=(_)
        end

        sig do
          params(
            name: String,
            aliases: T::Array[Metronome::Models::Contracts::RateCardCreateParams::Alias],
            credit_type_conversions: T::Array[Metronome::Models::Contracts::RateCardCreateParams::CreditTypeConversion],
            custom_fields: T::Hash[Symbol, String],
            description: String,
            fiat_credit_type_id: String,
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(
          name:,
          aliases: nil,
          credit_type_conversions: nil,
          custom_fields: nil,
          description: nil,
          fiat_credit_type_id: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                name: String,
                aliases: T::Array[Metronome::Models::Contracts::RateCardCreateParams::Alias],
                credit_type_conversions: T::Array[Metronome::Models::Contracts::RateCardCreateParams::CreditTypeConversion],
                custom_fields: T::Hash[Symbol, String],
                description: String,
                fiat_credit_type_id: String,
                request_options: Metronome::RequestOptions
              }
            )
        end
        def to_hash
        end

        class Alias < Metronome::BaseModel
          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(Time)) }
          def ending_before
          end

          sig { params(_: Time).returns(Time) }
          def ending_before=(_)
          end

          sig { returns(T.nilable(Time)) }
          def starting_at
          end

          sig { params(_: Time).returns(Time) }
          def starting_at=(_)
          end

          sig { params(name: String, ending_before: Time, starting_at: Time).void }
          def initialize(name:, ending_before: nil, starting_at: nil)
          end

          sig { override.returns({name: String, ending_before: Time, starting_at: Time}) }
          def to_hash
          end
        end

        class CreditTypeConversion < Metronome::BaseModel
          sig { returns(String) }
          def custom_credit_type_id
          end

          sig { params(_: String).returns(String) }
          def custom_credit_type_id=(_)
          end

          sig { returns(Float) }
          def fiat_per_custom_credit
          end

          sig { params(_: Float).returns(Float) }
          def fiat_per_custom_credit=(_)
          end

          sig { params(custom_credit_type_id: String, fiat_per_custom_credit: Float).void }
          def initialize(custom_credit_type_id:, fiat_per_custom_credit:)
          end

          sig { override.returns({custom_credit_type_id: String, fiat_per_custom_credit: Float}) }
          def to_hash
          end
        end
      end
    end
  end
end
