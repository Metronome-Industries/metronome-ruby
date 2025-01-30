# typed: strong

module Metronome
  module Models
    module Contracts
      class RateCardUpdateParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        Shape = T.type_alias do
          T.all(
            {
              rate_card_id: String,
              aliases: T::Array[Metronome::Models::Contracts::RateCardUpdateParams::Alias],
              description: String,
              name: String
            },
            Metronome::RequestParameters::Shape
          )
        end

        sig { returns(String) }
        attr_accessor :rate_card_id

        sig { returns(T.nilable(T::Array[Metronome::Models::Contracts::RateCardUpdateParams::Alias])) }
        attr_reader :aliases

        sig { params(aliases: T::Array[Metronome::Models::Contracts::RateCardUpdateParams::Alias]).void }
        attr_writer :aliases

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            rate_card_id: String,
            aliases: T::Array[Metronome::Models::Contracts::RateCardUpdateParams::Alias],
            description: String,
            name: String,
            request_options: Metronome::RequestOpts
          ).void
        end
        def initialize(rate_card_id:, aliases: nil, description: nil, name: nil, request_options: {}); end

        sig { returns(Metronome::Models::Contracts::RateCardUpdateParams::Shape) }
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

          sig { returns(Metronome::Models::Contracts::RateCardUpdateParams::Alias::Shape) }
          def to_h; end
        end
      end
    end
  end
end
