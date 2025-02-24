# typed: strong

module Metronome
  module Models
    class CustomerListCostsParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      def customer_id
      end

      sig { params(_: String).returns(String) }
      def customer_id=(_)
      end

      sig { returns(Time) }
      def ending_before
      end

      sig { params(_: Time).returns(Time) }
      def ending_before=(_)
      end

      sig { returns(Time) }
      def starting_on
      end

      sig { params(_: Time).returns(Time) }
      def starting_on=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig { returns(T.nilable(String)) }
      def next_page
      end

      sig { params(_: String).returns(String) }
      def next_page=(_)
      end

      sig do
        params(
          customer_id: String,
          ending_before: Time,
          starting_on: Time,
          limit: Integer,
          next_page: String,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        customer_id:,
        ending_before:,
        starting_on:,
        limit: nil,
        next_page: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              customer_id: String,
              ending_before: Time,
              starting_on: Time,
              limit: Integer,
              next_page: String,
              request_options: Metronome::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
