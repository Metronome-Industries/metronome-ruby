# typed: strong

module Metronome
  module Models
    class Customer < Metronome::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def external_id
      end

      sig { params(_: String).returns(String) }
      def external_id=(_)
      end

      sig { returns(T::Array[String]) }
      def ingest_aliases
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def ingest_aliases=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def custom_fields
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def custom_fields=(_)
      end

      sig do
        params(
          id: String,
          external_id: String,
          ingest_aliases: T::Array[String],
          name: String,
          custom_fields: T::Hash[Symbol, String]
        ).void
      end
      def initialize(id:, external_id:, ingest_aliases:, name:, custom_fields: nil)
      end

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
      def to_hash
      end
    end
  end
end
