# typed: strong

module Metronome
  module Models
    module Contracts
      class RateCardListParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        Shape = T.type_alias do
          T.all({body: T.anything, limit: Integer, next_page: String}, Metronome::RequestParameters::Shape)
        end

        sig { returns(T.anything) }
        attr_accessor :body

        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig { returns(T.nilable(String)) }
        attr_reader :next_page

        sig { params(next_page: String).void }
        attr_writer :next_page

        sig do
          params(
            body: T.anything,
            limit: Integer,
            next_page: String,
            request_options: Metronome::RequestOpts
          ).void
        end
        def initialize(body:, limit: nil, next_page: nil, request_options: {}); end

        sig { returns(Metronome::Models::Contracts::RateCardListParams::Shape) }
        def to_h; end
      end
    end
  end
end
