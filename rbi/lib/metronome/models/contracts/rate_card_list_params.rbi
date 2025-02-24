# typed: strong

module Metronome
  module Models
    module Contracts
      class RateCardListParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(T.nilable(Integer)) }
        def limit
        end

        sig { params(_: Integer).returns(Integer) }
        def limit=(_)
        end

        sig { returns(T.nilable(String)) }
        def next_page
        end

        sig { params(_: String).returns(String) }
        def next_page=(_)
        end

        sig { returns(T.nilable(T.anything)) }
        def body
        end

        sig { params(_: T.anything).returns(T.anything) }
        def body=(_)
        end

        sig do
          params(
            limit: Integer,
            next_page: String,
            body: T.anything,
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(limit: nil, next_page: nil, body: nil, request_options: {})
        end

        sig do
          override
            .returns({
                       limit: Integer,
                       next_page: String,
                       body: T.anything,
                       request_options: Metronome::RequestOptions
                     })
        end
        def to_hash
        end
      end
    end
  end
end
