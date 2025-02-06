# typed: strong

module Metronome
  module Models
    class InvoiceVoidParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      attr_accessor :id

      sig do
        params(
          id: String,
          request_options: T.any(
            Metronome::RequestOptions,
            T::Hash[Symbol, T.anything]
          )
        ).void
      end
      def initialize(id:, request_options: {}); end

      sig { override.returns({id: String, request_options: Metronome::RequestOptions}) }
      def to_hash; end
    end
  end
end
