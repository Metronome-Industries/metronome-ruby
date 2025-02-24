# typed: strong

module Metronome
  module Models
    class CustomerSetNameParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      def customer_id
      end

      sig { params(_: String).returns(String) }
      def customer_id=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig do
        params(
          customer_id: String,
          name: String,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(customer_id:, name:, request_options: {})
      end

      sig do
        override.returns({customer_id: String, name: String, request_options: Metronome::RequestOptions})
      end
      def to_hash
      end
    end
  end
end
