# typed: strong

module Metronome
  module Models
    class Customer < Metronome::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :external_id

      sig { returns(T::Array[String]) }
      attr_accessor :ingest_aliases

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :custom_fields

      sig { params(custom_fields: T::Hash[Symbol, String]).void }
      attr_writer :custom_fields

      sig do
        params(
          id: String,
          external_id: String,
          ingest_aliases: T::Array[String],
          name: String,
          custom_fields: T::Hash[Symbol, String]
        ).void
      end
      def initialize(id:, external_id:, ingest_aliases:, name:, custom_fields: nil); end

      sig do
        override.returns(
          {
            id: String,
            external_id: String,
            ingest_aliases: T::Array[String],
            name: String,
            custom_fields: T::Hash[Symbol, String]
          }
        )
      end
      def to_hash; end
    end
  end
end
