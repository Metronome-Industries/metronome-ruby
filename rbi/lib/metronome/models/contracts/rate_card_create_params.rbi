# typed: strong

module Metronome
  module Models
    module Contracts
      class RateCardCreateParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        Shape = T.type_alias do
          T.all(
            {
              name: String,
              aliases: T::Array[Metronome::Models::Contracts::RateCardCreateParams::Alias],
              credit_type_conversions: T::Array[Metronome::Models::Contracts::RateCardCreateParams::CreditTypeConversion],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              fiat_credit_type_id: String
            },
            Metronome::RequestParameters::Shape
          )
        end

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T::Array[Metronome::Models::Contracts::RateCardCreateParams::Alias]) }
        attr_reader :aliases

        sig { params(aliases: T::Array[Metronome::Models::Contracts::RateCardCreateParams::Alias]).void }
        attr_writer :aliases

        sig { returns(T::Array[Metronome::Models::Contracts::RateCardCreateParams::CreditTypeConversion]) }
        attr_reader :credit_type_conversions

        sig do
          params(
            credit_type_conversions: T::Array[Metronome::Models::Contracts::RateCardCreateParams::CreditTypeConversion]
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

        sig { returns(T.nilable(String)) }
        attr_reader :fiat_credit_type_id

        sig { params(fiat_credit_type_id: String).void }
        attr_writer :fiat_credit_type_id

        sig do
          params(
            name: String,
            aliases: T::Array[Metronome::Models::Contracts::RateCardCreateParams::Alias],
            credit_type_conversions: T::Array[Metronome::Models::Contracts::RateCardCreateParams::CreditTypeConversion],
            custom_fields: T::Hash[Symbol, String],
            description: String,
            fiat_credit_type_id: String,
            request_options: Metronome::RequestOpts
          ).void
        end
        def initialize(
          name:,
          aliases: nil,
          credit_type_conversions: nil,
          custom_fields: nil,
          description: nil,
          fiat_credit_type_id: nil,
          request_options: {}
        ); end

        sig { returns(Metronome::Models::Contracts::RateCardCreateParams::Shape) }
        def to_h; end

        class Alias < Metronome::BaseModel
          Shape = T.type_alias { {name: String, ending_before: Time, starting_at: Time} }

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
          def initialize(name:, ending_before: nil, starting_at: nil); end

          sig { returns(Metronome::Models::Contracts::RateCardCreateParams::Alias::Shape) }
          def to_h; end
        end

        class CreditTypeConversion < Metronome::BaseModel
          Shape = T.type_alias { {custom_credit_type_id: String, fiat_per_custom_credit: Float} }

          sig { returns(String) }
          attr_accessor :custom_credit_type_id

          sig { returns(Float) }
          attr_accessor :fiat_per_custom_credit

          sig { params(custom_credit_type_id: String, fiat_per_custom_credit: Float).void }
          def initialize(custom_credit_type_id:, fiat_per_custom_credit:); end

          sig { returns(Metronome::Models::Contracts::RateCardCreateParams::CreditTypeConversion::Shape) }
          def to_h; end
        end
      end
    end
  end
end
