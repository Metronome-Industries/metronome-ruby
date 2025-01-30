# typed: strong

module Metronome
  module Models
    class CreditGrantListEntriesParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            next_page: String,
            credit_type_ids: T::Array[String],
            customer_ids: T::Array[String],
            ending_before: Time,
            starting_on: Time
          },
          Metronome::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(String)) }
      attr_reader :next_page

      sig { params(next_page: String).void }
      attr_writer :next_page

      sig { returns(T::Array[String]) }
      attr_reader :credit_type_ids

      sig { params(credit_type_ids: T::Array[String]).void }
      attr_writer :credit_type_ids

      sig { returns(T::Array[String]) }
      attr_reader :customer_ids

      sig { params(customer_ids: T::Array[String]).void }
      attr_writer :customer_ids

      sig { returns(T.nilable(Time)) }
      attr_reader :ending_before

      sig { params(ending_before: Time).void }
      attr_writer :ending_before

      sig { returns(T.nilable(Time)) }
      attr_reader :starting_on

      sig { params(starting_on: Time).void }
      attr_writer :starting_on

      sig do
        params(
          next_page: String,
          credit_type_ids: T::Array[String],
          customer_ids: T::Array[String],
          ending_before: Time,
          starting_on: Time,
          request_options: Metronome::RequestOpts
        ).void
      end
      def initialize(
        next_page: nil,
        credit_type_ids: nil,
        customer_ids: nil,
        ending_before: nil,
        starting_on: nil,
        request_options: {}
      ); end

      sig { returns(Metronome::Models::CreditGrantListEntriesParams::Shape) }
      def to_h; end
    end
  end
end
