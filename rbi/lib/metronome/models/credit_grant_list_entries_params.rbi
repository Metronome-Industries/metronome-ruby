# typed: strong

module Metronome
  module Models
    class CreditGrantListEntriesParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(T.nilable(String)) }
      def next_page
      end

      sig { params(_: String).returns(String) }
      def next_page=(_)
      end

      sig { returns(T.nilable(T::Array[String])) }
      def credit_type_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def credit_type_ids=(_)
      end

      sig { returns(T.nilable(T::Array[String])) }
      def customer_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def customer_ids=(_)
      end

      sig { returns(T.nilable(Time)) }
      def ending_before
      end

      sig { params(_: Time).returns(Time) }
      def ending_before=(_)
      end

      sig { returns(T.nilable(Time)) }
      def starting_on
      end

      sig { params(_: Time).returns(Time) }
      def starting_on=(_)
      end

      sig do
        params(
          next_page: String,
          credit_type_ids: T::Array[String],
          customer_ids: T::Array[String],
          ending_before: Time,
          starting_on: Time,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        next_page: nil,
        credit_type_ids: nil,
        customer_ids: nil,
        ending_before: nil,
        starting_on: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              next_page: String,
              credit_type_ids: T::Array[String],
              customer_ids: T::Array[String],
              ending_before: Time,
              starting_on: Time,
              request_options: Metronome::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
