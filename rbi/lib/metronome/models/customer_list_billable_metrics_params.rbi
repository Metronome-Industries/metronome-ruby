# typed: strong

module Metronome
  module Models
    class CustomerListBillableMetricsParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_archived

      sig { params(include_archived: T::Boolean).void }
      attr_writer :include_archived

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(String)) }
      attr_reader :next_page

      sig { params(next_page: String).void }
      attr_writer :next_page

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :on_current_plan

      sig { params(on_current_plan: T::Boolean).void }
      attr_writer :on_current_plan

      sig do
        params(
          customer_id: String,
          include_archived: T::Boolean,
          limit: Integer,
          next_page: String,
          on_current_plan: T::Boolean,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        customer_id:,
        include_archived: nil,
        limit: nil,
        next_page: nil,
        on_current_plan: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            customer_id: String,
            include_archived: T::Boolean,
            limit: Integer,
            next_page: String,
            on_current_plan: T::Boolean,
            request_options: Metronome::RequestOptions
          }
        )
      end
      def to_hash; end
    end
  end
end
