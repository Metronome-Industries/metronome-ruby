# typed: strong

module Metronome
  module Models
    class ContractUpdateEndDateParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            contract_id: String,
            customer_id: String,
            allow_ending_before_finalized_invoice: T::Boolean,
            ending_before: Time
          },
          Metronome::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :contract_id

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :allow_ending_before_finalized_invoice

      sig { params(allow_ending_before_finalized_invoice: T::Boolean).void }
      attr_writer :allow_ending_before_finalized_invoice

      sig { returns(T.nilable(Time)) }
      attr_reader :ending_before

      sig { params(ending_before: Time).void }
      attr_writer :ending_before

      sig do
        params(
          contract_id: String,
          customer_id: String,
          allow_ending_before_finalized_invoice: T::Boolean,
          ending_before: Time,
          request_options: Metronome::RequestOpts
        ).void
      end
      def initialize(
        contract_id:,
        customer_id:,
        allow_ending_before_finalized_invoice: nil,
        ending_before: nil,
        request_options: {}
      ); end

      sig { returns(Metronome::Models::ContractUpdateEndDateParams::Shape) }
      def to_h; end
    end
  end
end
