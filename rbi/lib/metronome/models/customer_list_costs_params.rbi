# typed: strong

module Metronome
  module Models
    class CustomerListCostsParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
          {customer_id: String, ending_before: Time, starting_on: Time, limit: Integer, next_page: String},
          Metronome::RequestParameters::Shape
        )
      end

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
          request_options: Metronome::RequestOpts
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

      sig { returns(Metronome::Models::CustomerListCostsParams::Shape) }
      def to_h; end
    end
  end
end
