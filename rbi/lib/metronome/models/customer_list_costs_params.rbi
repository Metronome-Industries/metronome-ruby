# typed: strong

module Metronome
  module Models
    class CustomerListCostsParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(Time) }
      attr_accessor :ending_before

      sig { returns(Time) }
      attr_accessor :starting_on

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(String)) }
      attr_reader :next_page

      sig { params(next_page: String).void }
      attr_writer :next_page

      sig do
        params(
          customer_id: String,
          ending_before: Time,
          starting_on: Time,
          limit: Integer,
          next_page: String,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
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
        override.returns(
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
