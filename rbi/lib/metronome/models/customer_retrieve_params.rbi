# typed: strong

module Metronome
  module Models
    class CustomerRetrieveParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      attr_accessor :customer_id

      sig do
        params(
          customer_id: String,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(customer_id:, request_options: {}); end

      sig { override.returns({customer_id: String, request_options: Metronome::RequestOptions}) }
      def to_hash; end
    end
  end
end
