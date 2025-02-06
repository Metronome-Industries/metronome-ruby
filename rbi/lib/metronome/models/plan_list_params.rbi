# typed: strong

module Metronome
  module Models
    class PlanListParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

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
          limit: Integer,
          next_page: String,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(limit: nil, next_page: nil, request_options: {}); end

      sig do
        override.returns({limit: Integer, next_page: String, request_options: Metronome::RequestOptions})
      end
      def to_hash; end
    end
  end
end
