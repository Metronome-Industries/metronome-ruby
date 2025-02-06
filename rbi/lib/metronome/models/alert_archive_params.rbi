# typed: strong

module Metronome
  module Models
    class AlertArchiveParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :release_uniqueness_key

      sig { params(release_uniqueness_key: T::Boolean).void }
      attr_writer :release_uniqueness_key

      sig do
        params(
          id: String,
          release_uniqueness_key: T::Boolean,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(id:, release_uniqueness_key: nil, request_options: {}); end

      sig do
        override.returns(
          {
            id: String,
            release_uniqueness_key: T::Boolean,
            request_options: Metronome::RequestOptions
          }
        )
      end
      def to_hash; end
    end
  end
end
