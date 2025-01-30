# typed: strong

module Metronome
  module Models
    class CustomerSetIngestAliasesParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all({customer_id: String, ingest_aliases: T::Array[String]}, Metronome::RequestParameters::Shape)
      end

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(T::Array[String]) }
      attr_accessor :ingest_aliases

      sig do
        params(
          customer_id: String,
          ingest_aliases: T::Array[String],
          request_options: Metronome::RequestOpts
        ).void
      end
      def initialize(customer_id:, ingest_aliases:, request_options: {}); end

      sig { returns(Metronome::Models::CustomerSetIngestAliasesParams::Shape) }
      def to_h; end
    end
  end
end
