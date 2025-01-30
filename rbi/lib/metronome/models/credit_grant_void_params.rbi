# typed: strong

module Metronome
  module Models
    class CreditGrantVoidParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
          {id: String, release_uniqueness_key: T::Boolean, void_credit_purchase_invoice: T::Boolean},
          Metronome::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :release_uniqueness_key

      sig { params(release_uniqueness_key: T::Boolean).void }
      attr_writer :release_uniqueness_key

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :void_credit_purchase_invoice

      sig { params(void_credit_purchase_invoice: T::Boolean).void }
      attr_writer :void_credit_purchase_invoice

      sig do
        params(
          id: String,
          release_uniqueness_key: T::Boolean,
          void_credit_purchase_invoice: T::Boolean,
          request_options: Metronome::RequestOpts
        ).void
      end
      def initialize(
        id:,
        release_uniqueness_key: nil,
        void_credit_purchase_invoice: nil,
        request_options: {}
      )
      end

      sig { returns(Metronome::Models::CreditGrantVoidParams::Shape) }
      def to_h; end
    end
  end
end
