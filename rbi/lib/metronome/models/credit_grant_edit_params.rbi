# typed: strong

module Metronome
  module Models
    class CreditGrantEditParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(String)) }
      attr_reader :credit_grant_type

      sig { params(credit_grant_type: String).void }
      attr_writer :credit_grant_type

      sig { returns(T.nilable(Time)) }
      attr_reader :expires_at

      sig { params(expires_at: Time).void }
      attr_writer :expires_at

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          id: String,
          credit_grant_type: String,
          expires_at: Time,
          name: String,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(id:, credit_grant_type: nil, expires_at: nil, name: nil, request_options: {}); end

      sig do
        override.returns(
          {
            id: String,
            credit_grant_type: String,
            expires_at: Time,
            name: String,
            request_options: Metronome::RequestOptions
          }
        )
      end
      def to_hash; end
    end
  end
end
