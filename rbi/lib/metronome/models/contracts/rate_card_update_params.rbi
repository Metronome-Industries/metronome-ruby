# typed: strong

module Metronome
  module Models
    module Contracts
      class RateCardUpdateParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(String) }
        def rate_card_id
        end

        sig { params(_: String).returns(String) }
        def rate_card_id=(_)
        end

        sig { returns(T.nilable(T::Array[Metronome::Models::Contracts::RateCardUpdateParams::Alias])) }
        def aliases
        end

        sig do
          params(_: T::Array[Metronome::Models::Contracts::RateCardUpdateParams::Alias])
            .returns(T::Array[Metronome::Models::Contracts::RateCardUpdateParams::Alias])
        end
        def aliases=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        sig { returns(T.nilable(String)) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig do
          params(
            rate_card_id: String,
            aliases: T::Array[Metronome::Models::Contracts::RateCardUpdateParams::Alias],
            description: String,
            name: String,
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(rate_card_id:, aliases: nil, description: nil, name: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                rate_card_id: String,
                aliases: T::Array[Metronome::Models::Contracts::RateCardUpdateParams::Alias],
                description: String,
                name: String,
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
      end
    end
  end
end
